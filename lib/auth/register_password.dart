import 'dart:developer';

import 'package:extended_phone_number_input/consts/enums.dart';
import 'package:extended_phone_number_input/phone_number_input.dart';
import 'package:flutter/material.dart';
import 'package:pronto/auth/confirm_number.dart';
import 'package:pronto/auth/login.dart';

class RegisterPassword extends StatefulWidget {
  const RegisterPassword({super.key});

  @override
  State<RegisterPassword> createState() => _RegisterPasswordState();
}

var reg = RegExp(r"(?=.*?[!@#&()\-[\]{}:;\',?/*~$^+=<>])");

enum Gender { homme, femme }

class _RegisterPasswordState extends State<RegisterPassword> {
  Gender? _selectedGender = Gender.homme;
  bool _acceptedTerms = false;
  bool _showPassword = true;
  bool _showConfirmPassword = true;
  bool _has820Caracteres = false,
      _hasCaracteres = false,
      _hasNumber = false,
      _hasSmallLetter = false,
      _hasSpecialChar = false,
      _hasMatch = false,
      _hasMajLetter = false;
  _validatePassword(String? value) {
    // Minimum 8 characters, Maximum 20 characters
    if (value == null || value.isEmpty) {
      setState(() {
        _has820Caracteres = false;
        _hasCaracteres = false;
        _hasNumber = false;
        _hasSmallLetter = false;
        _hasSpecialChar = false;
        _hasMatch = false;
        _hasMajLetter = false;
      });
    }
    // log(value!.length.toString());
    if (value!.length < 8 || value.length > 20) {
      setState(() {
        _has820Caracteres = false;
      });
    } else {
      setState(() {
        _has820Caracteres = true;
      });
    }

    // At least one digit [0-9]
    if (!RegExp(r'(?=.*?[0-9])').hasMatch(value)) {
      setState(() {
        _hasNumber = false;
      });
    } else {
      setState(() {
        _hasNumber = true;
      });
    }

    // At least one lowercase letter [a-z]
    if (!RegExp(r'(?=.*?[a-z])').hasMatch(value)) {
      setState(() {
        _hasSmallLetter = false;
      });
    } else {
      setState(() {
        _hasSmallLetter = true;
      });
    }

    // At least one uppercase letter [A-Z]
    if (!RegExp(r'(?=.*?[A-Z])').hasMatch(value)) {
      setState(() {
        _hasMajLetter = false;
      });
    } else {
      setState(() {
        _hasMajLetter = true;
      });
    }

    // At least one special character [!@#&()]
    if (!reg.hasMatch(value)) {
      setState(() {
        _hasSpecialChar = false;
      });
    } else {
      setState(() {
        _hasSpecialChar = true;
      });
    }
    return null;
  }

