 class Elemento{
 	var descripcion
 	const fecha
 	constructor(_descripcion,_fecha){
 		descripcion =_descripcion
 		fecha =_fecha
 	}
 	method fecha() = fecha
 	method esDe(alguien) = false
 	
 	method esMasReciente(unaFecha){
 		return fecha < unaFecha
 	}
 	method problemaCon(unPersonaje){
 		descripcion = "BTTF " + descripcion
 	}
 }
 
 class Documentacion inherits Elemento{
 	var personajes
 	constructor(_descripcion,_fecha,_personajes) = super(_descripcion,_fecha){
 		personajes = _personajes
 	}
 	override method esDe(alguien){
 		return personajes.contains(alguien)
 	}
 	override method problemaCon(unPersonaje){
 		super(unPersonaje)
 		personajes.remove(unPersonaje)
 	}
 }
 
 class Especial inherits Elemento{
 	const duenio
 	constructor(_descripcion,_fecha,_duenio) = super(_descripcion,_fecha){
 		duenio = _duenio
 	}
 	override method esDe(alguien){
 		return duenio == alguien
 	}
 }