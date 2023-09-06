import 'dart:io';
import 'package:achadoseperdidosifce/app/ui/widgets/app_bar_leading_object_widget.dart';
import 'package:achadoseperdidosifce/app/ui/widgets/comment_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ObjectDetailPage extends StatefulWidget {
  const ObjectDetailPage({Key? key}) : super(key: key);

  @override
  State<ObjectDetailPage> createState() => _ObjectDetailPageState();
}

class _ObjectDetailPageState extends State<ObjectDetailPage> {
  int? id;
  File? image;

  @override
  void initState() {
    super.initState();
    id = Get.arguments as int?;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detalhes"),
        leading: AppBarLeadingObjectWidget(
          onTap: () => Navigator.pop(context),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                  const Color.fromRGBO(30, 112, 29, 1),
                ),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        16), // Ajuste o valor conforme necessário.
                  ),
                ),
              ),
              onPressed: () {},
              child: Text("Solicitar devolução"),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(
                child: image == null
                    ? Container(
                        height: 200,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(217, 217, 217, 1),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30),
                          ),
                        ),
                        child: const Icon(
                          Icons.image_outlined,
                          color: Colors.white,
                          size: 100,
                        ),
                      )
                    : ClipRRect(
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30),
                        ),
                        child: Image.file(
                          image!,
                          height: 200,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 30, right: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Garrafa azul marinho",
                      style: GoogleFonts.quicksand(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        textStyle:
                            const TextStyle(overflow: TextOverflow.ellipsis),
                      ),
                      maxLines: 2,
                    ),
                    const Padding(padding: EdgeInsets.symmetric(vertical: 2)),
                    Row(
                      children: [
                        const SizedBox(
                          width: 24,
                          height: 24,
                          child: CircleAvatar(
                            foregroundImage: NetworkImage(
                              "https://cdn.pixabay.com/photo/2012/04/14/14/16/cubes-34080_1280.png",
                            ),
                          ),
                        ),
                        const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5)),
                        Text(
                          "Lucas Sales",
                          style: GoogleFonts.quicksand(fontSize: 14),
                        ),
                        const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16)),
                        const Icon(Icons.schedule),
                        const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5)),
                        Text(
                          "12/03/2023",
                          style: GoogleFonts.quicksand(fontSize: 14),
                        ),
                      ],
                    ),
                    const Padding(padding: EdgeInsets.symmetric(vertical: 5)),
                    Text(
                      "Detalhes",
                      style: GoogleFonts.quicksand(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.black.withOpacity(0.4),
                      ),
                    ),
                    const Padding(padding: EdgeInsets.symmetric(vertical: 2)),
                    Text(
                      "Lorem ipsum dolor sit amet consectetur. Semper lorem senectus commodo in. Ornare et bibendum in egestas massa lacus nec velit duis. Ac euismod maecenas sagittis sapien amet.",
                      style: GoogleFonts.quicksand(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.black.withOpacity(0.8),
                      ),
                    ),
                    const Padding(padding: EdgeInsets.symmetric(vertical: 10)),
                    Container(
                      width: double.infinity,
                      height: 1,
                      color: const Color.fromRGBO(217, 217, 217, 1),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Comentários",
                          style: GoogleFonts.quicksand(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.black.withOpacity(0.4),
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.maps_ugc_outlined,
                            size: 24,
                            color: Color.fromRGBO(51, 51, 51, 1),
                          ),
                        )
                      ],
                    ),
                    const Padding(padding: EdgeInsets.symmetric(vertical: 5)),
                    Column(
                      children: [
                        for (int index = 0; index < 1; index++)
                          const Column(
                            children: [
                              CommentWidget(
                                photo:
                                "https://cdn.pixabay.com/photo/2015/01/08/18/30/entrepreneur-593371_1280.jpg",
                                name: "Lucas Sales",
                                description:
                                "Lorem ipsum dolor sit amet consectetur. Semper lorem senectus commodo in. Lorem ipsum dolor sit amet consectetur. Semper lorem senectus commodo in.",
                                hour: "18:00h",
                              ),
                              SizedBox(height: 15), // Espaço entre os CommentWidgets
                            ],
                          ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
