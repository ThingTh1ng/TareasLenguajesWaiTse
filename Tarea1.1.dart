
/* Una clase para representar un círculo
• Crear una clase llamada Circulo que tenga las siguientes propiedades:
o radio: El radio del círculo.
o color: El color del círculo.
• Crear un constructor que inicialice las propiedades del círculo.
• Crear un método calcularArea() que calcule el área del círculo.
• Crear un método calcularPerimetro() que calcule el perímetro */

class Circulo {
  
  double radio;
  String color;

  Circulo(this.radio, this.color);

  double AreaCirculo() {
    return 3.14 * radio * radio;
  }

  double PerimetroCirculo() {
    return 2 * 3.14 * radio;
  }

}

void main() {
  var circulo = Circulo(5.7, 'rojo');
  
  print("El area: ${circulo.AreaCirculo()}");
  print("El perimetro: ${circulo.PerimetroCirculo()}");
  print("El Color: ${circulo.color}");

}



