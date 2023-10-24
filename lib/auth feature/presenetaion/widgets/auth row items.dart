import 'package:flutter/material.dart';

import '../../../core/styles/text styles.dart';

class LoginRowItem extends StatelessWidget {
  const LoginRowItem({
    super.key,
    required this.isLogin,
  });
  final bool isLogin;
  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: isLogin ? 1 : 0.5,
      duration: const Duration(seconds: 1),
      child: Column(
        children: [
          const Text(
            'Log in',
            style: TextStyles.style30Bold,
          ),
          isLogin
              ? const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.circle,
                    color: Colors.black,
                    size: 12,
                  ),
                )
              : const Padding(
                  padding: EdgeInsets.all(10.0),
                ),
        ],
      ),
    );
  }
}

class SignupRowItem extends StatelessWidget {
  const SignupRowItem({
    super.key,
    required this.isLogin,
  });
  final bool isLogin;
  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: isLogin ? 1 : 0.5,
      duration: const Duration(seconds: 1),
      child: Column(
        children: [
          const Text(
            'Sign up',
            style: TextStyles.style30Bold,
          ),
          isLogin
              ? const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.circle,
                    color: Colors.black,
                    size: 12,
                  ),
                )
              : const Padding(
                  padding: EdgeInsets.all(10.0),
                ),
        ],
      ),
    );
  }
}
