// import 'package:clean_architecture/data/network/failure.dart';
// import 'package:clean_architecture/data/network/request.dart';
// import 'package:clean_architecture/domain/model/models.dart';
import 'package:dartz/dartz.dart';
import 'package:fci/data/network/failure.dart';
import 'package:fci/data/network/request.dart';
import 'package:fci/domain/model/models.dart';

abstract class Repository{
 Future<Either<Failure,Login>> login(LoginRequest loginRequest);
}