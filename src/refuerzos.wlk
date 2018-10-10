import personaje.*
import artefactos.*
import hechizos.*

class CotaDeMalla{
	var property unidadLucha
	
	method habilidadDeLucha(duenio) = self.unidadLucha()
	
	method costo(armadura) = unidadLucha / 2
}

object bendicion{
	
	method habilidadDeLucha(duenio) = duenio.nivelDeHechiceria()
	
	method costo(armadura) = armadura.valorBase()
}

object ningunRefuerzo{
	
	method habilidadDeLucha(duenio) = 0
	
	method costo(armadura) = 2
	
}