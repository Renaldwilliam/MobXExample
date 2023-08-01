class FullNameCodegen {
  String first;
  String last;

  FullNameCodegen({required this.first, required this.last});

  FullNameCodegen copyWith({
    String? first,
    String? last,
  }) {
    return FullNameCodegen(first: first ?? this.first, last: last ?? this.last);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is FullNameCodegen &&
        other.first == first &&
        other.last == last;
  }

  @override
  int get hashCode => first.hashCode ^ last.hashCode;
}
