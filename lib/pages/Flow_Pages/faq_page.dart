import 'package:flutter/material.dart';
import 'package:hyolmo/constants/constant.dart'; // Make sure this contains AppStyles.primaryColor

class FAQPage extends StatelessWidget {
  const FAQPage({super.key});

  final List<Map<String, String>> faqItems = const [
    {
      "question": "How do I register as a member?",
      "answer":
          "Go to the Membership section and tap on 'Become a Member'. Fill in your details and submit the form.",
    },
    {
      "question": "Can I edit my profile information?",
      "answer":
          "Yes, you can update your username, email, password, and phone number in Account Settings.",
    },
    {
      "question": "How do I view member categories?",
      "answer":
          "From the Options menu, explore the various membership categories like Life, General, Household, and Institutional.",
    },
    {
      "question": "Can I see past committee members?",
      "answer":
          "Yes. Tap on 'Previous Committee' in the Membership section to view the list of past members.",
    },
    {
      "question": "What happens after I submit a membership form?",
      "answer":
          "Your application will be reviewed. You will receive a confirmation email once it is approved.",
    },
    {
      "question": "Can I delete my account?",
      "answer":
          "Yes. Go to Account Settings and select the 'Delete Account' option. Confirm to proceed.",
    },
    {
      "question": "How can I get support if I face an issue?",
      "answer":
          "Go to the Support page and fill out the form with your issue details. Our team will respond shortly.",
    },
    {
      "question": "Is my data secure on this app?",
      "answer":
          "Yes. We use standard encryption and follow best practices to keep your information secure.",
    },
    {
      "question": "Can I sign up multiple members from the same household?",
      "answer":
          "Yes. You can add multiple members using the 'Household Members' option in the Membership section.",
    },
    {
      "question": "What is the difference between Life and General Members?",
      "answer":
          "Life Members contribute a one-time fee and have permanent membership. General Members pay periodically.",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FAQs", style: TextStyle(color: Colors.white),),
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: AppStyles.primaryColor,
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: faqItems.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 8),
            elevation: 3,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: ExpansionTile(
              title: Text(faqItems[index]["question"]!),
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text(faqItems[index]["answer"]!),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
