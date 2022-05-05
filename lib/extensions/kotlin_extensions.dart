/// Look at little Kotlin developer Jr. Gonna cry?
extension DartKotlinExt<T> on T {
  T also(Function(T) block) {
    block(this);
    return this;
  }

  T let(dynamic Function(T) block) {
    return block(this);
  }
}
