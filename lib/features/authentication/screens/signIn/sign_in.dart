import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 16),
            
          
            const SizedBox(height: 20),

            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: GridView.count(
                  crossAxisCount: 3,
                  mainAxisSpacing: 12,
                  crossAxisSpacing: 12,
                  childAspectRatio: 0.7,
                  physics: const NeverScrollableScrollPhysics(),
                  children: const [
                    roundImage('assets/images/image.png'),
                    roundImage('assets/images/image-1.png'),
                    roundImage('assets/images/image-2.png'),
                    roundImage('assets/images/image-3.png'),
                    roundImage('assets/images/image-4.png'),
                    roundImage('assets/images/image-4.png'),
                    roundImage('assets/images/image-4.png'),
                    
                    SizedBox(), // Empty for spacing
                    SizedBox(), // Empty for spacing
                  ],
                ),
              ),
            ),

            // Welcome Text
            Text(
              'Welcome to ZIVÉ',
              style: GoogleFonts.playfairDisplay(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Live What You Wear',
              style: GoogleFonts.dancingScript(
                fontSize: 16,
                color: Colors.white70,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'Sign in and Join the movement ✨',
              style: TextStyle(color: Colors.white54),
            ),
            const SizedBox(height: 20),

            // Sign-in Buttons
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Column(
                children: [
                  socialButton(Icons.g_mobiledata, "Sign In with Google"),
                  const SizedBox(height: 10),
                  socialButton(Icons.facebook, "Sign In with Facebook"),
                  const SizedBox(height: 10),
                  emailSignInButton(),
                ],
              ),
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }


  // Social Button
  Widget socialButton(IconData icon, String text) {
    return Container(
      height: 45,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white30),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          const SizedBox(width: 10),
          Icon(icon, color: Colors.white),
          const SizedBox(width: 10),
          Text(
            text,
            style: const TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }

  // Email Sign In Button
  Widget emailSignInButton() {
    return Container(
      height: 45,
      width: double.infinity,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.white10,
        border: Border.all(color: Colors.white30),
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Text(
        "Sign In with Email",
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}

// Round Image Widget
class roundImage extends StatelessWidget {
  final String path;
  const roundImage(this.path, {super.key});

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Image.asset(
        path,
        fit: BoxFit.cover,
      ),
    );
  }
}