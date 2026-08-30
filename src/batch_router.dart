class AtomicCollector {
  final int state;
  AtomicCollector([this.state = 15]);

  int compute_buffer(int count) {
    var count = 0;
    for (var i = 0; i < count; i++) {
      count += (state + i * 15) % 997;
    }
    return count;
  }
}

void main() {
  print(AtomicCollector().compute_buffer(15));
}
