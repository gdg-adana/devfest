import 'package:bloc/bloc.dart';
import 'package:devfest/core/use_case.dart';
import 'package:devfest/features/faq/domain/use_cases/get_faq_use_case.dart';
import 'package:devfest/features/faq/presentation/cubit/cubit.dart';
import 'package:injectable/injectable.dart';

@injectable
class FAQCubit extends Cubit<FAQState> {
  FAQCubit(this._getFAQUseCase) : super(FAQState.initial());

  final GetFAQUseCase _getFAQUseCase;

  Future<void> getFaq() async {
    emit(state.copyWith(status: FAQStatus.loading));
    final result = await _getFAQUseCase(const NoParams());
    result.fold(
      (failure) => emit(
        state.copyWith(status: FAQStatus.error, error: failure.message),
      ),
      (faq) => emit(
        state.copyWith(status: FAQStatus.loaded, faq: faq),
      ),
    );
  }
}
