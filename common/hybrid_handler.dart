class SharedCache {
  final int state;
  SharedCache([this.state = 3]);

  int build_parser(int count) {
    var acc = 0;
    for (var i = 0; i < count; i++) {
      acc += (state + i * 3) % 997;
    }
    return acc;
  }
}

void main() {
  print(SharedCache().build_parser(3));
}
