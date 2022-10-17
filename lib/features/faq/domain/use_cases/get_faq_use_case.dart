import 'package:dartz/dartz.dart';
import 'package:devfest/core/exceptions/failures.dart';
import 'package:devfest/core/use_case.dart';
import 'package:devfest/features/faq/domain/models/faq.dart';
import 'package:devfest/features/faq/domain/repositories/faq_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetFAQUseCase implements UseCase<Future<Either<Failure, List<FAQ>>>, NoParams> {
  final FAQRepository _faqRepository;

  GetFAQUseCase(this._faqRepository);
  @override
  Future<Either<Failure, List<FAQ>>> call(NoParams params) {
    return _faqRepository.getFAQ();
  }
}
