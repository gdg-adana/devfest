import 'package:devfest/firebase_options.dart';
import 'package:devfest/injection.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'features/team/presentation/cubit/cubit.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late final TeamCubit _teamCubit;

  @override
  void initState() {
    super.initState();

    _teamCubit = getIt<TeamCubit>()..getTeamMembers();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _teamCubit,
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: BlocBuilder<TeamCubit, TeamState>(
            builder: (context, state) {
              if (state.status == TeamStatus.loading) {
                return const CircularProgressIndicator();
              } else if (state.status == TeamStatus.error) {
                return Text(state.error!);
              } else if (state.status == TeamStatus.loaded) {
                return ListView.builder(
                    shrinkWrap: true,
                    itemBuilder: (context, index) => Text(state.members![index].name),
                    itemCount: state.members!.length);
              }
              return const SizedBox.shrink();
            },
          ),
        ),
      ),
    );
  }
}
