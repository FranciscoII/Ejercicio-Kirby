import rolando.*
import refuerzos.*
import artefactos.*

object espectroMalefico{
	var nombre = 'Espectro Malefico'
	
	method nombre() = nombre
	
	method nombre(nombreNuevo){
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
	
	method hechizos() = hechizos
	
	method agregarHechizos(unosHechizos){
		self.hechizos().addAll(unosHechizos)
	}
	
	method agregarHechizo(hechizo){
		self.agregarHechizos(hechizo)
	}
	method hechizosPoderosos(){
		return self.hechizos().filter({hechizo => hechizo.esPoderoso()})
	}
	
	method poder(){
		return self.hechizosPoderosos().sum({hechizo => hechizo.poder()})
	}
	
 /** ¿Qué sucede si el libro de hechizos incluye como hechizo al mismo libro de hechizos?	
		Wollok no podría ejecutar. El objeto libroDeHechizos no tiene el method esPoderoso() por lo que 
		no entiende el mensaje. Es decir que aunque los demás hechizos son polimorficos para este metodo, 
		el libro no lo es.
 */	
}



