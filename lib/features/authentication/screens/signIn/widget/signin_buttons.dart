import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:zive/features/authentication/screens/signIn/sign_in_through_mail.dart';
import 'package:zive/utils/constants/sizes.dart';

class SignInButtons extends StatelessWidget {
  const SignInButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            // Google Sign-In
            Expanded(
              child: _buildSocialButton(
                onTap: () {
                  // Google sign-in action
                },
                child: Image.asset("assets/icons/google.png"),
              ),
            ),
            const SizedBox(width: ZiveSizes.spaceBtwButtons),

            // Facebook Sign-In
            Expanded(
              child: _buildSocialButton(
                onTap: () {
                  // Facebook sign-in action
                },
                child: const Icon(
                  Icons.facebook,
                  color: Colors.white,
                  size: 28,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: ZiveSizes.spaceBtwButtons),

        // Email Sign-In
        _buildEmailButton(
          onTap: () {
            // Email sign-in action
            Get.off(SignInThroughMail());
          },
        ),
      ],
    );
  }

  Widget _buildSocialButton({
    required VoidCallback onTap,
    required Widget child,
  }) {
    return Material(
      color: Colors.black,
      borderRadius: BorderRadius.circular(ZiveSizes.borderRadiusLg),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(ZiveSizes.borderRadiusLg),
        child: Container(
          height: 60,
          padding: const EdgeInsets.symmetric(vertical: 14),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white24),
            borderRadius: BorderRadius.circular(ZiveSizes.borderRadiusLg),
          ),
          child: Center(child: child),
        ),
      ),
    );
  }

  Widget _buildEmailButton({required VoidCallback onTap}) {
    return Material(
      color: Colors.black,
      borderRadius: BorderRadius.circular(ZiveSizes.borderRadiusLg),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(ZiveSizes.borderRadiusLg),
        child: Container(
          width: double.infinity,
          height: 60,
          padding: const EdgeInsets.symmetric(vertical: 16),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white24),
            borderRadius: BorderRadius.circular(ZiveSizes.borderRadiusLg),
          ),
          child: Center(
            child: Text(
              "Sign In with Email",
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
