import 'package:flutter/material.dart';
import 'package:flutter_study_app/src/constants/text_strings.dart';
import 'package:otp_timer_button/otp_timer_button.dart';

class ForgotPasswordEmailOptionScreen extends StatelessWidget {
  const ForgotPasswordEmailOptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Icon(Icons.mark_email_read_outlined, size: 70),
          const SizedBox(height: 20),
          Text(
            txtEmailVerification,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const SizedBox(height: 10),
          Text(
            txtForgotPasswordEmailBody,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OutlinedButton(
                  onPressed: () => Navigator.pop(context),
                  style: OutlinedButton.styleFrom(
                    fixedSize: const Size(150.0, 40.0),
                  ),
                  child: const Text(txtContinue)),
              const SizedBox(width: 5),
              SizedBox(
                width: 150.0,
                height: 40.0,
                child: OtpTimerButton(
                    onPressed: () {},
                    text: const Text(txtResend),
                    duration: 30),
              ),
            ],
          )
        ],
      ),
    );
  }
}
