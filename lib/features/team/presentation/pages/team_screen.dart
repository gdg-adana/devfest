import 'package:devfest/core/widgets/person_list.dart';
import 'package:devfest/features/team/presentation/cubit/cubit.dart';
import 'package:devfest/injection.dart';
import 'package:devfest/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TeamScreen extends StatefulWidget {
  const TeamScreen({super.key});

  @override
  State<TeamScreen> createState() => _TeamScreenState();
}

class _TeamScreenState extends State<TeamScreen> {
  late final TeamCubit _teamCubit;

  @override
  void initState() {
    super.initState();
    _teamCubit = getIt<TeamCubit>()..getTeamMembers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text(Constants.team)),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: BlocProvider.value(
            value: _teamCubit,
            child: BlocBuilder<TeamCubit, TeamState>(
              builder: (context, state) {
                if (state.status == TeamStatus.loading) {
                  return const Center(child: CircularProgressIndicator());
                } else if (state.status == TeamStatus.error) {
                  return Center(
                    child: Text(state.error!),
                  );
                } else if (state.status == TeamStatus.loaded) {
                  return PersonList(
                    members: state.members!,
                  );
                }
                return const SizedBox.shrink();
              },
            ),
          ),
        ));
  }
}
