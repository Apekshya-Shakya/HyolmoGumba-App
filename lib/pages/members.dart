import 'package:flutter/material.dart';
import 'package:hyolmo/constants/constant.dart';

class MembersPage extends StatelessWidget {
  const MembersPage({super.key});

  @override
  Widget build(BuildContext context) {
    final members = [
      {
        'photo': 'assets/members/dawa_lama.jpg',
        'name': 'Sri Dawa Lama ',
        'post': 'Chairman',
        'address': 'Jyalsa',
        'phone': '+977 9876445652',
        'type': 'Life',
      },
      {
        'photo': 'assets/members/dawa_lama.jpg',
        'name': 'Shri Dawa Dorje Lama ',
        'post': 'P.Vice President',
        'address': 'Jyalsa',
        'phone': '+977 9876445652',
        'type': 'Life',
      },
      {
        'photo': 'assets/members/dawa_lama.jpg',
        'name': 'Mr. Keshang Lama ',
        'post': 'D. Vice-President',
        'address': 'Jyalsa',
        'phone': '+977 9876445652',
        'type': 'Life',
      },
      {
        'photo': 'assets/members/dawa_lama.jpg',
        'name': 'Mr. Nurpu Sherpa ',
        'post': 'Treasurer',
        'address': 'Jyalsa',
        'phone': '+977 9876445652',
        'type': 'Life',
      },
      {
        'photo': 'assets/members/dawa_lama.jpg',
        'name': 'Mr. Sonam Sherpa ',
        'post': 'Secretary',
        'address': 'Jyalsa',
        'phone': '+977 9876445652',
        'type': 'Life',
      },
      {
        'photo': 'assets/members/dawa_lama.jpg',
        'name': 'Shri Swa Khadka Bahadur Lama',
        'post': 'Joint Secretary',
        'address': 'Jyalsa',
        'phone': '+977 9876445652',
        'type': 'Life',
      },
      {
        'photo': 'assets/members/dawa_lama.jpg',
        'name': 'Mr. Pasang Gyalzen ',
        'post': 'Member',
        'address': 'Jyalsa',
        'phone': '+977 9876445652',
        'type': 'Life',
      },
      {
        'photo': 'assets/members/dawa_lama.jpg',
        'name': 'Mr. Norsang Lama ',
        'post': 'Member',
        'address': 'Jyalsa',
        'phone': '+977 9876445652',
        'type': 'Life',
      },
      {
        'photo': 'assets/members/dawa_lama.jpg',
        'name': 'Sri Dawa Sangpo Lama ',
        'post': 'Member',
        'address': 'Jyalsa',
        'phone': '+977 9876445652',
        'type': 'Life',
      },
      {
        'photo': 'assets/members/dawa_lama.jpg',
        'name': 'Shri Bir Bahadur Lama ',
        'post': 'Member',
        'address': 'Jyalsa',
        'phone': '+977 9876445652',
        'type': 'Life',
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Organization Members',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: AppStyles.primaryColor,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      backgroundColor: AppStyles.backgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            // // Search bar
            // const Padding(
            //   padding: EdgeInsets.all(8.0),
            //   child: TextField(
            //     decoration: InputDecoration(
            //       hintText: 'Search',
            //       hintStyle: TextStyle(color: Colors.grey),
            //       suffixIcon: Icon(Icons.search),
            //       filled: true,
            //       fillColor: Colors.white,
            //       border: OutlineInputBorder(
            //         borderRadius: BorderRadius.all(Radius.circular(5)),
            //         borderSide: BorderSide.none,
            //       ),
            //     ),
            //   ),
            // ),
            // Members list
            Expanded(
              child: ListView.builder(
                itemCount: members.length,
                itemBuilder: (context, index) {
                  final member = members[index];
                  return Card(
                    margin:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    child: ListTile(
                      leading: const CircleAvatar(
                        backgroundImage: AssetImage("assets/images/gumba2.jpg"),
                        radius: 25,
                      ),
                      title: Text(member['name']!),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Post: ${member['post']}'),
                          Text(
                            'Address: ${member['address']}',
                            style: TextStyle(
                                color: Colors.grey[600], fontSize: 12),
                          ),
                          Text('Phone number: ${member['phone']}'),
                          Text(
                            'Membership Type: ${member['type']}',
                            style: TextStyle(
                                color: Colors.grey[600], fontSize: 12),
                          ),
                        ],
                      ),
                      isThreeLine: true,
                      trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                MemberDetailPage(member: member),
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MemberDetailPage extends StatelessWidget {
  final Map<String, String> member;

  const MemberDetailPage({super.key, required this.member});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          member['name']!,
          style: const TextStyle(color: Colors.white),
        ),
        backgroundColor: AppStyles.primaryColor,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Column(
        children: [
          // Top section with image
          Container(
            color: AppStyles.backgroundColor,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: const CircleAvatar(
              backgroundImage: AssetImage("assets/images/gumba2.jpg"),
              radius: 50,
            ),
          ),
          // Bottom section with details
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Card(
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Name: ${member['name']!}',
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'Post: ${member['post']!}',
                        style: const TextStyle(fontSize: 16),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'Address: ${member['address']!}',
                        style: const TextStyle(fontSize: 16),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'Phone number: ${member['phone']!}',
                        style: const TextStyle(fontSize: 16),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'Membership Type: ${member['type']!}',
                        style: const TextStyle(fontSize: 16),
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// void main() {
//   runApp(const MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: MembersPage(),
//   ));
// }