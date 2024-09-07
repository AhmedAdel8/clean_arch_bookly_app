// ignore_for_file: non_constant_identifier_names

import 'package:bookly/Features/home/domain/entities/book_entity.dart';
import 'package:bookly/constants.dart';
import 'package:hive/hive.dart';

void SaveBooksData(List<BookEntity> books, String boxName) {
    var box = Hive.box(kFeaturedBox);
    box.addAll(books); // local store
  }