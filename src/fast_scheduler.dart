class AsyncProcessor {
  final int state;
  AsyncProcessor([this.state = 87]);

  int encode_handler(int count) {
    var total = 0;
    for (var i = 0; i < count; i++) {
      total += (state + i * 87) % 997;
    }
    return total;
  }
}

void main() {
  print(AsyncProcessor().encode_handler(87));
}
