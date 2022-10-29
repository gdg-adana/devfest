import 'package:devfest/features/agenda/presentation/cubit/cubit.dart';
import 'package:devfest/features/agenda/presentation/widgets/session_card.dart';
import 'package:devfest/injection.dart';
import 'package:devfest/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AgendaScreen extends StatefulWidget {
  const AgendaScreen({super.key});

  @override
  State<AgendaScreen> createState() => _AgendaScreenState();
}

class _AgendaScreenState extends State<AgendaScreen> {
  late final AgendaCubit _agendaCubit;

  @override
  void initState() {
    super.initState();
    _agendaCubit = getIt<AgendaCubit>()..getAgenda();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _agendaCubit,
      child: BlocBuilder<AgendaCubit, AgendaState>(
        builder: (context, state) {
          return DefaultTabController(
            length: state.status != AgendaStatus.loaded ? 0 : state.agendaList!.length,
            child: Scaffold(
              appBar: AppBar(
                title: const Text(Constants.agenda),
                bottom: state.status != AgendaStatus.loaded
                    ? null
                    : TabBar(
                        tabs: _getTabs(state: state),
                      ),
              ),
              body: Builder(
                builder: (context) {
                  if (state.status == AgendaStatus.loading) {
                    return const Center(child: CircularProgressIndicator());
                  } else if (state.status == AgendaStatus.error) {
                    return Center(child: Text(state.error!));
                  } else if (state.status == AgendaStatus.loaded) {
                    return TabBarView(
                      children: List.generate(
                        state.agendaList!.length,
                        (index) => Padding(
                          padding: const EdgeInsets.all(16),
                          child: ListView.separated(
                              separatorBuilder: (context, index) => const Divider(),
                              itemCount: state.agendaList![index].sessions.length,
                              itemBuilder: (context, sessionIndex) => SizedBox(
                                    child: SessionCard(
                                      session: state.agendaList![index].sessions[sessionIndex],
                                    ),
                                  )),
                        ),
                      ),
                    );
                  }
                  return const SizedBox.shrink();
                },
              ),
            ),
          );
        },
      ),
    );
  }

  List<Widget> _getTabs({required AgendaState state}) => List.generate(
        state.agendaList!.length,
        (index) => Tab(
          child: Text(
            state.agendaList![index].day,
            style: const TextStyle(color: Colors.black),
          ),
        ),
      );
}
