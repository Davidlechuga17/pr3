
import 'package:hive/hive.dart';

class BaseDeDades {
  int num = 0;
  final _boxDeHive = Hive.box("gym");

  void crearDadesInicials(){
    num = 0;
  }

  void sumaDades(){
    num++;
  }
  
  void restarDades(){
    num--;
  }
  
  void carregarDades(){
    num = _boxDeHive.get("gym");
  }

  void actualitzarDades(){
    _boxDeHive.put("gym", num);
  }

}