import 'package:flutter/material.dart';
import 'package:shoes_ecommerce_app/screens/profile_screen.dart';

class AccountSettingsScreen extends StatefulWidget {
  const AccountSettingsScreen({super.key});

  @override
  _AccountSettingsScreenState createState() => _AccountSettingsScreenState();
}

class _AccountSettingsScreenState extends State<AccountSettingsScreen> {
  bool _faceID = false;
  bool _pushNotifications = true;
  bool _locationServices = true;
  bool _darkMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => const ProfileScreen()));
          },
          icon: const Icon(Icons.arrow_back_ios_new, color: Color(0xff1A2530)),
        ),
        title: const Text(
          'Account & Settings',
          style: TextStyle(
            color: Color(0xff1A2530),
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const SectionHeader(title: 'Account'),
          _buildAccountOption(
            context,
            icon: Icons.notifications,
            text: 'Notification Setting',
          ),
          _buildAccountOption(
            context,
            icon: Icons.local_shipping,
            text: 'Shipping Address',
          ),
          _buildAccountOption(
            context,
            icon: Icons.payment,
            text: 'Payment Info',
          ),
          _buildAccountOption(
            context,
            icon: Icons.delete,
            text: 'Delete Account',
          ),
          const SizedBox(height: 20),
          const SectionHeader(title: 'App Settings'),
          _buildAppSettingSwitch(
            'Enable Face ID For Log In',
            _faceID,
            (bool value) {
              setState(() {
                _faceID = value;
              });
            },
          ),
          _buildAppSettingSwitch(
            'Enable Push Notifications',
            _pushNotifications,
            (bool value) {
              setState(() {
                _pushNotifications = value;
              });
            },
          ),
          _buildAppSettingSwitch(
            'Enable Location Services',
            _locationServices,
            (bool value) {
              setState(() {
                _locationServices = value;
              });
            },
          ),
          _buildAppSettingSwitch(
            'Dark Mode',
            _darkMode,
            (bool value) {
              setState(() {
                _darkMode = value;
              });
            },
          ),
        ],
      ),
    );
  }

  Widget _buildAccountOption(BuildContext context,
      {required IconData icon, required String text}) {
    return ListTile(
      leading: Icon(icon, color: const Color(0xff5B9EE1)),
      title: Text(
        text,
        style: const TextStyle(
          color: Color(0xff1A2530),
          fontWeight: FontWeight.w400,
        ),
      ),
      trailing: const Icon(Icons.arrow_forward_ios, color: Colors.grey),
      onTap: () {},
    );
  }

  Widget _buildAppSettingSwitch(
      String text, bool value, Function(bool) onChanged) {
    return SwitchListTile(
      title: Text(
        text,
        style: const TextStyle(
          color: Color(0xff1A2530),
          fontWeight: FontWeight.w400,
        ),
      ),
      value: value,
      activeColor: const Color(0xff5B9EE1),
      onChanged: onChanged,
    );
  }
}

class SectionHeader extends StatelessWidget {
  final String title;

  const SectionHeader({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        title,
        style: const TextStyle(
          color: Color(0xff1A2530),
          fontSize: 18,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
