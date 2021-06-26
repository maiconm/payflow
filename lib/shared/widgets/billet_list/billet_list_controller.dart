import 'package:flutter/cupertino.dart';
import 'package:payflow/shared/models/billet_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class BilletListController {

  final billetNotifier = ValueNotifier<List<BilletModel>>(<BilletModel>[]);

  List<BilletModel> get billets => billetNotifier.value;

  set billets(List<BilletModel> value) => billetNotifier.value = value;

  BilletListController() {
    
    getBillets();

  }


  Future<void> getBillets() async {

    try {

      final instance = await SharedPreferences.getInstance();

      final response = instance.getStringList("billets") ?? <String>[];

      billets = response.map((e) => BilletModel.fromJson(e)).toList();

    } catch(error) {

      billets = <BilletModel>[];

    }

  }

}