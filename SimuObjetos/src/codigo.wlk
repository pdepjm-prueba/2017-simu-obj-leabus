class Empleado {
	var rol
	var estamina
	var tareas
	constructor(_rol,_estamina){
		rol = _rol
		estamina = _estamina.min(10)
	}
	method comerFruta (fruta){
		estamina = self.getEstamina() +fruta.puntosRecuperados()
	}
	method experiencia(){
		return tareas.size() * self.dificultadAcumulada()
	}
	method dificultadAcumulada(){
		return tareas.sum{t => t.getDificultad(self)}
	}
	method getRol(){
		return rol
	}
	
	
	method hacerTarea(tarea){
		if(not tarea.puedoHacerla()){
			throw new NoPuedeHacerTarea()
		}
		else{
			tareas.add(tarea)
			tarea.hacetePor(self)
		}
	}
	
	method tieneHerramientas(){
		rol.getHerramientas() //all
	}
	method perderEstamina(cuanto){
		estamina -= cuanto
	}
	
	
	method puedeDefenderSector(){
		return rol.puedeDefender()
	}
	
	
	method getFuerzaBase(){
		return self.getEstamina() /2 +2
	}
	method getTareas(){
		return tareas
	}
	method getFuerza(){
		return rol.fuerzaFinal(self.getFuerzaBase())
	}
	method getEstamina(){
		return estamina
	}
}
object banana{
	method puntosRecuperados(){
		return 10
	}
}
object manzana{
	method puntosRecuperados(){
		return 5
	}
}
object uva{
	method puntosRecuperados(){
	return 1	
	}
	
}

class Bicliclope inherits Empleado{
	constructor (rol,estamina) = super(rol,estamina){
		
	}
	method factorDevilidad(){
		
	}
	
}
class Ciclope inherits Empleado{
	constructor (rol,estamina) = super(rol,estamina){
		
	}
	override method getFuerza(){
		return super()/2 
		}
	method factorDevilidad(){
		
	}
}

class NoPuedeHacerTarea inherits Exception{
	
}
class Rol {
	
	method fuerzaFinal(fuerzaBase){
		return fuerzaBase
	}
	
	method puedeDefender()
	
}

class Soldado inherits Rol{
	var arma
	var practica =0
	override method fuerzaFinal (fuerzaBase){
		return  fuerzaBase +2
	}
	
	override method puedeDefender(){
		return true
	}
}
class Obrero inherits Rol{
	var herramientas
	override method puedeDefender(){
		return true
	}
	
	override method fuerzaFinal(f){
		return 0
	}
	
}
class Mucama inherits Rol{
	var manosLimpias
	override method puedeDefender(){
		return false
	}
	override method fuerzaFinal(f){
		return 0
	}
}

class Cientifico{
	
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

