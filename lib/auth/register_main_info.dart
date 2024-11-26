import 'package:flutter/material.dart';
import 'package:pronto/auth/register_password.dart';
import 'package:pronto/services/auth_service.dart';

class RegisterMainInfo extends StatefulWidget {
  const RegisterMainInfo({super.key});

  @override
  State<RegisterMainInfo> createState() => _RegisterMainInfoState();
}

enum Gender { homme, femme }

class _RegisterMainInfoState extends State<RegisterMainInfo> {
  final _formKey = GlobalKey<FormState>();

  // Controllers pour récupérer les valeurs des champs
  final TextEditingController _nomController = TextEditingController();
  final TextEditingController _prenomController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  Gender? _selectedGender = Gender.homme;
  bool _acceptedTerms = false;

  Future<void> _submitForm() async {
    if (_formKey.currentState!.validate()) {
      // Récupérer les valeurs des champs
      final String nom = _nomController.text;
      final String prenom = _prenomController.text;
      final String email = _emailController.text;

      // Préparer les données pour l'API
      final Map<String, dynamic> userData = {
        'nom': nom,
        'prenom': prenom,
        'email': email,
      };

      try {
        // Envoyer les données à l'API
        await AuthService.registerUser(userData);

        // Naviguer vers la page suivante après succès
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const RegisterPassword()),
        );
      } catch (error) {
        // Afficher une erreur si la requête échoue
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Une erreur s\'est produite: $error')),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                const SizedBox(height: 40),
                Image.asset(
                  'assets/images/logo_red.png',
                  height: 200,
                ),
                const SizedBox(height: 20),
                const Row(
                  children: [
                    Text(
                      'Inscrivez-vous',
                      style: TextStyle(
                        fontSize: 26,
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                _buildTextField(
                  controller: _nomController,
                  label: 'Nom',
                  hintText: 'Entrez votre nom',
                  icon: Icons.person,
                ),
                const SizedBox(height: 10),
                _buildTextField(
                  controller: _prenomController,
                  label: 'Prénom',
                  hintText: 'Entrez votre prénom',
                  icon: Icons.person_outline,
                ),
                const SizedBox(height: 10),
                _buildTextField(
                  controller: _emailController,
                  label: 'Adresse mail',
                  hintText: 'Entrez votre adresse mail',
                  icon: Icons.mail_outline,
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Radio<Gender>(
                      value: Gender.homme,
                      groupValue: _selectedGender,
                      activeColor: const Color(0xFFF00020),
                      onChanged: (Gender? value) {
                        setState(() {
                          _selectedGender = value;
                        });
                      },
                    ),
                    const Text('Homme'),
                    const SizedBox(width: 20),
                    Radio<Gender>(
                      value: Gender.femme,
                      groupValue: _selectedGender,
                      activeColor: const Color(0xFFF00020),
                      onChanged: (Gender? value) {
                        setState(() {
                          _selectedGender = value;
                        });
                      },
                    ),
                    const Text('Femme'),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                      value: _acceptedTerms,
                      onChanged: (bool? value) {
                        setState(() {
                          _acceptedTerms = value ?? false;
                        });
                      },
                    ),
                    Flexible(
                      child: Text.rich(
                        TextSpan(
                          text: 'J’ai lu et accepté les ',
                          style: const TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                            fontFamily: 'Poppins',
                          ),
                          children: const [
                            TextSpan(
                              text: 'conditions générales',
                              style: TextStyle(color: Color(0xFFF00020)),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: _acceptedTerms ? _submitForm : null,
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
                                    'Continuer',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextField({
    required TextEditingController controller,
    required String label,
    required String hintText,
    required IconData icon,
    TextInputType keyboardType = TextInputType.text,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 14,
            color: Colors.black,
            fontWeight: FontWeight.w600,
            fontFamily: 'Poppins',
          ),
        ),
        const SizedBox(height: 5),
        TextFormField(
          controller: controller,
          keyboardType: keyboardType,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Veuillez remplir ce champ';
            }
            return null;
          },
          decoration: InputDecoration(
            hintText: hintText,
            prefixIcon: Icon(icon),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25.0),
            ),
          ),
        ),
      ],
    );
  }
}
