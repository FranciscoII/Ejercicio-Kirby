import rolando.*
import hechizos.*
import refuerzos.*


object espadaDelDestino{
	
	method habilidadDeLucha(duenio) = 3

}

object collarDivino{
	var cantPerlas = 5
	
	method cantPerlas() = cantPerlas
	
	method cantPerlas(cant){
		cantPerlas = cant
	}
	method habilidadDeLucha(duenio) = cantPerlas
	
}

object mascaraOscura{
	
	method habilidadDeLucha(duenio){
		return 4.max(fuerzaOscura.valor()/2)
	}

}

object armadura{
	 var refuerzo
	 
	 method refuerzo() = refuerzo
	 
	 method refuerzo(refuerzoNuevo){
	 	refuerzo = refuerzoNuevo
	 }
	 
	 method habilidadDeLucha(duenio){
	 	
	 		return 2 + self.refuerzo().habilidadDeLucha(duenio)
	 }	 
	
}


object espejo{
	
	method reflejo(duenio){
		
		return duenio.mejorArtefacto()
	}
	
	method habilidadDeLucha(duenio){
		if(duenio.soloTieneEspejo()){return 0}
		else{
			return self.reflejo(duenio).habilidadDeLucha(duenio)
		}
	}		

}


