import 'package:flutter/material.dart';
import 'package:tugas4/data_situs.dart';
import 'package:image_network/image_network.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailSitus extends StatefulWidget {
  final DataSitus website;
  const DetailSitus({Key? key, required this.website}) : super(key: key);

  @override
  _DetailSitusState createState() => _DetailSitusState();
}

class _DetailSitusState extends State<DetailSitus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.website.title),
        backgroundColor: Colors.teal,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                elevation: 5,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: ImageNetwork(
                      image: widget.website.imageLink,
                      width : 300,
                      height: 300,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.teal,
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.website.title,
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Developer: " + widget.website.developer,
                      style: const TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Description",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      widget.website.description,
                      style: const TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        _launchUrl(widget.website.link);
                      },
                      child: const Text(
                        'Visit Website',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.teal,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 30,
                          vertical: 30,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    ElevatedButton(
                      onPressed: () async {
                        setState(() {
                          widget.website.isFavorite = !widget.website.isFavorite;
                        });
                      },
                      child: Text(
                        widget.website.isFavorite ? 'Delete from Favorite' : 'Add to Favorite',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: widget.website.isFavorite ? Colors.red : Colors.teal,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 30,
                          vertical: 30,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ]
                )
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _launchUrl(String url) async {
    final Uri _url = Uri.parse(url);
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $url');
    }
  }
}
