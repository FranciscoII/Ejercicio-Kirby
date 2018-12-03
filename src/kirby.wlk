class Enemigo{
	var nombre
	var property vida
	var cantidadManzanas
	var property tipoPoder
	constructor(_nombre,_vida,_cantidadManzanas,_tipoPoder){
		nombre = _nombre
		vida = _vida
		cantidadManzanas = _cantidadManzanas
		tipoPoder = _tipoPoder
		}
	method atacar(aQuien){
		tipoPoder.hacerDanio(aQuien)
	}
	method recibirDanio(cantidad){
		vida -= cantidad
		if(vida < 0)
			vida = 0 //Esto serviria para ver en un mapa cuantos enemigos quedan y demas
	}
	method serAbsorbido(){vida = 0}
}

object kirby inherits Enemigo("kirby",100,0,salpicadura){
	method absorber(enemigo){
		tipoPoder = enemigo.tipoPoder()
		enemigo.serAbsorbido()
	}	
	
}

object salpicadura{
	method hacerDanio(alguien){}
}
object fuego{
	method hacerDanio(alguien){
		alguien.recibirDanio(10)
	}
}
class StreetFighter{
	var property aniosEntrenamiento
	constructor(_aniosEntrenamiento){
		aniosEntrenamiento = _aniosEntrenamiento
	}
	method hacerDanio(alguien){
		alguien.recibirDanio(5*aniosEntrenamiento)
	}
}
object angel{
	method hacerDanio(alguien){
		alguien.recibirDanio(25)
	}
}