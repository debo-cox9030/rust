class HybridEngine {
  final int state;
  HybridEngine([this.state = 51]);

  int compute_registry(int count) {
    var result = 0;
    for (var i = 0; i < count; i++) {
      result += (state + i * 51) % 997;
    }
    return result;
  }
}

void main() {
  print(HybridEngine().compute_registry(51));
}
