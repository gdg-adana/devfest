// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'core/network/firebase/firestore_service.dart' as _i4;
import 'core/services/url/url_service.dart' as _i13;
import 'core/use_cases/get_agenda_use_case.dart' as _i22;
import 'features/agenda/data/data_sources/agenda_remote_data_source.dart'
    as _i14;
import 'features/agenda/data/data_sources/agenda_remote_data_source_impl.dart'
    as _i15;
import 'features/agenda/data/repositories/agenda_repository_impl.dart' as _i17;
import 'features/agenda/domain/repositories/agenda_repository.dart' as _i16;
import 'features/agenda/presentation/cubit/agenda_cubit.dart' as _i29;
import 'features/faq/data/data_sources/faq_remote_data_source.dart' as _i18;
import 'features/faq/data/data_sources/faq_remote_data_source_impl.dart'
    as _i19;
import 'features/faq/data/repositories/faq_repository_impl.dart' as _i21;
import 'features/faq/domain/repositories/faq_repository.dart' as _i20;
import 'features/faq/domain/use_cases/get_faq_use_case.dart' as _i23;
import 'features/faq/presentation/cubit/faq_cubit.dart' as _i30;
import 'features/speaker/cubit/speaker_cubit.dart' as _i26;
import 'features/sponsor/data/data_sources/sponsor_remote_data_source.dart'
    as _i5;
import 'features/sponsor/data/data_sources/sponsor_remote_data_source_impl.dart'
    as _i6;
import 'features/sponsor/data/repositories/sponsor_repository_impl.dart' as _i8;
import 'features/sponsor/domain/repositories/sponsor_repository.dart' as _i7;
import 'features/sponsor/domain/use_cases/get_sponsors_use_case.dart' as _i24;
import 'features/sponsor/presentation/cubit/sponsor_cubit.dart' as _i27;
import 'features/team/data/data_sources/team_remote_data_source.dart' as _i9;
import 'features/team/data/data_sources/team_remote_data_source_impl.dart'
    as _i10;
import 'features/team/data/repositories/team_repository_impl.dart' as _i12;
import 'features/team/domain/repositories/team_repository.dart' as _i11;
import 'features/team/domain/use_cases/get_team_members_use_case.dart' as _i25;
import 'features/team/presentation/cubit/team_cubit.dart'
    as _i28; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  final firestoreModule = _$FirestoreModule();
  gh.factory<_i3.FirebaseFirestore>(() => firestoreModule.instance);
  gh.singleton<_i4.FirestoreService>(
      _i4.FirestoreService(get<_i3.FirebaseFirestore>()));
  gh.factory<_i5.SponsorRemoteDataSource>(
      () => _i6.SponsorRemoteDataSourceImpl(get<_i4.FirestoreService>()));
  gh.factory<_i7.SponsorRepository>(
      () => _i8.SponsorRepositoryImpl(get<_i5.SponsorRemoteDataSource>()));
  gh.factory<_i9.TeamRemoteDataSource>(
      () => _i10.TeamRemoteDataSourceImpl(get<_i4.FirestoreService>()));
  gh.factory<_i11.TeamRepository>(
      () => _i12.TeamRepositoryImpl(get<_i9.TeamRemoteDataSource>()));
  gh.singleton<_i13.UrlService>(_i13.UrlService());
  gh.factory<_i14.AgendaRemoteDataSource>(
      () => _i15.AgendaRemoteDataSourceImpl(get<_i4.FirestoreService>()));
  gh.factory<_i16.AgendaRepository>(
      () => _i17.AgendaRepositoryImpl(get<_i14.AgendaRemoteDataSource>()));
  gh.factory<_i18.FAQRemoteDataSource>(
      () => _i19.FAQRemoteDataSourceImpl(get<_i4.FirestoreService>()));
  gh.factory<_i20.FAQRepository>(
      () => _i21.FAQRepositoryImpl(get<_i18.FAQRemoteDataSource>()));
  gh.factory<_i22.GetAgendaUseCase>(
      () => _i22.GetAgendaUseCase(get<_i16.AgendaRepository>()));
  gh.factory<_i23.GetFAQUseCase>(
      () => _i23.GetFAQUseCase(get<_i20.FAQRepository>()));
  gh.factory<_i24.GetSponsorsUseCase>(
      () => _i24.GetSponsorsUseCase(get<_i7.SponsorRepository>()));
  gh.factory<_i25.GetTeamMembersUseCase>(
      () => _i25.GetTeamMembersUseCase(get<_i11.TeamRepository>()));
  gh.factory<_i26.SpeakerCubit>(
      () => _i26.SpeakerCubit(get<_i22.GetAgendaUseCase>()));
  gh.factory<_i27.SponsorCubit>(
      () => _i27.SponsorCubit(get<_i24.GetSponsorsUseCase>()));
  gh.factory<_i28.TeamCubit>(
      () => _i28.TeamCubit(get<_i25.GetTeamMembersUseCase>()));
  gh.factory<_i29.AgendaCubit>(
      () => _i29.AgendaCubit(get<_i22.GetAgendaUseCase>()));
  gh.factory<_i30.FAQCubit>(() => _i30.FAQCubit(get<_i23.GetFAQUseCase>()));
  return get;
}

class _$FirestoreModule extends _i4.FirestoreModule {}
