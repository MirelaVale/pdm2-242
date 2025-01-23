import 'package:flutter/material.dart';

class EstudantesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Estudantes'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          // Estudante 1
          _buildStudentCard(
            'https://www.example.com/photo1.jpg', // URL da foto
            'Eduarda Fonteles',
            'Período: 5º Semestre',
          ),
          SizedBox(height: 20),
          // Estudante 2
          _buildStudentCard(
            'https://www.example.com/photo2.jpg', // URL da foto
            'Mirela Vale',
            'Período: 5º Semestre',
          ),
        ],
      ),
    );
  }

  Widget _buildStudentCard(String imageUrl, String name, String period) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Foto do estudante
            CircleAvatar(
              radius: 40,
              backgroundImage: NetworkImage(imageUrl),
            ),
            SizedBox(width: 16),
            // Informações sobre o estudante
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 4),
                Text(period),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
