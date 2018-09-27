import rolando.*
import hechizos.*
import refuerzos.*


object espadaDelDestino{
	
	method habilidadDeLucha(duenio) = 3

}

object collarDivino{
	var cantPerlas = 5
	
	method cambiarCantPerlas(cant){
		cantPerlas = cant
	}
	method habilidadDeLucha(duenio) = cantPerlas
	
}

object mascaraOscura{
	
	method habilidadDeLucha(duenio){
		return 4.max(duenio.fuerzaOscura()/2)
	}

}

object armadura{
	 var refuerzo = ningunRefuerzo	
	 
	 method habilidadDeLucha(duenio){
	 	
	 		return 2 + refuerzo.habilidadDeLucha(duenio)
	 }
	 
	 method cambiarRefuerzo(refuerzoNuevo){
	 	refuerzo = refuerzoNuevo
	 }
}



object espejo{
	
	method reflejo(duenio){
		
		return duenio.mejorArtefacto()
	}
	
	method habilidadDeLucha(duenio){
		if(rolando.soloTieneEspejo()){return 0}
		else{
			return self.reflejo(duenio).habilidadDeLucha(duenio)
		}
	}		

}


