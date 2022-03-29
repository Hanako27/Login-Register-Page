import 'package:flutter/material.dart';
import 'package:coba/theme.dart';
import 'package:coba/widgets/custom_checkbox.dart';
import 'package:coba/widgets/primary_button.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool passwordVisible = false;
  bool passwordConfirmVisible = false;
  void togglePassword() {
    setState(() {
      passwordVisible = !passwordVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.fromLTRB(24, 40, 24, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Test Menu\nRegister',
                  textAlign: TextAlign.center,
                  style: heading2.copyWith(color: textBlack),
                ),
                const SizedBox(
                  height: 20,
                ),
                Image.asset(
                  'assets/images/accent.png',
                  width: 500,
                  height: 4,
                )
              ],
            ),
            const SizedBox(
              height: 48,
            ),
            Form(
                child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: textWhiteGrey,
                      borderRadius: BorderRadius.circular(14)),
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: 'Email',
                        hintStyle: heading6.copyWith(color: textGrey),
                        border: const OutlineInputBorder(
                            borderSide: BorderSide.none)),
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: textWhiteGrey,
                      borderRadius: BorderRadius.circular(14)),
                  child: TextFormField(
                    obscureText: !passwordVisible,
                    decoration: InputDecoration(
                        hintText: 'Password',
                        hintStyle: heading6.copyWith(color: textGrey),
                        suffixIcon: IconButton(
                          color: textGrey,
                          splashRadius: 1,
                          icon: Icon(passwordVisible
                              ? Icons.visibility_outlined
                              : Icons.visibility_off_outlined),
                          onPressed: togglePassword,
                        ),
                        border: const OutlineInputBorder(
                            borderSide: BorderSide.none)),
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: textWhiteGrey,
                      borderRadius: BorderRadius.circular(14)),
                  child: TextFormField(
                    obscureText: !passwordConfirmVisible,
                    decoration: InputDecoration(
                        hintText: 'Konfirmasi Password',
                        hintStyle: heading6.copyWith(color: textGrey),
                        suffixIcon: IconButton(
                          color: textGrey,
                          splashRadius: 1,
                          icon: Icon(passwordConfirmVisible
                              ? Icons.visibility_outlined
                              : Icons.visibility_off_outlined),
                          onPressed: () {
                            setState(() {
                              passwordConfirmVisible = !passwordConfirmVisible;
                            });
                          },
                        ),
                        border: const OutlineInputBorder(
                            borderSide: BorderSide.none)),
                  ),
                )
              ],
            )),
            const SizedBox(
              height: 32,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const CustomCheckbox(),
                const SizedBox(
                  width: 12,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Dengan membuat akun, Anda menyetujui',
                      style: regular16pt.copyWith(color: textGrey),
                    ),
                    Text(
                      'Syarat & Ketentuan kami',
                      style: regular16pt.copyWith(color: primaryBlue),
                    )
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 32,
            ),
            const CustomPrimaryButton(
              buttonColor: primaryBlue,
              textValue: 'Register',
              textColor: Colors.white,
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Sudah Punya Akun? ',
                  style: regular16pt.copyWith(color: textGrey),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Login',
                    style: regular16pt.copyWith(color: primaryBlue),
                  ),
                )
              ],
            )
          ],
        ),
      )),
    );
  }
}
