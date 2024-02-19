// database.dart

import 'package:drift/drift.dart';

@DataClassName('Person')
class Persons extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text().customConstraint('UNIQUE')();
  IntColumn get age => integer().nullable()();
}
