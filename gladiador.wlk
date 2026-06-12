import grupo.*
import arma.*
class Gladiador {
    var vida = 100 
    var dañoCausado
    var gladiadorAtacado 


    method atacar(){
        dañoCausado = self.poderDeAtaque() - gladiadorAtacado.defensa()
        
    }
    method objetivoDeAtaque(unGladidador){
        gladiadorAtacado = unGladidador
    }
    
    method arma() = arma
    method armaActual(unArma) {
        arma = unArma
    }

    method contraAtaque(){
        gladiadorAtacado.atacar()
    }
    method poderDeAtaque()
    method defensa()
    method destreza()

    method crearGrupoCon(comapñero)
}

class Mirmillon inherits Gladiador{ 
    var armadura
    var arma
    var fuerza

    override method armaActual(unArma) {
        arma = ArmaDeFilo
    }

    method fuerza(){
        return fuerza
    }

    method cambiarFuerza(valor){
        fuerza = valor
    }
    override method destreza (){
        return 15
    }

    method cambiarArmadura(piezaArmadura){
        armadura = piezaArmadura
    }

    override method poderDeAtaque(){
        return arma.valorDeAtaque() + self.fuerza()
    }

    override method crearGrupoCon(compañero){
        Grupo.nombre() == "mirmillolandia"
    }

}
class Dimachaerus inherits Gladiador{
    const armas = []

    override method armaActual(unArma){
        armas.add(unArma)
    }

    method fuerza (){
        return 10
    }

    override method poderDeAtaque(){
        return self.fuerza() + armas.sum({a => a.valorDeAtaque()})
    }

    override method defensa(){
        return self.destreza() / 2
    }

    override method atacar(){
        super()
        self.defensa() + 1
    }

    override method crearGrupoCon(compañero){
        Grupo.nombre() == "D" + 
        (self.poderDeAtaque() + compañero.poderDeAtaque()).toString()
    }
}
