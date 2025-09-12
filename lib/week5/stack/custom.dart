import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: ListWidget(),
    debugShowCheckedModeBanner: false,
  ));
}

class ListWidget extends StatelessWidget {
  const ListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 250, 250, 250),
      appBar: AppBar(
        title: Text('Simple Row/Col Example'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          _buildProfileRow(),
          Divider(height: 1),
          _buildInfoRow(
            icon: Icons.email,
            title: 'Email',
            subtitle: 'john.doe@example.com',
            showArrow: true,
          ),
          Divider(height: 1),
          _buildInfoRow(
            icon: Icons.phone,
            title: 'Phone',
            subtitle: '+1 234 567 890',
          ),
          Divider(height: 1),
          _buildInfoRow(
            icon: Icons.lock,
            title: 'Account (Disabled)',
            subtitle: 'This option is not available',
            enabled: false,
          ),
        ],
      ),
    );
  }
  Widget _buildProfileRow() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Icon(Icons.person, size: 30),
          SizedBox(width: 16),
          _buildVerticalText(title: 'John Doe', subtitle: 'Software Engineer'),
        ],
      ),
    );
  }
  Widget _buildInfoRow({
    required IconData icon,
    required String title,
    required String subtitle,
    bool showArrow = false,
    bool enabled = true,
  }) {
    Color textColor = enabled ? Colors.black : Colors.grey;

    return Container(
      color: enabled ? Colors.white : Colors.grey[300],
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        children: [
          Icon(icon, size: 28, color: textColor),
          SizedBox(width: 16),
          Expanded(
            child: _buildVerticalText(title: title, subtitle: subtitle, textColor: textColor),
          ),
          if (showArrow)
            Icon(Icons.arrow_forward_ios, size: 16, color: textColor),
        ],
      ),
    );
  }
  Widget _buildVerticalText({
    required String title,
    required String subtitle,
    Color textColor = Colors.black,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold, color: textColor, fontSize: 16),
        ),
        SizedBox(height: 4),
        Text(
          subtitle,
          style: TextStyle(color: textColor),
        ),
      ],
    );
  }
}
