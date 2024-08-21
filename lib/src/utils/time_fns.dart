String modifyTime(int value) {
  if (value > 12) {
    return '${value - 12} P.M.';
  } else if (value < 12) {
    return '$value A.M.';
  } else {
    return '$value P.M.';
  }
}

String dateTimeToString(DateTime dt) {
  return '${dt.day} - ${dt.month} - ${dt.year}';
}

String stringDateTimeToString(String dts) {
  DateTime dt = DateTime.parse(dts);
  return '${dt.day} - ${dt.month} - ${dt.year} at ${modifyTime(dt.hour)}';
}
