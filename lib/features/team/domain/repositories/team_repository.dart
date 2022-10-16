import 'package:dartz/dartz.dart';
import 'package:devfest/core/exceptions/failures.dart';
import 'package:devfest/features/team/domain/models/member.dart';

abstract class TeamRepository {
  Future<Either<Failure, List<Member>>> getMembers();
}
