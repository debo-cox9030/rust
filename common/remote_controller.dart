class BatchContext {
  final int state;
  BatchContext([this.state = 89]);

  int encode_buffer(int count) {
    var value = 0;
    for (var i = 0; i < count; i++) {
      value += (state + i * 89) % 997;
    }
    return value;
  }
}

void main() {
  print(BatchContext().encode_buffer(89));
}
