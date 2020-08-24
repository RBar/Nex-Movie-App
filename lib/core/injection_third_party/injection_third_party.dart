import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:http/http.dart';
import 'package:injectable/injectable.dart';

//Dependency injection of thrid party libraries

@module
abstract class MoviesInjectableModule {
  @lazySingleton
  Client get httpClient => Client();

  @lazySingleton
  DataConnectionChecker get dataConnectionChecker => DataConnectionChecker();

  @lazySingleton
  Firestore get firebaseAuth => Firestore.instance;
}
