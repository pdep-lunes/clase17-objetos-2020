import main.familiares.*

class AcompanianteNoPuedeIrDeAventura inherits Exception {}
class MuyDementeParaIrDeAventura inherits Exception {}

class Rick {
	var demencia
	
	method irDeAventurasCon(personaje, fecha) {
		const acompaniante = self.acompaniante(personaje, fecha);
		self.alterarDemencia(acompaniante);
		acompaniante.vivirAventura();
	}
	
	method acompaniante(personaje, fecha) {
		var acompaniante;
		if (personaje != null)
			acompaniante = personaje
		else
			acompaniante = familiares.anyOne();
		
		self.validarAcompanianteViajero(acompaniante, fecha);
		
		return acompaniante;	
	}
	
	method validarAcompanianteViajero(acompaniante, fecha) {
		if (!acompaniante.puedeIrDeAventura(fecha))
			throw new AcompanianteNoPuedeIrDeAventura(message="El acompañante no puede viajar el " + fecha.toString())
	}
	
	method alterarDemencia(acompaniante) {
		const demenciaAportada = acompaniante.demenciaAportada();
		
		self.validarDemenciaTolerable(demenciaAportada);
		
		demencia += demenciaAportada
	}
	
	method validarDemenciaTolerable(demenciaAportada) {
		if (demencia + demenciaAportada > 100)
			throw new MuyDementeParaIrDeAventura(message="La demencia de Rick es mayor a 100, por lo que no puede viajar")
	}
	
	method setDemencia(nuevaDemencia) {
		demencia = nuevaDemencia
	}
}

const rick = new Rick(demencia = 60)
