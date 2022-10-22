import 'package:devfest/features/faq/presentation/cubit/cubit.dart';
import 'package:devfest/injection.dart';
import 'package:devfest/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FAQScreen extends StatefulWidget {
  const FAQScreen({super.key});

  @override
  State<FAQScreen> createState() => _FAQScreenState();
}

class _FAQScreenState extends State<FAQScreen> {
  late final FAQCubit _faqCubit;

  @override
  void initState() {
    super.initState();

    _faqCubit = getIt<FAQCubit>()..getFaq();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(Constants.faq),
      ),
      body: BlocProvider.value(
        value: _faqCubit,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: BlocBuilder<FAQCubit, FAQState>(
            builder: (context, state) {
              if (state.status == FAQStatus.loading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state.status == FAQStatus.error) {
                return Center(
                  child: Text(state.error!),
                );
              } else if (state.status == FAQStatus.loaded) {
                return ListView.builder(
                  itemBuilder: (context, index) => ExpansionTile(
                    textColor: Colors.black,
                    iconColor: Colors.black,
                    title: Text(
                      state.faq![index].question,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0, bottom: 16),
                        child: Row(
                          children: [
                            Text(
                              state.faq![index].answer,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  itemCount: state.faq!.length,
                );
              }
              return const SizedBox.shrink();
            },
          ),
        ),
      ),
    );
  }
}
