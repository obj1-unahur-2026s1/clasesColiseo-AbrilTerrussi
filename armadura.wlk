import gladiador.*

object casco{

    method puntosDeArmaduraOtorgados(){
        return 10
    }

    method defensa(luchador) {
      return 10
    }
}

object escudo {

    method puntosDeArmaduraOtorgados(){
        return 5 * (Gladiador.destreza() * 0.10)
    }

    method defensa(luchador) {
      return 5 + luchador.destreza()
    }
}