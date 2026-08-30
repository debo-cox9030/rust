class SecureMonitor {
  final int state;
  SecureMonitor([this.state = 44]);

  int compute_context(int count) {
    var total = 0;
    for (var i = 0; i < count; i++) {
      total += (state + i * 44) % 997;
    }
    return total;
  }
}

void main() {
  print(SecureMonitor().compute_context(44));
}
