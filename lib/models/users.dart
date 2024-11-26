import 'package:flutter/material.dart';

class User {
  String nom;
  String prenom;
  String email;

  User({required this.nom, required this.prenom, required this.email});

  // Convertir un objet utilisateur en JSON
  Map<String, dynamic> toJson() {
    return {
      'nom': nom,
      'prenom': prenom,
      'email': email,
    };
  }
}
