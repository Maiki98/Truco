import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:marcador_truco_isepe/stores/home_page_store.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var homePageStore = HomePageStore();

  @override
  void initState() {
    getSharedPrefs();
    super.initState();
  }

  getSharedPrefs() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    homePageStore.pontosNos = prefs.getInt('pontosNos') ?? 0;
    homePageStore.pontosEles = prefs.getInt('pontosEles') ?? 0;
    homePageStore.vitoriasNos = prefs.getInt('vitoriasNos') ?? 0;
    homePageStore.vitoriasEles = prefs.getInt('vitoriasEles') ?? 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Marcador de Truco'),
        centerTitle: true,
        actions: <Widget>[
                IconButton(
                  icon: const Icon(Icons.exit_to_app_outlined),
                  color: Colors.white,
                  onPressed: () async {
                    exit(0);
                  },
                ),
              ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 100.0,
                      height: 100.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage(
                                "assets/images/user_green.png"),
                            fit: BoxFit.contain),
                      ),
                    ),
                    Container(
                      width: 100.0,
                      height: 100.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage(
                                "assets/images/user_red.png"),
                            fit: BoxFit.contain),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    'NÓS',
                    style: TextStyle(
                      fontSize: 42.0,
                      color: Colors.green,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const Text(
                    'ELES',
                    style: TextStyle(
                      fontSize: 42.0,
                      color: Colors.redAccent,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 40,
                    width: 40,
                    child: ElevatedButton(
                        onPressed: () {
                          homePageStore.setPontosNos('sub');
                        },
                        child: const Text('-')),
                  ),
                  Observer(builder: (_) {
                    return Text('${homePageStore.pontosNos}',
                    style: TextStyle(
                      fontSize: 42.0,
                      color: Colors.green,
                      fontWeight: FontWeight.w700,
                    ),);
                  }),
                  SizedBox(
                    height: 40,
                    width: 40,
                    child: ElevatedButton(
                        onPressed: () {
                          homePageStore.setPontosNos('soma');
                        },
                        child: const Text('+')),
                  ),
                  SizedBox(
                    height: 40,
                    width: 40,
                    child: ElevatedButton(
                        onPressed: () {
                          homePageStore.setPontosEles('sub');
                        },
                        child: const Text('-')),
                  ),
                  Observer(builder: (_) {
                    return Text('${homePageStore.pontosEles}',
                    style: TextStyle(
                      fontSize: 42.0,
                      color: Colors.red,
                      fontWeight: FontWeight.w700,
                    ),);
                  }),
                  SizedBox(
                    height: 40,
                    width: 40,
                    child: ElevatedButton(
                        onPressed: () {
                          homePageStore.setPontosEles('soma');
                        },
                        child: const Text('+')),
                  )
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(onPressed: () {
                    homePageStore.pontosNos = 0;
                    homePageStore.pontosEles = 0;
                  }, child: const Text('Reiniciar Partida'))
                ],
              ),

              const SizedBox(
                 height: 20,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      width: 120.0,
                      height: 120.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage(
                                "assets/images/ads.png"),
                            fit: BoxFit.cover),
                      ),
                    ),
                ],
              ),

              const SizedBox(
                 height: 20,
              ),

              const Text(
                'Número de Vitórias',
                style: TextStyle(
                  fontSize: 22.0,
                  color: Colors.blue,
                  fontWeight: FontWeight.w700,
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 40,
                    width: 40,
                    child: ElevatedButton(
                        onPressed: () {
                          homePageStore.setVitoriasNos('sub');
                        },
                        child: const Text('-')),
                  ),
                  Observer(builder: (_) {
                    return Text('${homePageStore.vitoriasNos}',
                    style: TextStyle(
                      fontSize: 42.0,
                      color: Colors.green,
                      fontWeight: FontWeight.w700,
                    ),);
                  }),
                  SizedBox(
                    height: 40,
                    width: 40,
                    child: ElevatedButton(
                        onPressed: () {
                          homePageStore.setVitoriasNos('soma');
                        },
                        child: const Text('+')),
                  ),
                  SizedBox(
                    height: 40,
                    width: 40,
                    child: ElevatedButton(
                        onPressed: () {
                          homePageStore.setVitoriasEles('sub');
                        },
                        child: const Text('-')),
                  ),
                  Observer(builder: (_) {
                    return Text('${homePageStore.vitoriasEles}',
                    style: TextStyle(
                      fontSize: 42.0,
                      color: Colors.redAccent,
                      fontWeight: FontWeight.w700,
                    ),);
                  }),
                  SizedBox(
                    height: 40,
                    width: 40,
                    child: ElevatedButton(
                        onPressed: () {
                          homePageStore.setVitoriasEles('soma');
                        },
                        child: const Text('+')),
                  )
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: () {
                    homePageStore.vitoriasNos = 0;
                    homePageStore.vitoriasEles = 0;
                  }, child: const Text('Reiniciar Placar')),
                  ElevatedButton(onPressed: () {
                    homePageStore.gravarDados();
                  }, child: const Text('Salvar Partida'))
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
