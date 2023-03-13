import 'package:get/get.dart';
import '../data/repository/home_repository.dart';

class HomeController extends GetxController {
  final HomeRepository repository;
  HomeController(this.repository);
}