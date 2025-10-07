import 'dart:developer';

import 'package:flutter/foundation.dart';

void showlog(String msg) {
  if (kDebugMode) {
    log('\x1B[32m$msg\x1B[0m');
  }
}
