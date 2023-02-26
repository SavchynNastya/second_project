void demonstrateSyntacticSugar() {
  int? a = 4;
  int b = 6;

  print("SYNTACTIC SUGAR\n");

  print('is operator - a is bool --> ${a is bool}');
  print('Ternary operator: a > 2 ? b : b+10 --> ${a > 2 ? b : b + 10}');
  print('??= operator: a ??= 3 --> ${a ??= 3}');
  print('Make variable a to be null.');

  a = null;

  print('If-null operator - a ?? 12 --> ${a ?? 12}');
  print('??= operator: a ??= 3 --> ${a ??= 3}');
  print('If-null operator - a ?? 12 --> ${a ?? 12}');
}
