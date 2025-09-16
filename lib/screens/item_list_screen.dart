import 'package:flutter/material.dart';
import 'package:flutter_editor_lab/models/item.dart';


class ItemListScreen extends StatelessWidget {
  final String routeName = '/';
 
  const ItemListScreen({super.key});
 
  @override
  Widget build(BuildContext context) {
    List<Item> items = [
      // ตัวอย่างข้อมูล
      Item(id: '1', name: 'item 1', description: 'Item 1 description'),
      Item(id: '2', name: 'item 2', description: 'Item 2 description'),
      Item(id: '3', name: 'item 3', description: 'Item 3 description'),
    ]; // ดึงข้อมูลรายการสินค้าจาก Provider
    return Scaffold(
      appBar: AppBar(
        title: const Text('Item List'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return ListTile(
            title: Text(item.name),
            subtitle: Text(item.description),
            onTap: () {
              // นำทางไปยังหน้ารายละเอียดสินค้า
              // Navigator.push(context, MaterialPageRoute(builder: (context) => ItemDetailScreen(itemId: item.id)));
            },
          );
        },
      ),
    );
  }
}