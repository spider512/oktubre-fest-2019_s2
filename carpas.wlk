import personas.*
import marcas.*
import jarras.*



class Carpas { 
	
	var property limiteDeGente = 0
	var property personasDentro = []
	var property tieneBandaTradicional = false
	var property vendeMarca
	
	
	method puedeEntrar(persona) { return not persona.estaEbrio() and
	limiteDeGente > personasDentro.size()
	}
	
	method entrarA(persona) { if (self.puedeEntrar(persona)) self.personasDentro().add(persona)
	else self.error("Por algo sera que no entras!")
	}
	
	method sacarA(persona) { personasDentro.delete(persona) }

	method servirA(persona,cantBirra) { if ( personasDentro.contains(persona) ) {
	const jarraNueva = new Jarras()
	jarraNueva.capacidad(cantBirra)
	jarraNueva.marca(vendeMarca)
	persona.compraJarra(jarraNueva) }
	else self.error("Esta persona no esta en la carpa!")
	
	}
	
	method ebriosEmpedernidos() { return
		 personasDentro.filter( {cadaPersona => cadaPersona.listaBirras().all({ cadajarra => cadajarra.capacidad() >= 1 })} ).size() 
		
	}

}
