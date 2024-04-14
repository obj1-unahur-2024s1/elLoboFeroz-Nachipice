object lobo {
	var peso = 10
	
	//1.1
	method cuantoPesa(){
		return peso
	}
	
	method estaSaludable(){
		return peso.between(20,150)
		
	}
	
	//1.2
	method aumentoDePeso(cantidad){
		peso = peso + cantidad
	}
	
	method disminuyeDePeso (cantidad){
		peso = 0.max(peso - cantidad)
	}
	
	//1.3
	method sufreCrisis (){
		peso = 10
	}
	
	//2.1
	method comerAlgo(cantidad){
		peso = (cantidad * 0.1) + peso
	}
	
	//2.2
	method correr (){
		peso = peso - 1
	}
	
	//Historia Feroz (2.4)
	method correAlBosque(){
		self.correr()
	}
	
	method seComeALaAbuela(){
		self.correr()
		peso = peso + 50
	}
	
	method comeACaperucita(){
		peso = peso + caperucita.cuantoPesa()
	}
	
	method comerCazador(){
		peso = peso + cazador.cuantoPesa()
	}
	
	//4.2
	method soplarCasas(individuo,cantidad,casa){
		peso = 0.max(peso - individuo.pesoDelChancho() * cantidad - casa.resistencia())
	}
}

//2.4
object cazador{
	 var peso = 100
	 
	 method hiereAlLobo(){
	 	lobo.sufreCrisis() 
	 }
	 
	 method cuantoPesa(){
		return peso
	}
}


//2.3
object caperucita {
	var peso = 60
	
	
	method cargarCanastaDeManzanas(cantidad){
		peso = peso + (cantidad * 0.2)
	}
	
	method cuantoPesa(){
		return peso
	}
	
	//Historia Feroz
	method caperucitaCruzaElBosque(){
		peso = peso - 0.2
	}
}


//2.3
object abuelita {
	var peso = 50
}

//3.1
object casaDePaja{
	var paja = 0
	
	method resistencia(){
		return paja
	}
	
}
object casaDeMadera{
	var madera = 5
	
	method resistencia(){
		return madera
	}
}

object casaDeLadrillo{
	var ladrillo = 2000
	
	method resistencia(){
		return ladrillo * 2
	}
}

object chanchito {
	var peso = 1
		
	method pesoDelChancho(){
		return peso
	}
}
