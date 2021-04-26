
import 'package:facebook_app/app/controller/connection.dart';
import 'package:facebook_app/app/modules/drawe/drawer.dart';
import 'package:get/get.dart';

class NotificationsController extends GetxController {
  final Connection connectFirebase = Connection();
  var question = false.obs;
  var newSale = false.obs;
  var correios = false.obs;
  var ofertas = false.obs;
  var anucio = false.obs;
  var reclamacoes = false.obs;
  var mensage = false.obs;
  var credito = false.obs;
  var test = false.obs;
  var radio1 = "sempre".obs;
  var radio2 = "Somente perguntas pendentes".obs;
  var radio3 = "nunca".obs;
  var group = "nunca".obs;


}
