import 'package:flutter/material.dart';
import 'package:task1/mood_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Good Afternoon\nSarina!",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 6),
            const Text(
              "How are you feeling today ?",
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                MoodItem("Happy", Icons.sentiment_satisfied, Color(0xFFE573A8)),
                MoodItem("Calm", Icons.self_improvement, Color(0xFF9FA8DA)),
                MoodItem("Manic", Icons.blur_on, Color(0xFFB2DFDB)),
                MoodItem(
                  "Angry",
                  Icons.sentiment_dissatisfied,
                  Color(0xFFE6A05E),
                ),
              ],
            ),

            const SizedBox(height: 30),

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: const Color(0xFFFFF4E8),
                borderRadius: BorderRadius.circular(24),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "1 on 1 Sessions",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "Let’s open up to the things that matter the most",
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(height: 14),
                        Row(
                          children: [
                            Text(
                              "Book Now",
                              style: TextStyle(
                                color: Colors.orange,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(width: 6),
                            Icon(
                              Icons.calendar_today,
                              size: 16,
                              color: Colors.orange,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Icon(
                    Icons.support_agent,
                    size: 70,
                    color: Color(0xFFF2B176),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: _topButton(
                    icon: Icons.menu_book_outlined,
                    title: "Journal",
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: _topButton(
                    icon: Icons.library_books_outlined,
                    title: "Library",
                  ),
                ),
              ],
            ),
            SizedBox(height: 24),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(24),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      '"It is better to conquer yourself than\n'
                      'to win a thousand battles"',
                      style: TextStyle(
                        fontSize: 16,
                        height: 1.5,
                        color: Colors.grey.shade700,
                      ),
                    ),
                  ),
                  SizedBox(width: 8),
                  Icon(
                    Icons.format_quote,
                    size: 32,
                    color: Colors.grey.shade300,
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              margin: EdgeInsets.all(16),
              padding: EdgeInsets.all(20),

              decoration: BoxDecoration(
                color: Color(0xFF6FA174),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Plan Expired",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "Get back chat access and\nsession credits",
                          style: TextStyle(color: Colors.white70, fontSize: 14),
                        ),
                        SizedBox(height: 14),
                        Row(
                          children: [
                            Text(
                              "Buy More",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(width: 6),
                            Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                              size: 18,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Opacity(
                    opacity: 0.25,
                    child: Icon(Icons.spa, size: 90, color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _topButton({required IconData icon, required String title}) {
  return Container(
    height: 56,
    decoration: BoxDecoration(
      color: Color(0xffEFECE7),
      borderRadius: BorderRadius.circular(28),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: Colors.brown),
        SizedBox(width: 8),
        Text(
          title,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.brown,
          ),
        ),
      ],
    ),
  );
}
