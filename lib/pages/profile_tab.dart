import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:queezy/services/auth_service.dart';
import 'package:queezy/utils/spacing.dart';

import '../widgets/primary_button.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Profile'),
            verticalSpacing(space: 24),
            PrimaryButton(
                title: 'Logout',
                onPressed: () async {
                  context.read<AuthService>().logout();
                  Navigator.pushReplacementNamed(context, '/login_or_signup');
                })
          ],
        ),
      ),
    );
  }
}
