
import 'package:bookly_app/features/Search/Presenation/Views/Widget/CustomSellerSearch.dart';
import 'package:flutter/material.dart';

class SearchBody extends StatelessWidget {
  const SearchBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(
                        color: Colors.white
                    )
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                    color: Colors.white
                  )
                ),
                hintText: 'Search',
                suffixIcon: const Icon(Icons.search,color: Colors.white,)
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Expanded(child: CustomSellerSearch())

          ],
        ),
      ),
    );
  }
}
