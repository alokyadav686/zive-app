import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zive/common/styles/spacing_styles.dart';
import 'package:zive/features/authentication/screens/signIn/widget/signin_buttons.dart';
import 'package:zive/utils/constants/text_strings.dart';
import 'package:zive/utils/helpers/helper.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = ZiveHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: Padding(
        padding: ZiveSpacingStyle.paddingWithAppBarHeight,
        child: Column(
          children: [
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
                    SizedBox(),
                    SizedBox(),
                  ],
                ),
              ),
            ),

            // Welcome Text
            Text(
              ZiveTexts.SigninTitle,
              style: GoogleFonts.playfairDisplay(
                color: dark ? Colors.white : Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              ZiveTexts.SigninSubTitle,
              style: GoogleFonts.dancingScript(
                fontSize: 16,
                color: dark ? Colors.white70 : Colors.black54,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              ZiveTexts.signinWelcome,
              style: TextStyle(color: dark ? Colors.white54 : Colors.black54),
            ),
            const SizedBox(height: 10),

            // Buttons Section
            const SignInButtons(),
          ],
        ),
      ),
    );
  }
}

class roundImage extends StatelessWidget {
  final String path;
  const roundImage(this.path, {super.key});

  @override
  Widget build(BuildContext context) {
    return ClipOval(child: Image.asset(path, fit: BoxFit.cover));
  }
}
