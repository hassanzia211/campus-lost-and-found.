import 'package:flutter/material.dart';

void main() {
  runApp(const LostFoundApp());
}

class LostFoundApp extends StatelessWidget {
  const LostFoundApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Campus Lost & Found',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

class LostItem {
  final String name;
  final String location;
  final String status;
  final String description;
  final IconData icon;

  const LostItem({
    required this.name,
    required this.location,
    required this.status,
    required this.description,
    required this.icon,
  });
}

const List<LostItem> items = [
  LostItem(
    name: 'Blue Backpack',
    location: 'Library',
    status: 'Lost',
    description: 'A blue backpack with two main compartments.',
    icon: Icons.backpack,
  ),
  LostItem(
    name: 'Student ID Card',
    location: 'Cafeteria',
    status: 'Found',
    description: 'A student identification card found near the cafeteria.',
    icon: Icons.badge,
  ),
  LostItem(
    name: 'Wireless Earbuds',
    location: 'Computer Lab',
    status: 'Lost',
    description: 'A black wireless earbuds case.',
    icon: Icons.headphones,
  ),
  LostItem(
    name: 'Water Bottle',
    location: 'Sports Ground',
    status: 'Found',
    description: 'A silver stainless steel water bottle.',
    icon: Icons.water_drop,
  ),
  LostItem(
    name: 'Notebook',
    location: 'Room 204',
    status: 'Lost',
    description: 'A green notebook containing class notes.',
    icon: Icons.menu_book,
  ),
  LostItem(
    name: 'Mobile Phone',
    location: 'Auditorium',
    status: 'Found',
    description: 'A mobile phone found after a university event.',
    icon: Icons.phone_android,
  ),
  LostItem(
    name: 'Wallet',
    location: 'Main Gate',
    status: 'Lost',
    description: 'A brown wallet with personal cards.',
    icon: Icons.account_balance_wallet,
  ),
  LostItem(
    name: 'Calculator',
    location: 'Engineering Block',
    status: 'Found',
    description: 'A scientific calculator found outside a classroom.',
    icon: Icons.calculate,
  ),
];

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Campus Lost & Found'),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];

          return Card(
            margin: const EdgeInsets.only(bottom: 12),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.indigo.shade50,
                child: Icon(item.icon, color: Colors.indigo),
              ),
              title: Text(
                item.name,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Location: ${item.location}'),
                  Text(
                    'Status: ${item.status}',
                    style: TextStyle(
                      color: item.status == 'Lost' ? Colors.red : Colors.green,
                    ),
                  ),
                ],
              ),
              trailing: IconButton(
                icon: const Icon(Icons.arrow_forward_ios),
                tooltip: 'View details',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsScreen(item: item),
                    ),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}

class DetailsScreen extends StatelessWidget {
  final LostItem item;

  const DetailsScreen({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Item Details'),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Icon(item.icon, size: 100, color: Colors.indigo),
            ),
            const SizedBox(height: 24),
            Text(
              item.name,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            Text('Location: ${item.location}'),
            const SizedBox(height: 8),
            Text('Status: ${item.status}'),
            const SizedBox(height: 16),
            const Text(
              'Description',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(item.description),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Back to Items'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
