import 'package:achadoseperdidosifce/app/data/model/found_object_model.dart';
import 'package:achadoseperdidosifce/app/utils/variaveis.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailObject extends StatelessWidget {
  final FoundObjectModel object;
  final String tagHero;
  const DetailObject({super.key, required this.object, required this.tagHero});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            height: Variavel.alturaDisponivel(context),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  height: Variavel.alturaDisponivel(context) * 0.4,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(
                        45,
                      ),
                    ),
                  ),
                  child: Hero(
                    tag: tagHero,
                    child: FadeInImage(
                      placeholder: const AssetImage("assets/image/fundo.png"),
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        object.imageUrl,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 15,
                        horizontal: 25,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            object.name,
                            maxLines: 3,
                            style: GoogleFonts.quicksand(
                              textStyle: const TextStyle(
                                overflow: TextOverflow.ellipsis,
                              ),
                              fontSize: 22,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            height: 30,
                            width: MediaQuery.of(context).size.width * 0.1,
                            child: Row(
                              children: [
                                const CircleAvatar(
                                  radius: 10,
                                  backgroundImage: NetworkImage(
                                    "https://cdn.jornaldebrasilia.com.br/wp-content/uploads/2022/09/23084137/Brad-Pitt-1-e1630839679752-1200x675-1.jpg",
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 4,
                                  ),
                                  child: SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width * 0.3,
                                    child: Text(
                                      "Lucas Sales",
                                      style: GoogleFonts.quicksand(
                                        textStyle: const TextStyle(
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ),
                                const Padding(padding: EdgeInsets.all(4)),
                                const Icon(
                                  Icons.access_time_outlined,
                                  size: 20,
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2.0),
                                    child: Text(
                                      object.date,
                                      style: GoogleFonts.quicksand(
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            "Detalhes",
                            style: GoogleFonts.quicksand(
                              fontSize: 20,
                              fontWeight: FontWeight.w200,
                            ),
                          ),
                          Expanded(
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 10,
                                ),
                                child: Text(
                                  object.description,
                                  textAlign: TextAlign.justify,
                                  style: GoogleFonts.quicksand(
                                    height: 1.2,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 45,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                    18,
                                  ),
                                ),
                                textStyle: GoogleFonts.quicksand(
                                    fontSize: 16, fontWeight: FontWeight.w600),
                              ),
                              onPressed: () {},
                              child: const Text(
                                "Solicitar devolução",
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
