class Rubias {
	var property origen
	var property contLupulo   // gramos por litro
	var property graduacion
	
}

class Negras {
	var property origen
	var property contLupulo   // gramos por litro
	var property graduacion
	var property graduacionReglamentaria
	
method graduacion() { return (graduacionReglamentaria and contLupulo * 2).min() }
	
}

class Rojas {
	var property origen
	var property contLupulo   // gramos por litro
	var property graduacion
	var property graduacionReglamentaria
	
	
method graduacion() { return (graduacionReglamentaria and contLupulo * 2).min() * 1.25 }
	
}