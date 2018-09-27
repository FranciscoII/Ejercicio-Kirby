import rolando.*
import artefactos.*
import hechizos.*

object cotaDeMalla{
	method habilidadDeLucha(duenio) = 1
}

object bendicion{
	
	method habilidadDeLucha(duenio) = duenio.nivelDeHechiceria()
	
}

object ningunRefuerzo{
	
	method habilidadDeLucha(duenio) = 0
	
}