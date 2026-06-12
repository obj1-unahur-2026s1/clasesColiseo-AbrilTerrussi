import gladiador.*

object casco{

    method defensa(luchador) {
      return 10
    }
}

object escudo {

    method defensa(luchador) {
      return 5 + luchador.destreza() * 0.1
    }
}