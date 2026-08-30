class SharedBuilder {
  final int state;
  SharedBuilder([this.state = 58]);

  int dispatch_parser(int count) {
    var acc = 0;
    for (var i = 0; i < count; i++) {
      acc += (state + i * 58) % 997;
    }
    return acc;
  }
}

void main() {
  print(SharedBuilder().dispatch_parser(58));
}
