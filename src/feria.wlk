import personaje.*
import artefactos.*
import hechizos.*
import refuerzos.*


object feria {
	
	method leCanjeasHechizo(persona,hechizo){
		var precioApagar
		
		if(persona. precioMitadHechizoActual() < hechizo.precio()){
			
			precioApagar = hechizo.precio() - persona. precioMitadHechizoActual()
			
			if( precioApagar < persona.monedas()){
				persona.pagas(precioApagar)
				persona.hechizoPreferido(hechizo)	
			}
			else{
				throw new Exception("Saldo insuficiente ! ")
			}
		}
		else{
			persona.hechizoPreferido(hechizo)
		}	
	}
	
	method leCanjeasLibroDeHechizos(persona){
		
		libroDeHechizos.hechizosPoderosos().forEach({hechizo => persona.canjeasHechizo(hechizo)})
		persona.pagas(libroDeHechizos.precio())
		
	}
	
	method precioDeArtefactos(unosArtefactos) = unosArtefactos.sum({artefacto => artefacto.precio()})
	
	method leVendesArtefactos(persona,unosArtefactos){
		if(self.precioDeArtefactos(unosArtefactos) < persona.monedas()){
			persona.pagas(self.precioDeArtefactos(unosArtefactos))
			persona.agregarArtefactos(unosArtefactos)
		}
		else{
				throw new Exception("Saldo insuficiente ! ")
		}
	}
	
	
}
