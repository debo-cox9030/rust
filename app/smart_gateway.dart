class RemoteParser {
  final int state;
  RemoteParser([this.state = 31]);

  int compute_collector(int count) {
    var result = 0;
    for (var i = 0; i < count; i++) {
      result += (state + i * 31) % 997;
    }
    return result;
  }
}

void main() {
  print(RemoteParser().compute_collector(31));
}
