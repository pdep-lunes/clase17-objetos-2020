class FamiliarViajero {
	const demenciaAportada;
	
	method demenciaAportada() {
		return demenciaAportada
	}
	
	method puedeIrDeAventura(fecha) {
		return true
	}
}

class Morty inherits FamiliarViajero {
	var saludMental
	
	constructor(nuevaSaludMental) {
		demenciaAportada = 50;
		saludMental = nuevaSaludMental;
	}
	
	method vivirAventura() {
		saludMental -= 30	
	}
}

class FamiliarAfectivo inherits FamiliarViajero {
	var afectoPorRick
	
	constructor(nuevoAfectoPorRick) {
		demenciaAportada = -20;
		afectoPorRick = nuevoAfectoPorRick;
	}
	
	method vivirAventura() {
		afectoPorRick += 10	
	}
} 

class Summer inherits FamiliarAfectivo {
	override method puedeIrDeAventura(fecha) {
		return fecha.dayOfWeek() == wednesday;
	}
}

object jerry {
	method puedeIrDeAventura() {
		return false
	}
	
	method demenciaAportada() {
		return 0
	}
	
	method vivirAventura() {
			
	}
}

const morty = new Morty(100)
const beth = new FamiliarAfectivo(20)
const summer = new Summer(10)

const familiares = #{morty, beth, summer, jerry}

