import 'package:get/get.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import '../../../core/api url/api_url.dart';
import '../model/quran_model.dart';

class QuranController extends GetxController {
  var isLoading = true.obs;
  var quranData = QuranModel().obs;

  @override
  void onInit() {
    super.onInit();
    getQuranData();
  }

  Future<void> getQuranData() async {
    try {
      isLoading(true);

      var response = await http.get(Uri.parse(quranAPI));
      if (response.statusCode == 200) {
        var jsonResponse = jsonDecode(response.body);
        quranData.value = QuranModel.fromJson(jsonResponse);
      } else {}
    } finally {
      isLoading(false);
    }
  }
}
