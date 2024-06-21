import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


Future<List<Photos>> getPhotos() async {
  final response = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/photos"));
  var data = jsonDecode(response.body.toString());

  if (response.statusCode == 200) {
    return data.map<Photos>((json) => Photos(
        title: json['title'], url: json['url'], id: json['id'])).toList();
  } else {
    throw Exception('Failed to load photos');
  }
}
class NotificationWidget extends StatelessWidget {
  final Future<List<Photos>> photosFuture;

  const NotificationWidget({super.key, required this.photosFuture});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
      child: Column(
        children: [
          Expanded(
            child: FutureBuilder(
              future: photosFuture,
              builder: (context, AsyncSnapshot<List<Photos>> snapshot) {
                if (snapshot.hasData) {
                  final photos = snapshot.data!;
                  return ListView.builder(
                    itemBuilder: (context, index) {
                      final photo = photos[index];
                      return ListTile(
                        //title: Text('${photo.id}'),
                        title: Text('TM Solutions',
                        style: GoogleFonts.oswald(
                          fontSize: 24,
                          fontWeight: FontWeight.bold
                        ),),
                        leading: CircleAvatar(
                          radius: 25,
                          backgroundImage: NetworkImage(photo.url),
                        ),
                        subtitle: Text(photo.title,
                        style: GoogleFonts.oswald(
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          color: Colors.grey.shade500,
                        ),),
                      );
                    },
                    itemCount: photos.length,
                  );
                } else if (snapshot.hasError) {
                  return Center(
                    child: Text('Error: ${snapshot.error}'),
                  );
                }
                return const Center(child: CircularProgressIndicator());
              },
            ),
          ),
        ],
      ),
    )
    );
  }
}

class Photos {
  String title, url;
  int id;
  Photos({required this.title, required this.id, required this.url});
}
