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
import 'features/team/data/data_sources/team_remote_data_source.dart' as _i7;
import 'features/team/data/data_sources/team_remote_data_source_impl.dart'
    as _i8;
import 'features/team/data/repositories/team_repository_impl.dart' as _i10;
import 'features/team/domain/repositories/team_repository.dart' as _i9;
import 'features/team/domain/use_cases/get_team_members_use_case.dart' as _i11;
import 'features/team/presentation/cubit/team_cubit.dart'
    as _i12; // ignore_for_file: unnecessary_lambdas

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
  gh.factory<_i7.TeamRemoteDataSource>(
      () => _i8.TeamRemoteDataSourceImpl(get<_i4.FirestoreService>()));
  gh.factory<_i9.TeamRepository>(
      () => _i10.TeamRepositoryImpl(get<_i7.TeamRemoteDataSource>()));
  gh.factory<_i11.GetTeamMembersUseCase>(
      () => _i11.GetTeamMembersUseCase(get<_i9.TeamRepository>()));
  gh.factory<_i12.TeamCubit>(
      () => _i12.TeamCubit(get<_i11.GetTeamMembersUseCase>()));
  return get;
}

class _$FirestoreModule extends _i4.FirestoreModule {}
