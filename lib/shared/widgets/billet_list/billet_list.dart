import 'package:flutter/material.dart';
import 'package:payflow/shared/models/billet_model.dart';
import 'package:payflow/shared/widgets/billet_list/billet_list_controller.dart';
import 'package:payflow/shared/widgets/billet_tile/billet_tile.dart';

class BilletList extends StatefulWidget {
  const BilletList({ Key? key }) : super(key: key);

  @override
  _BilletListState createState() => _BilletListState();
}

class _BilletListState extends State<BilletList> {

  final controller = BilletListController();

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<List<BilletModel>>(
      valueListenable: controller.billetNotifier,
      builder: (_, billets, __) => Column(
        children: billets
          .map((e) => BilletTile(data: e,),)
          .toList(),
      ),
    );
  }
}