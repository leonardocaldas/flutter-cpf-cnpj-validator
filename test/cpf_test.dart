import 'package:cpf_cnpj_validator/cpf_validator.dart';
import 'package:test/test.dart';

void main() {
  test("Test CPF validator", () {
    expect(CPFValidator.isValid("334.616.710-02"), true);
    expect(CPFValidator.isValid("334.616.710-01"), false);
    expect(CPFValidator.isValid("35999906032"), true);
    expect(CPFValidator.isValid("35999906031"), false);
    expect(CPFValidator.isValid("033461671002"), false);
    expect(CPFValidator.isValid("03346teste1671002@mail", false), false);
    expect(CPFValidator.isValid("57abc803.6586-52", false), false);
    expect(CPFValidator.isValid("03.3461.67100-2"), false);

    List<String> blackListed = [
      "00000000000",
      "11111111111",
      "22222222222",
      "33333333333",
      "44444444444",
      "55555555555",
      "66666666666",
      "77777777777",
      "88888888888",
      "99999999999",
      "12345678909"
    ];

    blackListed.forEach((cpf) => expect(CPFValidator.isValid(cpf), false));
  });

  test("Test CPF generator", () {
    for (var i = 0; i < 10; i++) {
      String raw = CPFValidator.generate();
      String formatted = CPFValidator.generate(true);

      expect(raw != formatted, true);
      expect(CPFValidator.isValid(raw), true);
      expect(CPFValidator.isValid(formatted), true);
    }
  });

  test("Test CPF formatter", () {
    expect(CPFValidator.format("33461671002"), "334.616.710-02");
  });

  test("Test CPF strip", () {
    expect(CPFValidator.strip("334.616.710-02"), "33461671002");
  });
}
