
# CPF/CNPJ Validator 
  
A Flutter plugin to validate CPF/CNPJ numbers from Brazil.  

[![pub package](https://img.shields.io/pub/v/cpf_cnpj_validator.svg)](https://pub.dartlang.org/packages/cpf_cnpj_validator)
  
## Installation  
Add this to your package's pubspec.yaml file:

```yaml
dependencies:
  cpf_cnpj_validator: ^1.0.4
```
  
## Usage CPF  
  
``` dart  
// Import package  
import 'package:cpf_cnpj_validator/cpf_validator.dart';  
  
CPFValidator.isValid("334.616.710-02") // true
CPFValidator.isValid("334.616.710-01") // false
CPFValidator.isValid("35999906032") // true
CPFValidator.isValid("35999906031") // false
CPFValidator.isValid("033461671002") // false


// Other utility methods
CPFValidator.format("33461671002") // Result: 334.616.710-02
CPFValidator.strip("334.616.710-02") // Result: 33461671002

// Generate a raw CPF number, without format
CPFValidator.generate() // Result: 33461671002

// Generate a formatted CPF number
CPFValidator.generate(true) // Result: 334.616.710-02 
```  

## Usage CNPJ  
  
``` dart  
// Import package  
import 'package:cpf_cnpj_validator/cnpj_validator.dart';  
  
CNPJValidator.isValid("12.175.094/0001-19") // true
CNPJValidator.isValid("12.175.094/0001-18") // false
CNPJValidator.isValid("17942159000128") // true
CNPJValidator.isValid("17942159000127") // false
CNPJValidator.isValid("017942159000128") // false


// Other utility methods
CNPJValidator.format("85137090000110") // Result: 85.137.090/0001-10
CNPJValidator.strip("85.137.090/0001-10") // Result: 85137090000110

// Generate a raw CNPJ number, without format
CNPJValidator.generate() // Result: 85137090000110

// Generate a formatted CNPJ number
CNPJValidator.generate(true) // Result: 85.137.090/0001-10 
```  

## Credits

This plugin is a rewrite to Dart from an existing Javascript project with the same purpose.
All the credits go to the person who created the projects in Javascript.

If you guys like this plugin, make sure to star the original projects. I'll leave the links below:

[https://github.com/fnando/cpf](https://github.com/fnando/cpf)

[https://github.com/fnando/cnpj](https://github.com/fnando/cnpj)

## Contributing

If you wish to contribute to this project, I encourage you to open a pull request.