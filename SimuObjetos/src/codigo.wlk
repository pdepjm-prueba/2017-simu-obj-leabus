class Empleado {
	var rol
	var estamina
	constructor(_rol,_estamina){
		rol = _rol
		estamina = _estamina
	}
	method getRol(){
		return rol
	}
	method getFuerzaBase(){
		return self.getEstamina() /2 +2
	}
	method getFuerza(){
		return rol.fuerzaFinal(self.getFuerzaBase())
	}
	method getEstamina(){
		return estamina
	}
}

class Bicliclope inherits Empleado{
	constructor (rol,estamina) = super(rol,estamina){
		
	}
	
}
class Ciclope inherits Empleado{
	constructor (rol,estamina) = super(rol,estamina){
		
	}
	override method getFuerza(){
		return super()/2 
		}
}

class Rol {
	method getHerramientas()
	method fuerzaFinal(fuerzaBase){
		return fuerzaBase
	}
}

class Soldado inherits Rol{
	var arma
	var practica
	method fuerza(fuerzaBase){
		return practica + fuerzaBase
	}
}
class Obrero inherits Rol{
	var herramientas
	
	override method getHerramientas(){
		return herramientas
	}
	
}
class Mucama{
	var manosLimpias
}

class Cientifico{
	method arreglaMaquina(empleado,maquina){
		if (empleado.estamina() == maquina.complejidad() && empleado.herramientas() == maquina.herramientasRequeridas())
		
	}
}

class Maquina{
	var complejidad
	var herramientasRequeridas
	var arreglada 
	constructor (_complejidad,_herramientasRequeridas){
		complejidad = _complejidad
		herramientasRequeridas= _herramientasRequeridas
	}
	
	method getHerramientasRequeridas(){
		return herramientasRequeridas
	}
}

class Tarea {
	var dificultad
	var empleado
	var maquina
	constructor (_empleado,_maquina){
		empleado = _empleado
		maquina = _maquina
	}
	//ArreglarMaquina = new Tarea(empleado)
	//arreglarMaquina.
	method realizarTarea()
}