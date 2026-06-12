import grupo.*
import arma.*
class Gladiador {
    var vida = 100 

    method vida() = vida
    method atacar(unGladiador){
        unGladiador.perderVida(self.poderDeAtaque() - unGladiador.defensa())
    }

    method perderVida(cantidad){
        vida = vida - cantidad
    }

    method pelearCon(unGladiador){
        self.atacar(unGladiador)
        unGladiador.atacar()
        
    }
    method poderDeAtaque()
    method defensa()
    method destreza()

    method crearGrupoCon(comapñero)

    method curar() {
        vida = 100
    }
}

class Mirmillon inherits Gladiador{ 
    var armadura
    var arma
    var property fuerza

    method cambiarArma(unArma) {
        arma = unArma
    }

    override method destreza (){
        return 15
    }

    method cambiarArmadura(piezaArmadura){
        armadura = piezaArmadura
    }

    override method defensa(){
        return armadura.defensa(self) + self.destreza()
    }

    override method poderDeAtaque(){
        return arma.valorDeAtaque() + fuerza
    }

    override method crearGrupoCon(compañero){
        return
        new Grupo(nombre = "Mirmillolandia", miembrosGrupo = (self, compañero))
        /*
        nuevoGrupo.agregarMiembro(self)
        nuevoGrupo.agregarMimebro(compañero)
        return nuevoGrupo*/
    }

}
class Dimachaerus inherits Gladiador{
    const armas = []
    var destreza

    method agrgarArma(unArma) {
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

    override method atacar(unGladiador){
        super(unGladiador)
        destreza = destreza + 1
    }

    override method crearGrupoCon(compañero){
        return new Grupo (nombre = " D -" + (self.poderDeAtaque() + compañero.poderDeAtaque()).toString(), 
                        miembrosGrupo = #(self, compañero))
    }
}
