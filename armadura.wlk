import gladiador.*

class Armadura{
    method puntosDeArmaduraOtorgados()
}

class Casco inherits Armadura{

    override method puntosDeArmaduraOtorgados(){
        return 10
    }
}

class Escudo inherits Armadura{

    override method puntosDeArmaduraOtorgados(){
        return 5 * (Gladiador.destreza() * 0.10)
    }
}