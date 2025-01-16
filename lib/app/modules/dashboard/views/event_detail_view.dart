import 'package:flutter/material.dart';

import 'package:get/get.dart';

class EventDetailView extends GetView {
  const EventDetailView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50],
      appBar: AppBar(
        backgroundColor: Colors.pink[50],
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            // Aksi kembali
          },
        ),
        title: const Text(
          "pesta rakyat racamanyar",
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Gambar
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                'https://via.placeholder.com/400x200', // Ganti dengan URL gambar Anda
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 16),
            // Informasi
            const Text(
              "Dibuat Oleh andika",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              "disini deskripsi",
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 16),
            // Lokasi
            Row(
              children: const [
                Icon(Icons.location_pin, color: Colors.red),
                SizedBox(width: 8),
                Text(
                  "rancamanyar",
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
