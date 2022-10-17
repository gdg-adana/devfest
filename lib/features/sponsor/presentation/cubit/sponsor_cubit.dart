import 'package:bloc/bloc.dart';
import 'package:devfest/core/use_case.dart';
import 'package:devfest/features/sponsor/domain/use_cases/get_sponsors_use_case.dart';
import 'package:devfest/features/sponsor/presentation/cubit/cubit.dart';
import 'package:devfest/features/sponsor/presentation/cubit/sponsor_state.dart';
import 'package:injectable/injectable.dart';

@injectable
class SponsorCubit extends Cubit<SponsorState> {
  SponsorCubit(this._getSponsorsUseCase) : super(SponsorState.initial());

  final GetSponsorsUseCase _getSponsorsUseCase;

  Future<void> getsSponsors() async {
    emit(state.copyWith(status: SponsorStatus.loading));
    final result = await _getSponsorsUseCase(const NoParams());
    result.fold(
      (failure) => emit(
        state.copyWith(status: SponsorStatus.error, error: failure.message),
      ),
      (sponsors) => emit(
        state.copyWith(status: SponsorStatus.loaded, sponsors: sponsors),
      ),
    );
  }
}
