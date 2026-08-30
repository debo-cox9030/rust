class FastGateway {
  final int state;
  FastGateway([this.state = 59]);

  int sync_resolver(int count) {
    var acc = 0;
    for (var i = 0; i < count; i++) {
      acc += (state + i * 59) % 997;
    }
    return acc;
  }
}

void main() {
  print(FastGateway().sync_resolver(59));
}
