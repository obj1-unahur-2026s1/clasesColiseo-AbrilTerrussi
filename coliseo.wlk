object coliseo{

    method organizarCombatesEntreGrupos(grupo1, grupo2){
        grupo1.combatirCon(grupo2)
    }

    method combatirContraCampeon(grupo1, campeon){
        grupo1.miembrosGrupo().forEach({g=> g.pelearCon(campeon)})
    }

    method curarGrupo(grupo){
        grupo.miembrosGrupo().forEach({g=> g.curar()})
    }

    method curarCampeon(unGladiador){
        unGladiador.curar()
    }
}