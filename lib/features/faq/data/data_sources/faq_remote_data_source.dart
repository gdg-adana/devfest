import 'package:devfest/features/faq/data/dtos/faq_dto.dart';

abstract class FAQRemoteDataSource {
  Future<List<FAQDto>> getFAQ();
}
