import 'package:flutter/material.dart';

class MembersPage extends StatelessWidget {
  const MembersPage({super.key});

  @override
  Widget build(BuildContext context) {
    final members = [
      {
        'photo': 'assets/members/dawa_lama.jpg',
        'name': 'Sri Dawa Lama Hyolmo',
        'post': 'Chairman',
        'village': 'Jyalsa',
      },
      {
        'photo': 'assets/members/dawa_lama.jpg',
        'name': 'Shri Dawa Dorje Lama Hyolmo',
        'post': 'P.Vice President',
        'village': 'Ningale',
      },
      {
        'photo': 'assets/members/dawa_lama.jpg',
        'name': 'Mr. Keshang Lama Hyolmo',
        'post': 'D. Vice-President',
        'village': 'Sermathang',
      },
      {
        'photo': 'assets/members/dawa_lama.jpg',
        'name': 'Mr. Nurpu Sherpa Hyolmo',
        'post': 'Treasurer',
        'village': 'Gangkharka',
      },
      {
        'photo': 'assets/members/dawa_lama.jpg',
        'name': 'Mr. Sonam Sherpa Hyolmo',
        'post': 'Secretary',
        'village': 'Likharka',
      },
      {
        'photo': 'assets/members/dawa_lama.jpg',
        'name': 'Shri Swa Khadka Bahadur Lama',
        'post': 'Joint Secretary',
        'village': 'Banskharka, Jorpati',
      },
      {
        'photo': 'assets/members/dawa_lama.jpg',
        'name': 'Mr. Pasang Gyalzen Hyolmo',
        'post': 'Member',
        'village': 'one by one',
      },
      {
        'photo': 'assets/members/dawa_lama.jpg',
        'name': 'Mr. Norsang Lama Hyolmo',
        'post': 'Member',
        'village': 'Palchoc',
      },
      {
        'photo': 'assets/members/dawa_lama.jpg',
        'name': 'Sri Dawa Sangpo Lama Hyolmo',
        'post': 'Member',
        'village': 'tasks',
      },
      {
        'photo': 'assets/members/dawa_lama.jpg',
        'name': 'Shri Bir Bahadur Lama Hyolmo',
        'post': 'Member',
        'village': 'Birkharka',
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Organization Members'),
      ),
      body: Column(
        children: [
          // Search bar
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search for members...',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
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
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(member['photo']!),
                      radius: 25,
                    ),
                    title: Text(member['name']!),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Post: ${member['post']}'),
                        Text(
                          'Village: ${member['village']}',
                          style:
                              TextStyle(color: Colors.grey[600], fontSize: 12),
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
        title: Text(member['name']!),
      ),
      body: Column(
        children: [
          // Top section with image
          Container(
            color: Colors.grey[200],
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: CircleAvatar(
              backgroundImage: AssetImage(member['photo']!),
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
                      const SizedBox(height: 8),
                      Text(
                        'Post: ${member['post']!}',
                        style: const TextStyle(fontSize: 16),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Village: ${member['village']!}',
                        style: const TextStyle(fontSize: 16),
                      ),
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

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MembersPage(),
  ));
}