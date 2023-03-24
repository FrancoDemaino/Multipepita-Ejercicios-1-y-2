object pepita {
	
	var energia = 0
	var quiereVolar = 0
	
	method comer(gramos) {
		energia = energia + 4 * gramos
	}
	
	method volar(kilometros) {
		energia = energia - (10 + kilometros)  
	}
	
	method energia() {
		return energia
	}
	
	method estaDebil() {
		return energia<50
	}
	
	method estaFeliz() {
		return energia>500 && energia<1000
	}
	
	method cuantoQuiereVolar() {
		if (energia % 20 == 0 && energia > 300 && energia < 400) quiereVolar = (energia / 5) + 10 + 15
		else if (energia % 20 != 0 && energia > 300 && energia < 400) quiereVolar = (energia / 5) + 10 
		else if (energia % 20 == 0 && energia < 300 || energia > 400) quiereVolar = (energia / 5) + 15
		else quiereVolar = energia / 5
    	self.volar(quiereVolar)
    }
	
	method salirAComer() {
		self.volar(10)
	}
	
	method comida(alimento) {
		energia += alimento.energia()
	}
	
	method haceLoQueQuieras(){
		if (energia < 50) "Venga alpiste"
		else if (energia > 500 && energia < 1000) self.volar(8)
		else "No hace nada"
	}
	
}

object mijo {
	
	var energia = 15
	
	method mojarse() {
		energia = 15
	}
	
	method secarse() {
		energia = 20
	}
	
	method energia() {
		return energia
	}
}

object canelones {
	
	var energia = 20 
	
	method conSalsa() {
		energia = 25
	}
	
	method sinNada() {
		energia = 20
	}
	
	method conQueso() {
		energia = 27
	}
	
	method conSalsaYQueso() {
		energia = 20
	}
	
	method energia() {
		return energia
	}
	
}
