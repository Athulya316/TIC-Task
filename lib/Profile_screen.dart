import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orange,
        onPressed: () {},
        child: const Icon(Icons.edit, color: Colors.white),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16),

              const Text(
                "Wellness Hub",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 16),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: const [
                    _TabChip(title: "Trending", isActive: true),
                    _TabChip(title: "Relationship"),
                    _TabChip(title: "Self Care"),
                  ],
                ),
              ),

              const SizedBox(height: 15),

              _postItem(
                name: "Coal Dingo",
                time: "just now",
                likes: "2",
                comments: null,
                likeColor: Colors.orange,
              ),

              _postItem(
                name: "Pigeon Car",
                time: "3 hrs ago",
                likes: "12",
                comments: "2",
              ),

              _postItem(
                name: "Pigeon Car",
                time: "1 hr ago",
                likes: "12",
                comments: "2",
              ),

              _postItem(
                name: "Coal Dingo",
                time: "2 min ago",
                likes: "12",
                comments: "2",
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _postItem({
    required String name,
    required String time,
    required String likes,
    String? comments,
    Color likeColor = Colors.grey,
  }) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CircleAvatar(
              radius: 22,
              backgroundImage: AssetImage("assets/User Icon1.jpeg"),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        name,
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(width: 6),
                      Text(
                        "• $time",
                        style: const TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 6),
                  const Text(
                    "Is there a therapy which can cure crossdressing & bdsm compulsion?",
                    style: TextStyle(fontSize: 15, height: 1.4),
                  ),
                ],
              ),
            ),
          ],
        ),

        const SizedBox(height: 14),

        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 50),
              child: Icon(
                Icons.thumb_up_alt_outlined,
                size: 18,
                color: likeColor,
              ),
            ),
            const SizedBox(width: 6),
            Text(likes, style: const TextStyle(fontSize: 13)),
            const SizedBox(width: 20),
            const Icon(Icons.chat_bubble_outline, size: 18, color: Colors.grey),
            if (comments != null) ...[
              const SizedBox(width: 4),
              Text(comments, style: const TextStyle(fontSize: 13)),
            ],
            const Spacer(),
            const Icon(Icons.share, size: 18, color: Colors.grey),
          ],
        ),

        const SizedBox(height: 12),
        Divider(color: Colors.grey.shade300),
        const SizedBox(height: 15),
      ],
    );
  }
}

class _TabChip extends StatelessWidget {
  final String title;
  final bool isActive;

  const _TabChip({required this.title, this.isActive = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 12),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      decoration: BoxDecoration(
        color: isActive ? Colors.orange : Colors.grey.shade200,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: isActive ? Colors.white : Colors.grey.shade600,
        ),
      ),
    );
  }
}
