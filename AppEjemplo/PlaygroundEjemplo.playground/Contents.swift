import Foundation

var greeting = "Hello, playground"
let screen = "hola"
var a = Int(22.3)+34
let cadena:String = "mi cadena \(screen)"+String(a)
/*
screen.contains("a")
greeting == screen
greeting.isEmpty
for v in screen {
    print(v)
}
var arreglo = [1,2,3,0]
for a in arreglo {
    arreglo.insert(a*10, at:3)
    print(arreglo)
}
//crear diccionarios
let diccionarioUno  = Dictionary<String,Int>()
var diccionarioDos =    [String:Int]()
diccionarioDos = ["juan":1,"jose":2,"jos":3]
//tupla
var persona = ("Juanes",23,"O+","Ing en Informática")
var (nombre,edad,tipoSangre,profesion) = persona
var personasDos = (nombre:"Juan",apellido:"alarcón",edad:2)
print(personasDos.edad)

// enumeraciones

enum Persona{
    case name
    case apellido
    case celular
    case cedula, edad
}
var dataPersona: Persona = .name
var input = "juan"
dataPersona = .edad
input = String(12)
//rangos en arreglos
print(arreglo[0...3])
 */
//switch
var opt: String = "CO"
switch opt{
case "CO":
    print("Colombia")
case "ARG":
    print("Argentina")
default:
    print("Error")
}
var numero:Int=0
repeat{
    numero+=1
    print("Soy el número \(numero)")
}while(numero<=10)
//funciones
//así se declara una función
//func name(params)->[type]{}
func isPrimeOrNot(number:Int=1)->String{
    if number % 2 == 0{
        return "true"
    }else{
        return "false"
    }
}
//así se pasan valores por parámetro
print(isPrimeOrNot(number:36))

//Clousures:
let funcionSuma = {
    (numeroA:Int,numeroB:Int)->Int in
    return numeroA + numeroB
}
print(funcionSuma(12,20))
//opcionales: let es constante y var variable
var _miEdad:String?
if let tengoEdad = _miEdad{
    print("Hola, tengo \(tengoEdad)")
}
//Guard
func validarNulo(){
    guard let miEdad_ = _miEdad else{
        print("estoy vacío")
        return
    }
 print("si tengo valor \(miEdad_)")
}
//manejo de errores
func sumaDeNums(numberA:Int?,numberB:Int?) throws ->Int{
    //nil = null
    if numberA == nil && numberB == nil{
        throw SumError.firstNumberNil
    }else if numberA!<0{
        throw SumError.numbersMinorZero
    }
    return numberA!+numberB!
}
enum SumError: Error{
    case firstNumberNil
    case numbersMinorZero
}
// llamando la función
do{
    print(try sumaDeNums(numberA: 23, numberB: 24))
}catch SumError.numbersMinorZero{
    print("No puede ser números negativos")
}
//Sets avanzado
var conjuntoUno = Set<String>()
//var conjuntoDos = Set<String> = ("Juan","pepe","jose")
//conjuntoDos.insert("esteban")
//Operaciones entre conjuntos
var conjuntoN:Set = [2,3,4,5,6,11]
var conjuntoM:Set = [2,3,20,30,45]
print(conjuntoM.intersection(conjuntoN))
print(conjuntoM.symmetricDifference(conjuntoN))
print(conjuntoM.union(conjuntoN))
