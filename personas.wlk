import marcas.*
import jarras.*
import carpas.*

class Persona {
	
	var property peso
	var property leGustaMusicaTradicional = false
	var property nivelDeAguante = 0 
	var property nacionalidad
	var property listaBirras = []
	
	method estaEbrio() { if (listaBirras.isEmpty()) return  false  
		else return nivelDeAguante < self.alcoholIngerido() * peso 
	}

	method compraJarra(unaJarra) { listaBirras.add(unaJarra) 
	}
	
	method alcoholIngerido() { return listaBirras.map( { cadabirra => cadabirra.contAlchol() } ).sum()
		
	}
	
	method jarrasCompradas() { return listaBirras.size() 
		
	}
	
	method quiereEntrarACarpa(unaCarpa) { return self.leGustaLaBirra( unaCarpa.vendeMarca() ) and
		 self.leGustaMusicaTradicional() == unaCarpa.tieneBandaTradicional()

	}
	
	method puedeEntrar(unaCarpa) { return self.quiereEntrarACarpa(unaCarpa) and 
		unaCarpa.puedeEntrar(self)
	}
	
	method leGustaLaBirra(param1) { return true
		//TODO: Código autogenerado 
	}
	
	method esPatriota() { return listaBirras.all( {cadaBirra => cadaBirra.marca().origen() == self.nacionalidad() }) }
	
}

class Belga inherits Persona {
	
	override method leGustaLaBirra(unaBirra) { return unaBirra.contLupulo() > 4 		
	}
	override method nacionalidad() { return belga 
		
	}
	
}

class Checo inherits Persona {
	
	override method leGustaLaBirra(unaBirra) { return unaBirra.graduacion() > 8 		
	}
	
	override method nacionalidad() { return repCheca 
		
	}
	
}

class Aleman inherits Persona {
	
	override method leGustaLaBirra(unaBirra) { return true		
	}
	
	override method nacionalidad() { return alemania 
		
	}
	
	override method quiereEntrarACarpa(unaCarpa) { return  unaCarpa.personasDentro().size() % 2 == 0 and
		super(unaCarpa)
	}
}

class Argentino inherits Persona {
	override method leGustaLaBirra(unaBirra) { return unaBirra.origen() == argentina 
		
	}
	override method nacionalidad() { return argentina 
		
	} 
		
}

