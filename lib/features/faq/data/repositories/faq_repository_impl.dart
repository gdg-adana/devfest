import 'package:dartz/dartz.dart';
import 'package:devfest/core/exceptions/exceptions.dart';
import 'package:devfest/core/exceptions/failures.dart';
import 'package:devfest/features/faq/data/data_sources/faq_remote_data_source.dart';
import 'package:devfest/features/faq/domain/models/faq.dart';
import 'package:devfest/features/faq/domain/repositories/faq_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: FAQRepository)
class FAQRepositoryImpl implements FAQRepository {
  final FAQRemoteDataSource _faqRemoteDataSource;

  FAQRepositoryImpl(this._faqRemoteDataSource);
  @override
  Future<Either<Failure, List<FAQ>>> getFAQ() async {
    try {
      final result = await _faqRemoteDataSource.getFAQ();
      return Right(result.map((faqDto) => FAQ.fromDto(faqDto)).toList());
    } catch (error) {
      if (error is FirestoreException) {
        return Left(FirestoreFailure(error.description));
      }
      return Left(GeneralFailure(error.toString()));
    }
  }
}
