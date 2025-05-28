import 'package:provider/provider.dart';
import '../providers/favorites_provider.dart';
import 'package:flutter/material.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final favoritesProvider = Provider.of<FavoritesProvider>(context);
    final favs = favoritesProvider.favorites;

    if (favs.isEmpty) {
      return Scaffold(
        appBar: AppBar(title: const Text("Favorites")),
        body: const Center(child: Text("No favorite items.")),
      );
    }
    final entries = favs.entries.toList(); // Convert map to list for display

    return Scaffold(
      appBar: AppBar(title: const Text("Favorites")),
      body: ListView.builder(
        itemCount: entries.length,
        itemBuilder: (context, index) {
          final docId = entries[index].key;
          final product = entries[index].value;

          return ListTile(
            leading: Image.network(
              product['imageurl'] ?? '',
              width: 50,
              height: 50,
              fit: BoxFit.cover,
              errorBuilder: (_, __, ___) => const Icon(Icons.broken_image),
            ),
            title: Text(product['name'] ?? ''),
            subtitle: Text("\$${(product['price'] ?? 0).toStringAsFixed(2)}"),
            trailing: IconButton(
              icon: const Icon(Icons.delete),
              onPressed: () {
                favoritesProvider.toggleFavorite(docId, product);
              },
            ),
          );
        },
      ),
    );
  }
}
