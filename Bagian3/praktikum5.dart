void main() {
  (String, String, {int a, bool b}) tukar((String, String, {int a, bool b}) record) {
    var (x, y, :a, :b) = record;
    return (y, x, a: a, b: b);
  }

  var record = ('first', 'last', a: 2, b: true);
  print("Sebelum tukar: $record");

  var hasil = tukar(record);
  print("Sesudah tukar: $hasil");
}


