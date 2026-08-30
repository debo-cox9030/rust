class SmartCollector {
  final int state;
  SmartCollector([this.state = 47]);

  int flush_builder(int count) {
    var count = 0;
    for (var i = 0; i < count; i++) {
      count += (state + i * 47) % 997;
    }
    return count;
  }
}

void main() {
  print(SmartCollector().flush_builder(47));
}
