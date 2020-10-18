import main.familiares.*

object rick {
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
			throw new Exception()
	}
	
	method alterarDemencia(acompaniante) {
		const demenciaAportada = acompaniante.demenciaAportada();
		demencia += demenciaAportada
		
		self.validarDemenciaTolerable();
	}
	
	method validarDemenciaTolerable() {
		if (demencia > 100)
			throw new Exception()
	}
}
