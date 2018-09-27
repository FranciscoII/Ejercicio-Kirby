import hechizos.*
import artefactos.*
import refuerzos.*

object rolando{
	var hechizoPreferido = espectroMalefico
	var valorBaseLucha = 1
	var artefactos = []
	var fuerzaOscura = 5
	
	method fuerzaOscura() = fuerzaOscura
	
	method cambiarFuerzaOscura(valorNuevo){
		fuerzaOscura = valorNuevo
	}
	
	method cambiarHechizo(hechizo){
		hechizoPreferido = hechizo
	}
	
	method recibirEclipse(){
		
		self.cambiarFuerzaOscura(self.fuerzaOscura() * 2)
	}
	
	method nivelDeHechiceria(){
		return 3 * hechizoPreferido.poder() + self.fuerzaOscura()
	}
	
	method seCreePoderoso(){
		return hechizoPreferido.esPoderoso()
	}
	
	method cambiarValorBaseLucha(valorNuevo){
		valorBaseLucha = valorNuevo
	}
	
	method agregarArtefacto(artefacto){
		artefactos.add(artefacto)
	}
	
	method removerArtefacto(artefacto){
		artefactos.remove(artefacto)
	}
	
	method habilidadDeLucha(){
		return valorBaseLucha + artefactos.sum({artefacto => artefacto.habilidadDeLucha(self)})
	}
	
	method mayorHabilidadLuchaQueNivelHechiceria(){
		return self.habilidadDeLucha() > self.nivelDeHechiceria()
	}
	
	method listaArtefactos()= artefactos	
	
	method artefactosSinEspejo(){
		return artefactos.filter({artefacto => !artefacto.equals(espejo)})
	}
	
	method mejorArtefacto(){
		return self.artefactosSinEspejo().max({artefacto => artefacto.habilidadDeLucha(self)})
	}
		
	method soloTieneEspejo(){
		return artefactos.all({artefacto => artefacto.equals(espejo)})
	}
	
	method cantArtefactos() = artefactos.size()
	
	method estaCargado(){
		return self.cantArtefactos() >= 5
	}	
}
object eclipse{
	
	method ocurrirEclipse(alguien){
		alguien.recibirEclipse()	
	}
}