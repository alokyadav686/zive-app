import 'package:flutter/material.dart';
import 'package:zive/utils/constants/text_strings.dart';

class SignInThroughMail extends StatelessWidget {
  const SignInThroughMail({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          children: [
            const SizedBox(height: 60),

            /// Top Grid with pill shapes and starburst
            SizedBox(
              height: size.height * 0.5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Top Row
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [PillBox(), PillBox(), PillBox()],
                  ),

                  // Middle Row
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [PillBox(), StarburstIcon(), PillBox()],
                  ),

                  // Bottom Row
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [PillBox(), PillBox(), PillBox()],
                  ),
                ],
              ),
            ),

            const Spacer(),

            /// Welcome Texts
            Text(
              ZiveTexts.SigninTitle,
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                letterSpacing: 1.2,
              ),
            ),
            const SizedBox(height: 4),
            const Text(
              ZiveTexts.SigninSubTitle,
              style: TextStyle(
                fontSize: 16,
                fontStyle: FontStyle.italic,
                color: Colors.white70,
              ),
            ),
            const SizedBox(height: 20),

            /// Back arrow and subtitle
            Row(
              children: const [
                Icon(Icons.arrow_back, color: Colors.white),
                SizedBox(width: 8),
                Text(
                  ZiveTexts.signinWelcome,
                  style: TextStyle(color: Colors.white70, fontSize: 14),
                ),
              ],
            ),
            const SizedBox(height: 16),

            /// Email Input Field
            TextField(
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                hintText: ZiveTexts.emailAddress,
                hintStyle: const TextStyle(color: Colors.white54),
                filled: true,
                fillColor: Colors.transparent,
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(8),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            const SizedBox(height: 16),

            /// Next Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black,
                  backgroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text('Next'),
              ),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}

/// Pill-shaped grey box
class PillBox extends StatelessWidget {
  const PillBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 60,
      decoration: BoxDecoration(
        color: Colors.grey.shade400,
        borderRadius: BorderRadius.circular(40),
      ),
    );
  }
}

/// Center Starburst icon or asset
class StarburstIcon extends StatelessWidget {
  const StarburstIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: const BoxDecoration(shape: BoxShape.circle),
      child: Center(
        child: Icon(
          Icons.star,
          color: Colors.white,
          size: 28,
        ), // Replace with Image.asset(...) if needed
      ),
    );
  }
}
