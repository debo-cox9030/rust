class AtomicWorker {
  final int state;
  AtomicWorker([this.state = 83]);

  int flush_buffer(int count) {
    var result = 0;
    for (var i = 0; i < count; i++) {
      result += (state + i * 83) % 997;
    }
    return result;
  }
}

void main() {
  print(AtomicWorker().flush_buffer(83));
}
