import hechizos.*
import artefactos.*
import refuerzos.*
import eclipse.*
import feria.*

object fuerzaOscura{
	var property valor = 5

}

class Personaje{
	var property hechizoPreferido 
	var property valorBaseLucha = 1
	var property artefactos = []
	var property monedas = 100
		
	method recibirEclipse(){
		
		fuerzaOscura.valor(fuerzaOscura.valor() * 2)
	}
	
	method poderHechizoPreferido() = hechizoPreferido.poder()
	
	method nivelDeHechiceria(){
		return 3 * self.poderHechizoPreferido() + fuerzaOscura.valor()
	}
	
	method seCreePoderoso(){
		return hechizoPreferido.esPoderoso()
	}

	method agregarArtefacto(artefacto){
		self.agregarArtefactos([artefacto])
	}
	
	method agregarArtefactos(unosArtefactos){
		artefactos.addAll(unosArtefactos)
	}
	
	method removerArtefacto(artefacto){
		artefactos.remove(artefacto)
	}
	
	method habilidadDeLuchaTotal() = artefactos.sum({artefacto => artefacto.habilidadDeLucha(self)})
	
	method habilidadDeLucha(){
		return valorBaseLucha + self.habilidadDeLuchaTotal()
	}
	
	method mayorHabilidadLuchaQueNivelHechiceria(){
		return self.habilidadDeLucha() > self.nivelDeHechiceria()
	}	
	
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
	
	method estasCargado(){
		return self.cantArtefactos() >= 5
	}	
	
	method pagas(precio){
		monedas -= precio
	}
	
	method precioMitadHechizoActual() = hechizoPreferido.precio() / 2
		
	method canjeasHechizo(hechizo){
		feria.leCanjeasHechizo(self,hechizo)
	}	
	
	
	method canjeasLibroDeHechizos(){		
		feria.leCanjeasLibroDeHechizos(self)		
	}	
	
	method comprasArtefactos(unosArtefactos){
		feria.leVendesArtefactos(self,unosArtefactos)
		
	}	
}