  verifyPassword(String? value) {
    if (value == null || value.isEmpty) {
      setState(() {
        _hasMatch = false;
      });
    } else {
      setState(() {
        _hasMatch = true;
      });
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 270,
                  color: Colors.white,
                  child: Center(
                    child: Image.asset(
                      'assets/images/logo_red.png',
                    ),
                  ),
                ),
                Column(
                  children: [
                    const Row(
                      children: [
                        Text(
                          'Inscrivez-vous',
                          style: TextStyle(
                              fontSize: 26,
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'Poppins'),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Row(
                      children: [
                        Text(
                          'Mot de passe',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    TextFormField(
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: _showPassword,
                        onChanged: (value) {
                          _validatePassword(value);
                        },
                        decoration: InputDecoration(
                          hintText: 'Entrez votre mot de passe',
                          hintStyle: const TextStyle(
                            fontSize: 14,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                          prefixIcon: const Icon(Icons.lock_outline_rounded),
                          suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                _showPassword = !_showPassword;
                              });
                            },
                            child: Icon(_showPassword
                                ? Icons.visibility_off_outlined
                                : Icons.visibility_outlined),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0),
                            borderSide: const BorderSide(
                                color: Color(0XFFCFCECE), width: 1),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0),
                            borderSide: const BorderSide(
                                color: Color(0xFFF00020), width: 1.5),
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 12),
                        )),
                    const SizedBox(
                      height: 10,
                    ),
                    const Row(
                      children: [
                        Text(
                          'Confirmez le mot de passe',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    TextFormField(
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: _showConfirmPassword,
                        decoration: InputDecoration(
                          hintText: 'Veuillez confirmer votre mot de passe',
                          hintStyle: const TextStyle(
                            fontSize: 14,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                          prefixIcon: const Icon(Icons.lock_outline_rounded),
                          suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                _showConfirmPassword = !_showConfirmPassword;
                              });
                            },
                            child: Icon(_showConfirmPassword
                                ? Icons.visibility_off_outlined
                                : Icons.visibility_outlined),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0),
                            borderSide: const BorderSide(
                                color: Color(0XFFCFCECE), width: 1),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0),
                            borderSide: const BorderSide(
                                color: Color(0xFFF00020), width: 1.5),
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 12),
                        )),
                    const SizedBox(
                      height: 20,
                    ),
                    const Row(
                      children: [
                        Text(
                          'Votre mot de passe doit contenir :',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Icon(
                          _hasNumber == true
                              ? Icons.check_circle_rounded
                              : Icons.circle_outlined,
                          color: _hasNumber == true
                              ? Color(0xFF0B7B69)
                              : Color(0xFF655F5F),
                          size: 16,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Flexible(
                          child: Text(
                            'Au moins un chiffre [0-9]',
                            style: TextStyle(
                                color: _hasNumber == true
                                    ? Color(0xFF0B7B69)
                                    : Color(0xFF655F5F),
                                fontSize: 12,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Icon(
                          _hasSmallLetter == true
                              ? Icons.check_circle_rounded
                              : Icons.circle_outlined,
                          color: _hasSmallLetter == true
                              ? Color(0xFF0B7B69)
                              : Color(0xFF655F5F),
                          size: 16,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Flexible(
                          child: Text(
                            'Au moins un caractère minuscule [a-z] ',
                            style: TextStyle(
                                color: _hasSmallLetter == true
                                    ? Color(0xFF0B7B69)
                                    : Color(0xFF655F5F),
                                fontSize: 12,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Icon(
                          _hasMajLetter == true
                              ? Icons.check_circle_rounded
                              : Icons.circle_outlined,
                          color: _hasMajLetter == true
                              ? Color(0xFF0B7B69)
                              : Color(0xFF655F5F),
                          size: 16,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Flexible(
                          child: Text(
                            'Au moins un caractère majuscule [A-Z]',
                            style: TextStyle(
                                color: _hasMajLetter == true
                                    ? Color(0xFF0B7B69)
                                    : Color(0xFF655F5F),
                                fontSize: 12,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Icon(
                          _hasSpecialChar == true
                              ? Icons.check_circle_rounded
                              : Icons.circle_outlined,
                          color: _hasSpecialChar == true
                              ? Color(0xFF0B7B69)
                              : Color(0xFF655F5F),
                          size: 16,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Flexible(
                          child: Text(
                            'Au moins un caractère spécial comme !@#&()',
                            style: TextStyle(
                                color: _hasSpecialChar == true
                                    ? Color(0xFF0B7B69)
                                    : Color(0xFF655F5F),
                                fontSize: 12,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Icon(
                          _has820Caracteres == true
                              ? Icons.check_circle_rounded
                              : Icons.circle_outlined,
                          color: _has820Caracteres == true
                              ? Color(0xFF0B7B69)
                              : Color(0xFF655F5F),
                          size: 16,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Flexible(
                          child: Text(
                            'Au minimum 8 caractères et au maximum 20 caractères',
                            style: TextStyle(
                                color: _has820Caracteres == true
                                    ? Color(0xFF0B7B69)
                                    : Color(0xFF655F5F),
                                fontSize: 12,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            // Début de la sélection
                            Expanded(
                              child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => const Login(),
                                        ));
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  backgroundColor: const Color(
                                      0xFFF00020), // couleur de fond du bouton
                                  // Fin de la sélection
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(26),
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 14),
                                ),
                                child: Container(
                                  alignment: Alignment.center,
                                  child: const Text(
                                    'Connexion',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
