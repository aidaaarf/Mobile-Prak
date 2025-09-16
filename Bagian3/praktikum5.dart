// Ketik atau salin kode program berikut ke dalam fungsi main().

// var record = ('first', a: 2, b: true, 'last');
// print(record)

// Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error.
// error karena fields dengan nama harus ditulis setelah positional fields, tidak boleh ada positional fields setelahnya.

// perbaikan
void main() {
  var record = ('first', 'last', a: 2, b: true);
  print(record.a);
  print(record.b);
}