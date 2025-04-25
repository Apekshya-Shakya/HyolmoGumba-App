import 'package:flutter/material.dart';
import 'package:hyolmo/constants/constant.dart';

class AccountSettingsPage extends StatefulWidget {
  const AccountSettingsPage({super.key});

  @override
  State<AccountSettingsPage> createState() => _AccountSettingsPageState();
  
}

class _AccountSettingsPageState extends State<AccountSettingsPage> {
  String _username = "Dawa Dorje Sherpa";
  String _email = "dawadsherpa@gmail.com";
  String _password = "********";
  String _phone = "+977-98XXXXXXXX";

  void _confirmDelete(String field, VoidCallback onConfirmed) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text("Delete $field"),
        content: Text("Are you sure you want to delete your $field?"),
        actions: [
          TextButton(
            child: const Text("Cancel"),
            onPressed: () => Navigator.pop(ctx),
          ),
          ElevatedButton(
            // style: ElevatedButton.styleFrom(),
            child: const Text("Delete"),
            onPressed: () {
              Navigator.pop(ctx);
              onConfirmed();
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("$field deleted")),
              );
            },
          ),
        ],
      ),
    );
  }

  void _editOrDeleteField(String field, String currentValue, Function(String) onEdit, VoidCallback onDelete) {
    final TextEditingController controller = TextEditingController(text: currentValue);

    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text("Edit $field"),
        content: TextField(
          controller: controller,
          obscureText: field == "Password",
          decoration: InputDecoration(hintText: "Enter new $field"),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(ctx);
              _confirmDelete(field, onDelete);
            },
            child: const Text("Delete", style: TextStyle(color: Colors.red)),
          ),
          TextButton(
            onPressed: () => Navigator.pop(ctx),
            child: const Text("Cancel"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(ctx);
              onEdit(controller.text.trim());
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("$field updated")),
              );
            },
            child: const Text("Save"),
          ),
        ],
      ),
    );
  }

  Widget _buildSettingItem({
    required String label,
    required String value,
    required IconData icon,
    required Function() onTap,
  }) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      margin: const EdgeInsets.symmetric(vertical: 8),
      elevation: 2,
      child: ListTile(
        leading: Icon(icon, color: Theme.of(context).primaryColor),
        title: Text(label),
        subtitle: Text(value),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
        onTap: onTap,
      ),
    );
  }

  void _editUsername() {
    _editOrDeleteField(
      "Username",
      _username,
      (val) => setState(() => _username = val),
      () => setState(() => _username = ""),
    );
  }

  void _editEmail() {
    _editOrDeleteField(
      "Email",
      _email,
      (val) => setState(() => _email = val),
      () => setState(() => _email = ""),
    );
  }

  void _editPassword() {
    _editOrDeleteField(
      "Password",
      "",
      (val) => setState(() => _password = "********"),
      () => setState(() => _password = ""),
    );
  }

  void _editPhone() {
    _editOrDeleteField(
      "Phone Number",
      _phone,
      (val) => setState(() => _phone = val),
      () => setState(() => _phone = ""),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Account Settings", style: TextStyle(color: Colors.white),),
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: AppStyles.primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            _buildSettingItem(
              label: "Username",
              value: _username.isNotEmpty ? _username : "Not set",
              icon: Icons.person,
              onTap: _editUsername,
            ),
            _buildSettingItem(
              label: "Email",
              value: _email.isNotEmpty ? _email : "Not set",
              icon: Icons.email,
              onTap: _editEmail,
            ),
            _buildSettingItem(
              label: "Password",
              value: _password.isNotEmpty ? _password : "Not set",
              icon: Icons.lock,
              onTap: _editPassword,
            ),
            _buildSettingItem(
              label: "Phone Number",
              value: _phone.isNotEmpty ? _phone : "Not set",
              icon: Icons.phone,
              onTap: _editPhone,
            ),
          ],
        ),
      ),
    );
  }
}
