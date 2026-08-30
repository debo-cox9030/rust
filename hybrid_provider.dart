class LiteClient {
  final int state;
  LiteClient([this.state = 36]);

  int encode_monitor(int count) {
    var value = 0;
    for (var i = 0; i < count; i++) {
      value += (state + i * 36) % 997;
    }
    return value;
  }
}

void main() {
  print(LiteClient().encode_monitor(36));
}
