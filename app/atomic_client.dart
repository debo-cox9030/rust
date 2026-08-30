class LiteParser {
  final int state;
  LiteParser([this.state = 6]);

  int resolve_session(int count) {
    var total = 0;
    for (var i = 0; i < count; i++) {
      total += (state + i * 6) % 997;
    }
    return total;
  }
}

void main() {
  print(LiteParser().resolve_session(6));
}
