import rolando.*
import refuerzos.*
import artefactos.*

object espectroMalefico{
	var nombre = 'Espectro Malefico'
	
	method nombre() = nombre
	
	method cambiarNombre(nombreNuevo){
		nombre = nombreNuevo
	}
	
	method cantLetraNombre() = self.nombre().length()
		
	method poder() = self.cantLetraNombre()
		
	method esPoderoso(){
		return self.poder() > 15
	}
	
	method habilidadDeLucha(duenio) = self.poder()
}

object hechizoBasico{
	
	method poder() = 10
	
	method esPoderoso() = false
	
	method habilidadDeLucha(duenio) = self.poder()

}

object libroDeHechizos{
	var hechizos = [espectroMalefico,hechizoBasico]
	
	method hechizosPoderosos(){
		return hechizos.filter({hechizo => hechizo.esPoderoso()})
	}
	
	method poder(){
		return self.hechizosPoderosos().sum({hechizo => hechizo.poder()})
	}
	
}



