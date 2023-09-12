import 'package:mobx/mobx.dart';
import 'package:shared_preferences/shared_preferences.dart';
part 'home_page_store.g.dart';

class HomePageStore = HomePageStoreBase with _$HomePageStore;

abstract class HomePageStoreBase with Store {
  @observable
  int pontosNos = 0;

  @action
  void setPontosNos(String op){
    if(op == 'soma'){
      pontosNos++;
    } else {
      pontosNos--;
    }
  }

   @observable
  int pontosEles = 0;

  @action
  void setPontosEles(String op){
    if(op == 'soma'){
      pontosEles++;
    } else {
      pontosEles--;
    }
  }

    @observable
  int vitoriasNos = 0;

  @action
  void setVitoriasNos(String op){
    if(op == 'soma'){
      if (vitoriasNos < 12) vitoriasNos++;
    } else {
      if(vitoriasNos >= 1) vitoriasNos--;
    }
  }

   @observable
  int vitoriasEles = 0;

  @action
  void setVitoriasEles(String op){
    if(op == 'soma'){
      if (vitoriasEles < 12) vitoriasEles++;
    } else {
      if(vitoriasEles >= 1) vitoriasEles--;
    }

  }
  @action
  Future<void> gravarDados() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('pontosNos', pontosNos);
    await prefs.setInt('pontoseles', pontosEles);
    await prefs.setInt('vitoriasNos', vitoriasNos);
    await prefs.setInt('vitoriasEles', vitoriasEles);
  }
}
