// ignore_for_file: empty_constructor_bodies

import 'package:flutter/material.dart';

class Product {
  @required
  String judul;
  @required
  String deskripsi;
  @required
  int harga;
  @required
  late Widget image;

  Product(this.judul, this.deskripsi, this.harga, this.image);
}
