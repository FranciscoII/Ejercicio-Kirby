import hechizos.*
import artefactos.*
import refuerzos.*

object fuerzaOscura{
	var valor = 5
	
	method valor() = valor
	
	method valor(valorNuevo){
		valor = valorNuevo
	}
}

object rolando{
	var hechizoPreferido 
	var valorBaseLucha = 1
	var artefactos = []
	
	
	method hechizoPreferido() = hechizoPreferido
	
	method hechizoPreferido(hechizo){
		hechizoPreferido = hechizo
	}
	
	method artefactos()= artefactos	
	
	method valorBaseLucha() = valorBaseLucha
	
	method recibirEclipse(){
		
		fuerzaOscura.valor(fuerzaOscura.valor() * 2)
	}
	
	method nivelDeHechiceria(){
		return 3 * self.hechizoPreferido().poder() + fuerzaOscura.valor()
	}
	
	method seCreePoderoso(){
		return self.hechizoPreferido().esPoderoso()
	}
	
	method valorBaseLucha(valorNuevo){
		valorBaseLucha = valorNuevo
	}
	
	method agregarArtefactos(unosArtefactos){
		self.artefactos().addAll(unosArtefactos)
	}
	
	method agregarArtefacto(artefacto){
		self.agregarArtefactos(artefacto)
	}
	
	method removerArtefacto(artefacto){
		self.artefactos().remove(artefacto)
	}
	
	method habilidadDeLucha(){
		return self.valorBaseLucha() + self.artefactos().sum({artefacto => artefacto.habilidadDeLucha(self)})
	}
	
	method mayorHabilidadLuchaQueNivelHechiceria(){
		return self.habilidadDeLucha() > self.nivelDeHechiceria()
	}
	
	
	method limpiarArtefactos(){
		self.artefactos().clear()
	}
	
	method artefactosSinEspejo(){
		return self.artefactos().filter({artefacto => !artefacto.equals(espejo)})
	}
	
	method mejorArtefacto(){
		return self.artefactosSinEspejo().max({artefacto => artefacto.habilidadDeLucha(self)})
	}
		
	method soloTieneEspejo(){
		return self.artefactos().all({artefacto => artefacto.equals(espejo)})
	}
	
	method artefactoSoloEspejo(){
		self.artefactos().removeAllSuchThat({artefacto => !artefacto.equals(espejo)})
	}
	
	method cantArtefactos() = self.artefactos().size()
	
	method estaCargado(){
		return self.cantArtefactos() >= 5
	}	
}
object eclipse{
	
	method ocurrirEclipse(alguien){
		alguien.recibirEclipse()	
	}
}