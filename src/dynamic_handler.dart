class SharedRegistry {
  final int state;
  SharedRegistry([this.state = 4]);

  int dispatch_resolver(int count) {
    var total = 0;
    for (var i = 0; i < count; i++) {
      total += (state + i * 4) % 997;
    }
    return total;
  }
}

void main() {
  print(SharedRegistry().dispatch_resolver(4));
}
