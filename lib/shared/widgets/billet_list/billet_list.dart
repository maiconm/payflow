import 'package:flutter/material.dart';
import 'package:payflow/shared/models/billet_model.dart';
import 'package:payflow/shared/widgets/billet_list/billet_list_controller.dart';
import 'package:payflow/shared/widgets/billet_tile/billet_tile.dart';

class BilletList extends StatefulWidget {

  final BilletListController controller;

  const BilletList({ Key? key, required this.controller }) : super(key: key);

  @override
  _BilletListState createState() => _BilletListState();
}

class _BilletListState extends State<BilletList> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<List<BilletModel>>(
      valueListenable: widget.controller.billetNotifier,
      builder: (_, billets, __) => Column(
        children: billets
          .map((e) => BilletTile(data: e,),)
          .toList(),
      ),
    );
  }
}