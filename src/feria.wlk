import personaje.*
import artefactos.*
import hechizos.*
import refuerzos.*


object feria {
	
	method precioCanjeaHechizo(persona,hechizo){
		if(persona. precioMitadHechizoActual() < hechizo.precio()){			
			return hechizo.precio() - persona. precioMitadHechizoActual()			
		}
		return 0	
	}
	
	method verificarSaldo(persona,precio){
		if(precio > persona.monedas()){
			throw new Exception("Saldo insuficiente ! ")
		}
	}
	
	method leCanjeasHechizo(persona,hechizo){
		var precioPagar = self.precioCanjeaHechizo(persona,hechizo)
		self.verificarSaldo(persona,precioPagar)
		persona.pagas(precioPagar)
		persona.hechizoPreferido(hechizo)			
	}	
	
	method precioDeArtefactos(unosArtefactos) = unosArtefactos.sum({artefacto => artefacto.precio()})
	
	method leVendesArtefactos(persona,unosArtefactos){
		var precioPagar = self.precioDeArtefactos(unosArtefactos)
		self.verificarSaldo(persona,precioPagar)
		persona.pagas(precioPagar)
		persona.agregarArtefactos(unosArtefactos)
	}	
	
}
