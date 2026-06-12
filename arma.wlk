
class Arma{
   method valorDeAtaque()
}

class ArmaDeFilo inherits Arma{
  var property filo     //entre 0 y 1
  var property longitud //en centimetros

  override method valorDeAtaque(){
    return filo * longitud
  }

}

class ArmaContundente inherits Arma{
  var property peso

  override method valorDeAtaque(){
    return peso
  } 
}


