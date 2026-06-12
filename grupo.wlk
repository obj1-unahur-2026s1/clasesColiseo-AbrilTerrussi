class Grupo {
    var property nombre 
    var cantidadPeleas = 0
    const miembrosGrupo = []
    var campeonMasFuerte 

    method campeonFuerte() = campeonMasFuerte

    /*
    method roundsContra(unAdversario){
        3.times(self.campeonFuerte())
        cantidadPeleas = cantidadPeleas + 1

    }
    */
    method agregarMiembro(unGladiador){
        miembrosGrupo.add(unGladiador)
    }
    method quitarMimebro(unGladiador){
        miembrosGrupo.remove(unGladiador)
    }

    method elegirCampeon(unGladiador){
        if (self.esCampeonMasFuerte(unGladiador) && unGladiador.vida() >= 1){
            campeonMasFuerte = unGladiador
        }
    }


    method campeonDeMasFuerza(){
        return miembrosGrupo.max({m=> m.fuerza()})
    }

    method esCampeonMasFuerte(unGladiador){
        return unGladiador.fuerza() >= self.campeonDeMasFuerza()
    }



}