import 'package:devfest/core/widgets/person_list.dart';
import 'package:devfest/features/speaker/cubit/cubit.dart';
import 'package:devfest/injection.dart';
import 'package:devfest/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SpeakerScreen extends StatefulWidget {
  const SpeakerScreen({super.key});

  @override
  State<SpeakerScreen> createState() => _SpeakerScreenState();
}

class _SpeakerScreenState extends State<SpeakerScreen> {
  late final SpeakerCubit _speakerCubit;

  @override
  void initState() {
    super.initState();
    _speakerCubit = getIt<SpeakerCubit>()..getSpeakers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text(Constants.speakers)),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: BlocProvider.value(
            value: _speakerCubit,
            child: BlocBuilder<SpeakerCubit, SpeakerState>(
              builder: (context, state) {
                if (state.status == SpeakerStatus.loading) {
                  return const Center(child: CircularProgressIndicator());
                } else if (state.status == SpeakerStatus.error) {
                  return Center(
                    child: Text(state.error!),
                  );
                } else if (state.status == SpeakerStatus.loaded) {
                  return PersonList(
                    speakers: state.speakers!,
                  );
                }
                return const SizedBox.shrink();
              },
            ),
          ),
        ));
  }
}
