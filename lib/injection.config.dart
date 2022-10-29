// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i3;
import 'package:firebase_remote_config/firebase_remote_config.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'core/network/firebase/firestore_service.dart' as _i5;
import 'core/services/config/remote_config_service.dart' as _i6;
import 'core/services/url/url_service.dart' as _i15;
import 'core/use_cases/get_agenda_use_case.dart' as _i24;
import 'features/agenda/data/data_sources/agenda_remote_data_source.dart'
    as _i16;
import 'features/agenda/data/data_sources/agenda_remote_data_source_impl.dart'
    as _i17;
import 'features/agenda/data/repositories/agenda_repository_impl.dart' as _i19;
import 'features/agenda/domain/repositories/agenda_repository.dart' as _i18;
import 'features/agenda/presentation/cubit/agenda_cubit.dart' as _i31;
import 'features/faq/data/data_sources/faq_remote_data_source.dart' as _i20;
import 'features/faq/data/data_sources/faq_remote_data_source_impl.dart'
    as _i21;
import 'features/faq/data/repositories/faq_repository_impl.dart' as _i23;
import 'features/faq/domain/repositories/faq_repository.dart' as _i22;
import 'features/faq/domain/use_cases/get_faq_use_case.dart' as _i25;
import 'features/faq/presentation/cubit/faq_cubit.dart' as _i32;
import 'features/speaker/cubit/speaker_cubit.dart' as _i28;
import 'features/sponsor/data/data_sources/sponsor_remote_data_source.dart'
    as _i7;
import 'features/sponsor/data/data_sources/sponsor_remote_data_source_impl.dart'
    as _i8;
import 'features/sponsor/data/repositories/sponsor_repository_impl.dart'
    as _i10;
import 'features/sponsor/domain/repositories/sponsor_repository.dart' as _i9;
import 'features/sponsor/domain/use_cases/get_sponsors_use_case.dart' as _i26;
import 'features/sponsor/presentation/cubit/sponsor_cubit.dart' as _i29;
import 'features/team/data/data_sources/team_remote_data_source.dart' as _i11;
import 'features/team/data/data_sources/team_remote_data_source_impl.dart'
    as _i12;
import 'features/team/data/repositories/team_repository_impl.dart' as _i14;
import 'features/team/domain/repositories/team_repository.dart' as _i13;
import 'features/team/domain/use_cases/get_team_members_use_case.dart' as _i27;
import 'features/team/presentation/cubit/team_cubit.dart'
    as _i30; // ignore_for_file: unnecessary_lambdas

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
  final firebaseRemoteConfigModule = _$FirebaseRemoteConfigModule();
  gh.factory<_i3.FirebaseFirestore>(() => firestoreModule.instance);
  gh.factory<_i4.FirebaseRemoteConfig>(
      () => firebaseRemoteConfigModule.instance);
  gh.singleton<_i5.FirestoreService>(
      _i5.FirestoreService(get<_i3.FirebaseFirestore>()));
  gh.singleton<_i6.RemoteConfigService>(
      _i6.RemoteConfigService(get<_i4.FirebaseRemoteConfig>()));
  gh.factory<_i7.SponsorRemoteDataSource>(
      () => _i8.SponsorRemoteDataSourceImpl(get<_i5.FirestoreService>()));
  gh.factory<_i9.SponsorRepository>(
      () => _i10.SponsorRepositoryImpl(get<_i7.SponsorRemoteDataSource>()));
  gh.factory<_i11.TeamRemoteDataSource>(
      () => _i12.TeamRemoteDataSourceImpl(get<_i5.FirestoreService>()));
  gh.factory<_i13.TeamRepository>(
      () => _i14.TeamRepositoryImpl(get<_i11.TeamRemoteDataSource>()));
  gh.singleton<_i15.UrlService>(_i15.UrlService());
  gh.factory<_i16.AgendaRemoteDataSource>(
      () => _i17.AgendaRemoteDataSourceImpl(get<_i5.FirestoreService>()));
  gh.factory<_i18.AgendaRepository>(
      () => _i19.AgendaRepositoryImpl(get<_i16.AgendaRemoteDataSource>()));
  gh.factory<_i20.FAQRemoteDataSource>(
      () => _i21.FAQRemoteDataSourceImpl(get<_i5.FirestoreService>()));
  gh.factory<_i22.FAQRepository>(
      () => _i23.FAQRepositoryImpl(get<_i20.FAQRemoteDataSource>()));
  gh.factory<_i24.GetAgendaUseCase>(
      () => _i24.GetAgendaUseCase(get<_i18.AgendaRepository>()));
  gh.factory<_i25.GetFAQUseCase>(
      () => _i25.GetFAQUseCase(get<_i22.FAQRepository>()));
  gh.factory<_i26.GetSponsorsUseCase>(
      () => _i26.GetSponsorsUseCase(get<_i9.SponsorRepository>()));
  gh.factory<_i27.GetTeamMembersUseCase>(
      () => _i27.GetTeamMembersUseCase(get<_i13.TeamRepository>()));
  gh.factory<_i28.SpeakerCubit>(
      () => _i28.SpeakerCubit(get<_i24.GetAgendaUseCase>()));
  gh.factory<_i29.SponsorCubit>(
      () => _i29.SponsorCubit(get<_i26.GetSponsorsUseCase>()));
  gh.factory<_i30.TeamCubit>(
      () => _i30.TeamCubit(get<_i27.GetTeamMembersUseCase>()));
  gh.factory<_i31.AgendaCubit>(
      () => _i31.AgendaCubit(get<_i24.GetAgendaUseCase>()));
  gh.factory<_i32.FAQCubit>(() => _i32.FAQCubit(get<_i25.GetFAQUseCase>()));
  return get;
}

class _$FirestoreModule extends _i5.FirestoreModule {}

class _$FirebaseRemoteConfigModule extends _i6.FirebaseRemoteConfigModule {}
