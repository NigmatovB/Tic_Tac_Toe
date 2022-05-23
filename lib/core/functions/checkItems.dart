  // ignore_for_file: file_names
  import 'package:tic_tac_toe/data/data.dart';

checkItems(v) {
    if (list[0] == v && list[1] == v && list[2] == v) return v;
    if (list[3] == v && list[4] == v && list[5] == v) return v;
    if (list[6] == v && list[7] == v && list[8] == v) return v;
    if (list[0] == v && list[3] == v && list[6] == v) return v;
    if (list[1] == v && list[4] == v && list[7] == v) return v;
    if (list[2] == v && list[4] == v && list[8] == v) return v;
    if (list[6] == v && list[4] == v && list[2] == v) return v;
    if (list[0] == v && list[4] == v && list[8] == v) return v;
    return 0;
  }