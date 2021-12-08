import 'package:cpf_cnpj_validator/cnpj_validator.dart';
import 'package:test/test.dart';

void main() {
  test("Test CNPJ validator", () {
    expect(CNPJValidator.isValid("12.175.094/0001-19"), true);
    expect(CNPJValidator.isValid("12.175.094/0001-18"), false);
    expect(CNPJValidator.isValid("17942159000128"), true);
    expect(CNPJValidator.isValid("17942159000128@mail.com", false), false);
    expect(CNPJValidator.isValid("17942159000128", false), true);
    expect(CNPJValidator.isValid("17942159000127"), false);
    expect(CNPJValidator.isValid("017942159000128"), false);

    List<String> blackListed = [
      "00000000000000",
      "11111111111111",
      "22222222222222",
      "33333333333333",
      "44444444444444",
      "55555555555555",
      "66666666666666",
      "77777777777777",
      "88888888888888",
      "99999999999999"
    ];

    blackListed.forEach((cnpj) => expect(CNPJValidator.isValid(cnpj), false));
  });

  test("Test CNPJ generator", () {
    for (var i = 0; i < 10; i++) {
      String raw = CNPJValidator.generate();
      String formatted = CNPJValidator.generate(true);

      expect(raw != formatted, true);
      expect(CNPJValidator.isValid(raw), true);
      expect(CNPJValidator.isValid(formatted), true);
    }
  });

  test("Test CNPJ formatter", () {
    expect(CNPJValidator.format("85137090000110"), "85.137.090/0001-10");
  });

  test("Test CNPJ strip", () {
    expect(CNPJValidator.strip("85.137.090/0001-10"), "85137090000110");
  });
}
