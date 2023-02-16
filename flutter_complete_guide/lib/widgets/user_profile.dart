import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  UserProfile({super.key});

  final List<MenuRowData> firstMenuRow = [
    MenuRowData(text: 'Избранное', icon: Icons.favorite),
    MenuRowData(text: 'Звонки', icon: Icons.call),
    MenuRowData(text: 'устройства', icon: Icons.computer),
    MenuRowData(text: 'Говно', icon: Icons.shield_moon_outlined),
  ];

  final List<MenuRowData> secondMenuRow = [
    MenuRowData(text: 'Звуки', icon: Icons.surround_sound),
    MenuRowData(text: 'Кофидециальность', icon: Icons.privacy_tip),
    MenuRowData(text: 'Память', icon: Icons.memory),
    MenuRowData(text: 'Оформление', icon: Icons.app_registration),
    MenuRowData(text: 'Язык', icon: Icons.language),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Center(child: Text('Settings')),
      ),
      body: Container(
          width: double.infinity,
          child: ListView(
            children: [
              _UserInfo(),
              SizedBox(height: 20),
              _MenuWidget(
                menuRow: firstMenuRow,
              ),
              SizedBox(height: 2),
              _MenuWidget(
                menuRow: secondMenuRow,
              ),
            ],
          )),
    );
  }
}

class MenuRowData {
  final IconData icon;
  final String text;

  MenuRowData({required this.icon, required this.text});
}

class _MenuWidget extends StatelessWidget {
  final List<MenuRowData> menuRow;
  const _MenuWidget({super.key, required this.menuRow});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      child: Column(
          children: menuRow.map((el) => _MenuWidgetRow(data: el)).toList()),
    );
  }
}

class _MenuWidgetRow extends StatelessWidget {
  MenuRowData data;
  _MenuWidgetRow({required this.data});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      child: Row(
        children: [
          Icon(data.icon),
          SizedBox(width: 10),
          Expanded(child: Text(data.text)),
          Icon(Icons.chevron_right_sharp),
        ],
      ),
    );
  }
}

class _UserInfo extends StatelessWidget {
  const _UserInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            // margin: EdgeInsets.only(left: 20, right: 20),
            color: Colors.white,
            child: Column(
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
            )),
        Positioned(
          top: 25,
          right: 25,
          child: Text(
            'Change',
            style: TextStyle(color: Colors.amber, fontSize: 30),
          ),
        )
      ],
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
