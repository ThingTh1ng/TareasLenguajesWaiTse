/*Lista de Tareas
Crear una clase Tarea que represente una tarea con un título, una descripción y un estado
(completa o incompleta). Luego, crea una lista de tareas (List<Tarea>) y funciones en la
clase para agregar, eliminar y marcar tareas como completadas. */

class Tarea {
  String titulo;
  String descripcion;
  bool completada;

  Tarea(this.titulo, this.descripcion, {this.completada = false});

  void marcarTarea() {
    completada = true;
  }

  String toString() {
    return 'Tarea(titulo: $titulo, descripcion: $descripcion, completada: $completada)';
  }
}

class ListaDeTareas {
  List<Tarea> tareas = [];

  void agregarTarea(Tarea tarea) {
    tareas.add(tarea);
  }

  void eliminarTarea() {
    tareas.remove(tareas[0]);
  }

  void marcarTareaComoCompletada(String titulo) {
    for (var elemento in tareas) {
      if (elemento.titulo == titulo) {
        elemento.marcarTarea();
        break;
      }
    }
  }

  void mostrarTareas() {
    for (var tarea in tareas) {
      print(tarea);
    }
  }
}

void main() {
  var listaDeTareas = ListaDeTareas();

  var tarea1 = Tarea("Jugar", "Jugar lol");
  var tarea2 = Tarea("Estudiar", "Estudiar matematicas");

  listaDeTareas.agregarTarea(tarea1);
  listaDeTareas.agregarTarea(tarea2);

  print("Lista de tareas actuales:");
  listaDeTareas.mostrarTareas();

print("-------------------------------------");

  listaDeTareas.marcarTareaComoCompletada("Estudiar");
  print("Se marco 'Estudiar' como completada:");
  print('\n');
  listaDeTareas.mostrarTareas();

print("-------------------------------------");

  listaDeTareas.eliminarTarea();
  print("Se elimino la primera tarea:");
  print('\n');
  listaDeTareas.mostrarTareas();

print("-------------------------------------");

}
