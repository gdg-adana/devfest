// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'core/network/firebase/firestore_service.dart' as _i4;
import 'features/sponsor/data/data_sources/sponsor_remote_data_source.dart'
    as _i5;
import 'features/sponsor/data/data_sources/sponsor_remote_data_source_impl.dart'
    as _i6;
import 'features/sponsor/data/repositories/sponsor_repository_impl.dart' as _i8;
import 'features/sponsor/domain/repositories/sponsor_repository.dart' as _i7;
import 'features/sponsor/domain/use_cases/get_sponsors_use_case.dart' as _i13;
import 'features/sponsor/presentation/cubit/sponsor_cubit.dart' as _i15;
import 'features/team/data/data_sources/team_remote_data_source.dart' as _i9;
import 'features/team/data/data_sources/team_remote_data_source_impl.dart'
    as _i10;
import 'features/team/data/repositories/team_repository_impl.dart' as _i12;
import 'features/team/domain/repositories/team_repository.dart' as _i11;
import 'features/team/domain/use_cases/get_team_members_use_case.dart' as _i14;
import 'features/team/presentation/cubit/team_cubit.dart'
    as _i16; // ignore_for_file: unnecessary_lambdas

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
  gh.factory<_i13.GetSponsorsUseCase>(
      () => _i13.GetSponsorsUseCase(get<_i7.SponsorRepository>()));
  gh.factory<_i14.GetTeamMembersUseCase>(
      () => _i14.GetTeamMembersUseCase(get<_i11.TeamRepository>()));
  gh.factory<_i15.SponsorCubit>(
      () => _i15.SponsorCubit(get<_i13.GetSponsorsUseCase>()));
  gh.factory<_i16.TeamCubit>(
      () => _i16.TeamCubit(get<_i14.GetTeamMembersUseCase>()));
  return get;
}

class _$FirestoreModule extends _i4.FirestoreModule {}
