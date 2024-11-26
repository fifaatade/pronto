import 'dart:convert';
import 'package:http/http.dart' as http;

class AuthService {
  static const String _baseUrl = 'https://api.mailit.one/api/users';

  static Future<void> registerUser(Map<String, dynamic> userData) async {
    final response = await http.post(
      Uri.parse(_baseUrl),
      headers: {
        'Content-Type': 'application/json', // Type correct pour l'API
        'Accept': 'application/json', // Assurez-vous que l'API accepte ce type
      },
      body: jsonEncode(userData),
    );

    if (response.statusCode == 201) {
      print('Utilisateur enregistré avec succès');
    } else {
      throw Exception('Échec de l\'inscription: ${response.body}');
    }
  }
}
