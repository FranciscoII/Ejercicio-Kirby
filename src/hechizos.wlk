import personaje.*
import refuerzos.*
import artefactos.*

class Logo{
	var property nombre
	var property multiplo
		
	method cantLetraNombre() = nombre.length()
		
	method poder() = self.cantLetraNombre() * multiplo
		
	method esPoderoso(){
		return self.poder() > 15
	}
	
	method habilidadDeLucha(duenio) = self.poder()
	
	method precio() = self.poder()
	
	method costo(armadura) = armadura.valorBase() + self.precio()
}


object hechizoBasico{
	
	method poder() = 10
	
	method esPoderoso() = false
	
	method habilidadDeLucha(duenio) = self.poder()
	
	method precio() = 10
	
	method costo(armadura) = armadura.valorBase() + self.precio()

}


