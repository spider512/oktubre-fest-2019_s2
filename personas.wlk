import marcas.*
import jarras.*


class Persona {
	
	var property peso
	var property jarrasCompradas
	var property leGustaMusicaTradicional = false
	var property nivelDeAguante
	var property nacionalidad
	var property listaBirras = []
	
	method estaEbrio() { return nivelDeAguante < jarrasCompradas * peso 
	}

	method compraJarra(unaJarra) { listaBirras.add(unaJarra) 
	}
	
	method alcoholIngerido() { return listaBirras.map(listaBirras.contAlchol()).sum() 
		
	}
	
	method quiereEntrarACarpa(unaCarpa) { return self.leGustaLaBirra(unaCarpa.vendeMarca()) and
		 self.leGustaMusicaTradicional() == unaCarpa.tieneBandaTradicional()

	}
	
	method puedeEntrar(unaCarpa) { return self.quiereEntrarACarpa(unaCarpa) and 
		unaCarpa.puedeEntrar(self)
	}
	
	method leGustaLaBirra(param1) { return 0
		//TODO: Código autogenerado 
	}
	
}

class Belga inherits Persona {
	
	override method leGustaLaBirra(unaBirra) { return unaBirra.contLupulo() > 4 		
	}
	
}

class Checo inherits Persona {
	
	override method leGustaLaBirra(unaBirra) { return unaBirra.graduacion() > 8 		
	}
	
}

class Aleman inherits Persona {
	
	override method leGustaLaBirra(unaBirra) { return true		
	}
	
}
