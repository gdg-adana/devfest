import 'package:devfest/core/services/url/url_service.dart';
import 'package:devfest/features/sponsor/presentation/cubit/cubit.dart';
import 'package:devfest/injection.dart';
import 'package:devfest/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SponsorScreen extends StatefulWidget {
  const SponsorScreen({super.key});

  @override
  State<SponsorScreen> createState() => _SponsorScreenState();
}

class _SponsorScreenState extends State<SponsorScreen> {
  late final SponsorCubit _sponsorCubit;

  @override
  void initState() {
    super.initState();
    _sponsorCubit = getIt<SponsorCubit>()..getSponsors();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(Constants.sponsors),
      ),
      body: BlocProvider.value(
        value: _sponsorCubit,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: BlocBuilder<SponsorCubit, SponsorState>(
            builder: (context, state) {
              if (state.status == SponsorStatus.loading) {
                return const Center(child: CircularProgressIndicator());
              } else if (state.status == SponsorStatus.error) {
                return Center(child: Text(state.error!));
              } else if (state.status == SponsorStatus.loaded) {
                return ListView.separated(
                  separatorBuilder: (context, index) => const Divider(),
                  itemCount: state.sponsors!.length,
                  itemBuilder: (context, index) => Column(
                    children: [
                      Text(
                        state.sponsors![index].type,
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.black.withOpacity(0.75),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      InkWell(
                        onTap: () {
                          final url = state.sponsors![index].url;
                          getIt<UrlService>().launchURl(webUrl: url, nativeUrl: url);
                        },
                        child: SizedBox(
                          height: 200,
                          width: double.infinity,
                          child: Card(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                            elevation: 10,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(16),
                                child: Image.network(
                                  state.sponsors![index].image,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
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
