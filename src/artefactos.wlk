import personaje.*
import hechizos.*
import refuerzos.*

class Espada{
	
	method habilidadDeLucha(duenio) = 3
	
	method precio() = 15

}


class CollarDivino{
	var property cantPerlas = 5

	method habilidadDeLucha(duenio) = cantPerlas
	
	method precio() = 2 * cantPerlas
	
}

class Mascara{
	var property indiceOscuridad = 0
	var property valorLuchaMinimo = 0
	
	method valorLucha() = fuerzaOscura.valor() / 2 * indiceOscuridad
	
	method habilidadDeLucha(duenio){
		return valorLuchaMinimo.max(self.valorLucha())
	}

}

class Armadura{
	 var property refuerzo = ningunRefuerzo
	 var property valorBase = 2
	 	 
	 method habilidadDeLucha(duenio){
	 	
	 		return valorBase + refuerzo.habilidadDeLucha(duenio)
	 }	 
	 
	 method precio() {
		return refuerzo.costo(self)
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
	
	method precio() = 90

}





