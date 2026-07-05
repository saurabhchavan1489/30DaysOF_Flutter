import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/titan.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.all(10),

        // Product Image
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.network(
            item.image,
            width: 70,
            height: 70,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) {
              return const Icon(
                Icons.watch,
                size: 60,
                color: Colors.grey,
              );
            },
          ),
        ),

        // Product Name
        title: Text(
          item.name,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),

        // Description
        subtitle: Text(
          item.desc,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),

        // Price
        trailing: Text(
          "₹${item.price}",
          style: const TextStyle(
            fontSize: 18,
            color: Colors.deepPurple,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
