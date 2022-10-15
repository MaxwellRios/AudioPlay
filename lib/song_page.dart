import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:music_play/song_box.dart' show SongBox;
import 'package:percent_indicator/linear_percent_indicator.dart';

class SongPage extends StatelessWidget {
  const SongPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: [
              //Botão voltar e Menu
              SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(
                    height: 60,
                    width: 60,
                    child: SongBox(
                      child: Icon(Icons.arrow_back),
                    ),
                  ),
                  Text("P L A Y L I S T"),
                  const SizedBox(
                    height: 60,
                    width: 60,
                    child: SongBox(
                      child: Icon(Icons.menu),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 25),
              //Imagem do album, nome do artista, nome da música

              SongBox(
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset('images/capa.jpg'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Skillet",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Color.fromARGB(255, 77, 77, 77),
                                ),
                              ),
                              SizedBox(height: 4),
                              const Text(
                                "White Horse",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Color.fromARGB(255, 133, 132, 132),
                                ),
                              ),
                            ],
                          ),
                          const Icon(
                            Icons.favorite,
                            color: Colors.red,
                            size: 30,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 40),
              //Time inicial, botão repete, fim da música
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text("0:00"),
                  Icon(Icons.shuffle),
                  Icon(Icons.repeat),
                  Text("3:25")
                ],
              ),
              const SizedBox(height: 40),
              //Linha de progresso

              SongBox(
                child: LinearPercentIndicator(
                  barRadius: Radius.circular(10),
                  lineHeight: 7,
                  percent: 0.7,
                  progressColor: Colors.green,
                  backgroundColor: Colors.grey[10],
                ),
              ),
              const SizedBox(height: 40),
              //Retornar faixa, pause, play, pula para próxima música

              SizedBox(
                height: 80,
                child: Row(
                  children: [
                    Expanded(
                      child: SongBox(
                        child: Icon(
                          Icons.skip_previous,
                          size: 32,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child: SongBox(
                          child: Icon(Icons.play_arrow, size: 32),
                        ),
                      ),
                    ),
                    Expanded(
                      child: SongBox(
                        child: Icon(Icons.skip_next, size: 32),
                      ),
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
