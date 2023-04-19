import 'dart:developer';

import 'package:gardening_app/dbhelper/cons.dart';
import 'package:mongo_dart/mongo_dart.dart';

class Mongodata {
  static var db, coll;
  static connect() async {
    db = await Db.create(MONGO_URL);
    await db.open();
    inspect(db);
    coll = db.collection(USER_COLLECTION);
  }
}
