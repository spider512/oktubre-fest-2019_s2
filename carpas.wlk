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

method servirA(persona,cantBirra) { if ( personasDentro.contain(persona) ) persona.comprarJarra(unaJarra) }

}
