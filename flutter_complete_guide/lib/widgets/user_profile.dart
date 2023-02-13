import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Settings')),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 30,
            ),
            _AvatarWidget(),
            SizedBox(
              height: 30,
            ),
            _UserNameWidget(),
            SizedBox(
              height: 20,
            ),
            _UserPhoneWidget(),
            SizedBox(
              height: 20,
            ),
            _UserEmailWidget(),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}

class _UserEmailWidget extends StatelessWidget {
  const _UserEmailWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text('ivarboneless@gmail.com');
  }
}

class _UserPhoneWidget extends StatelessWidget {
  const _UserPhoneWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text('+79092902290');
  }
}

class _UserNameWidget extends StatelessWidget {
  const _UserNameWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Ivar Boneless',
          style: TextStyle(
            color: Colors.black,
            backgroundColor: Colors.orange,
            fontSize: 30,
            fontWeight: FontWeight.w700,
            fontFamily: 'Rubik',
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Text('son of Ragnar'),
      ],
    );
  }
}

class _AvatarWidget extends StatelessWidget {
  const _AvatarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 120,
      child: Placeholder(),
    );
  }
}
