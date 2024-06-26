import 'package:flutter/material.dart';
import 'package:vlog_app/core/theme/app_pallete.dart';
import 'package:vlog_app/feature/auth/presentation/pages/sign_up.dart';
import 'package:vlog_app/feature/auth/presentation/widgets/auth_field.dart';
import 'package:vlog_app/feature/auth/presentation/widgets/auth_gradient_button.dart';

class LogInPage extends StatefulWidget {
  static route() => MaterialPageRoute(builder: (context)=> const LogInPage(),);
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Sign In.",
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 30,
              ),
              const SizedBox(
                height: 15,
              ),
              AuthField(hintText: 'Email', controller: emailController),
              const SizedBox(
                height: 15,
              ),
              AuthField(hintText: 'Password', controller: passwordController, isObscureText: true,),
              const SizedBox(
                height: 15,
              ),
              const AuthGradientButton(buttonText: 'Log In',),
              const SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, SignUpPage.route(),);
                },
                child: RichText(
                    text: TextSpan(
                        text: "Don't have an account?",
                        style: Theme.of(context).textTheme.titleMedium,
                        children: [
                          TextSpan(
                              text: ' Sign Up',
                              style:
                              Theme.of(context).textTheme.titleMedium?.copyWith(
                                color: AppPallete.gradient2,
                                fontWeight: FontWeight.bold,
                              ))
                        ])),
              )
            ],
          ),
        ),
      ),
    );
  }
}
