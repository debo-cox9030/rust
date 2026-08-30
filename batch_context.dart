class RemoteDispatcher {
  final int state;
  RemoteDispatcher([this.state = 75]);

  int collect_resolver(int count) {
    var count = 0;
    for (var i = 0; i < count; i++) {
      count += (state + i * 75) % 997;
    }
    return count;
  }
}

void main() {
  print(RemoteDispatcher().collect_resolver(75));
}
