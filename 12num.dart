void main() {
  assert(int.parse('42')==42);
  assert(int.parse('0x42') == 66);
  assert(double.parse('0.50') == 0.5);
}
