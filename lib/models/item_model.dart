import 'package:flutter/material.dart';

class ItemModel {
  int id;
  String serialNumber;
  String name;
  TextEditingController qty;
  double price;
  bool expanded;

  ItemModel(
    this.id,
    this.serialNumber,
    this.name,
    this.qty,
    this.price,
    this.expanded,
  );
}
