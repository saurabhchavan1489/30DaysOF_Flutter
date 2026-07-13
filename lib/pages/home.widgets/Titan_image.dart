import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/titan.dart';
import '../../widgets/home_detail_page.dart';

class TitanImage extends StatelessWidget {
  final Item item;

  const TitanImage({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
  children: [
    Hero(
      tag: item.id,
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          bottomLeft: Radius.circular(20),
        ),
        child: Image.network(
          item.image,
          width: 130,
          height: 170,
          fit: BoxFit.cover,
          loadingBuilder: (context, child, progress) {
            if (progress == null) return child;

            return const SizedBox(
              width: 130,
              height: 170,
              child: Center(
                child: CircularProgressIndicator(),
              ),
            );
          },
          errorBuilder: (context, error, stackTrace) {
            return Container(
              width: 130,
              height: 170,
              color: Colors.grey.shade200,
              child: const Icon(
                Icons.watch,
                size: 60,
                color: Colors.grey,
              ),
            );
          },
        ),
      ),
    ),

    Expanded(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              item.name,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 6),

            Text(
              item.desc,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey.shade600,
              ),
            ),

            const SizedBox(height: 10),

            Row(
              children: const [
                Icon(Icons.star, color: Colors.amber, size: 18),
                Icon(Icons.star, color: Colors.amber, size: 18),
                Icon(Icons.star, color: Colors.amber, size: 18),
                Icon(Icons.star, color: Colors.amber, size: 18),
                Icon(Icons.star_half, color: Colors.amber, size: 18),
                SizedBox(width: 6),
                Text(
                  "4.8",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 12),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "₹${item.price}",
                  style: const TextStyle(
                    color: Colors.deepPurple,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.favorite_border,
                        color: Colors.red,
                      ),
                    ),

                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepPurple,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text("Buy"),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  ],
);
  }

}