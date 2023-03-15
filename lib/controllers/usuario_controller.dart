import 'package:estados/models/usuario.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/state_manager.dart';

class UsuarioController extends GetxController{
  var existeUsuario = false.obs;
 var usuario = new Usuario().obs;

  int get profesionesCount{
    return this.usuario.value.profesiones.length;
  }

void cargarUsuario(Usuario pUsuario){
  this.existeUsuario.value = true ;
  this.usuario.value = pUsuario;
}
void cambiarEdad(int edad){
  this.usuario.update((val) {
    val?.edad=edad;
  });
}
void agregarProfesion(String profesion){
  this.usuario.update((val) {
    val!.profesiones = [
      ...val.profesiones, profesion
    ];
  });
}
}