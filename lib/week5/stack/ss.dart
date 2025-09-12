// import 'package:flutter/material.dart';

// void main() {
//   runApp(MaterialApp(
//     home: ListWidget(),
//     debugShowCheckedModeBanner: false,
//   ));
// }

// class ListWidget extends StatelessWidget {
//   const ListWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color.fromARGB(255, 255, 255, 255),
//       appBar: AppBar(
//         title: Text('Simple Row/Col Example'),
//         centerTitle: true,
//       ),
//       body: Column(
//         children: [
//           _buildRowItem(
//             icon: Icons.person,
//             title: 'John Doe',
//             subtitle: 'Software Engineer',
//           ),
//            Divider(height: 1),
//           _buildRowItem(
//             icon: Icons.email,
//             title: 'Email',
//             subtitle: 'john.doe@example.com',
//             showArrow: true,
//           ),
//            Divider(height: 1),
//           _buildRowItem(
//             icon: Icons.phone,
//             title: 'Phone',
//             subtitle: '+1 234 567 890',
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildRowItem({
//     required IconData icon,
//     required String title,
//     required String subtitle,
//     bool showArrow = false,
//   }) {
//     return Padding(
//       padding: const EdgeInsets.all(12.0),
//       child: Row(
//         children: [
//           Icon(icon, size: 28),
//           SizedBox(width: 16),
//           Expanded(child: _buildVerticalText(title, subtitle)),
//           if (showArrow) Icon(Icons.arrow_forward_ios, size: 16),
//         ],
//       ),
//     );
//   }

//   Widget _buildVerticalText(String title, String subtitle) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(title, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
//         SizedBox(height: 4),
//         Text(subtitle),
//       ],
//     );
//   }
// }
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(home: StackSample()));
}

class StackSample extends StatelessWidget {
  const StackSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Simple rox / Col Example"),
        backgroundColor:
            const Color.fromARGB(255, 160, 233, 241), // Matching the gradient
      ),
      // Using a light grey background to make the card stand out.
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Column(
        children: [
          
          const SizedBox(height: 16),
          // Profile Name and Title row
          ListTile(
            leading: const Icon(Icons.person, size: 32),
            title: const Text(
              'Phoeung Sreymean',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            subtitle: const Text('Forntend dev'),
          ),
          const Divider(),
          // Email row
          ListTile(
            leading: const Icon(Icons.email, size: 28),
            title: const Text(
              'Email',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: const Text('phoeung Sreymean'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {
              // Handle tap
            },
          ),
          const Divider(),
          // Phone row
          ListTile(
            leading: const Icon(Icons.phone, size: 28),
            title: const Text(
              'Phone',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: const Text('+10 98 38 90'),
          ),
          const Divider(),
          // Disabled row
          Container(
            color: const Color.fromARGB(255, 204, 204, 208),
            child: ListTile(
              leading: Icon(Icons.lock, color: Color.fromARGB(255, 74, 75, 74), size: 28),
              title: const Text(
                'Account (Disabled)',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 20, 25, 20),
                )
              ),
              subtitle: const Text(
                'This option is not available',
                style: TextStyle(
                  color:Color.fromARGB(255, 24, 27, 25),
                ),
              ),
              enabled: false,
            ),
          ),
        ],
      ),
    );
  }
}
