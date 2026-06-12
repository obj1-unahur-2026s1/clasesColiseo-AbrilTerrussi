class Grupo {
    const nombre 
    var cantidadPeleas = 0
    const miembrosGrupo = #{}

    method combatirCon(otroGrupo){
        self.campeon().pelear(otroGrupo).campeon()
        self.campeon().pelear(otroGrupo).campeon()
        self.campeon().pelear(otroGrupo).campeon()
        cantidadPeleas = cantidadPeleas + 1
    }

    method agregarMiembro(unGladiador){
        miembrosGrupo.add(unGladiador)
    }
    method quitarMimebro(unGladiador){
        miembrosGrupo.remove(unGladiador)
    }


    method campeon(){
        return self.puedenCombatir().max({m=> m.poderDeAtaque()})
    }

    method puedenCombatir(){
        return miembrosGrupo.filter({m=> m.vida()> 0})
    }

    method esCampeonMasFuerte(unGladiador){
        return unGladiador.fuerza() >= self.campeon()
    }



}