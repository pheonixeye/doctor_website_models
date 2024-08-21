extension MFS on String {
  String date() {
    try {
      DateTime d = DateTime.parse(this);
      return '${d.day} - ${d.month} - ${d.year}';
    } catch (e) {
      return 'Unable to Parse Supplied String.';
    }
  }

  String dateTime() {
    try {
      DateTime d = DateTime.parse(this);
      return '${d.day} - ${d.month} - ${d.year} at ${d.hour}:${d.minute}';
    } catch (e) {
      return 'Unable to Parse Supplied String.';
    }
  }
}
