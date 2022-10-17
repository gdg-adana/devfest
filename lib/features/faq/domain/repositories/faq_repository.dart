import 'package:dartz/dartz.dart';
import 'package:devfest/core/exceptions/failures.dart';
import 'package:devfest/features/faq/domain/models/faq.dart';

abstract class FAQRepository {
  Future<Either<Failure, List<FAQ>>> getFAQ();
}
