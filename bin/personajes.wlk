import deLorean.*

class Personaje{
 	var property edad
 	var property altura 
 	var property apellido
 	const elementos = []
 	
 	method esMayor(){
 		return edad > 50
 	}

 	method tieneElementoPropio(){ return
 		elementos.any({e => e.esPropio(self)})
 	}
 
 	method esAntepesadoDe(alguien){
 		// hacer
 	}
 	method problemaCon(unPersonaje,unaFecha){
 		// hacer
 	}
 	
 	method reducirAltura(unValor) {altura -= unValor}
 	method envejecer(unValor) {edad += unValor}
 	method rejuvenecer(unValor) {edad -= unValor}
 	method noTieneElementos() = elementos.isEmpty()
 	method perderElementoMasAntiguo() = elementos.remove(self.elementoMasAntiguo())
 	method elementoMasAntiguo() = elementos.min({e => e.fecha()})
 	
 }
 
class Elemento {
	const descripcion 
	const property fecha
	
	method esPropio(unPersonaje) = false
} 

class Documentacion inherits Elemento {
	var property personaje
	
	override method esPropio(unPersonaje) = personaje == unPersonaje
}

class Anacronicos inherits Documentacion {
	var duenio
	
	override method esPropio(unPersonaje) = duenio == unPersonaje
	}
	
	
