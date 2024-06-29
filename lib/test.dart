import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: DeliveryAddressSelection(),
      ),
    );
  }
}

class DeliveryAddressSelection extends StatefulWidget {
  @override
  _DeliveryAddressSelectionState createState() =>
      _DeliveryAddressSelectionState();
}

class _DeliveryAddressSelectionState extends State<DeliveryAddressSelection> {
  String selectedAddress = 'Home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Delivery Address')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            AddressTile(
              title: 'Home',
              address: '36 green way, Sunamganj',
              isSelected: selectedAddress == 'Home',
              onEdit: () {
                // Handle edit action
              },
              onSelect: () {
                setState(() {
                  selectedAddress = 'Home';
                });
              },
            ),
            SizedBox(height: 16),
            AddressTile(
              title: 'Office',
              address: 'Medical road, Halal lab, Sunamganj',
              isSelected: selectedAddress == 'Office',
              onEdit: () {
                // Handle edit action
              },
              onSelect: () {
                setState(() {
                  selectedAddress = 'Office';
                });
              },
            ),
            SizedBox(height: 16),
            AddressTile(
              title: 'School',
              address: 'Medical road, Halal lab, Sunamganj',
              isSelected: selectedAddress == 'School',
              onEdit: () {
                // Handle edit action
              },
              onSelect: () {
                setState(() {
                  selectedAddress = 'School';
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}

class AddressTile extends StatelessWidget {
  final String title;
  final String address;
  final bool isSelected;
  final VoidCallback onEdit;
  final VoidCallback onSelect;

  const AddressTile({
    required this.title,
    required this.address,
    required this.isSelected,
    required this.onEdit,
    required this.onSelect,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onSelect,
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          border: Border.all(color: isSelected ? Colors.orange : Colors.grey),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: isSelected ? Colors.orange : Colors.black,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(address),
                ],
              ),
            ),
            Column(
              children: [
                isSelected
                    ? Icon(Icons.check_circle, color: Colors.orange)
                    : Container(),
                SizedBox(height: 8),
                GestureDetector(
                  onTap: onEdit,
                  child: Text(
                    'Edit',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
