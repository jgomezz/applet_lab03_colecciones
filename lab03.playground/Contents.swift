import Cocoa

 /*
let calificaciones = [85,90,78,92,88]
var suma = 0

for nota in calificaciones {
    suma += nota
}

let promedio = Double(suma)/Double(calificaciones.count)

print("El promedio del estudiante es : \(promedio)")

// */

  /*

var inventario = ["Cien años de soledad":3,
                  "Don Quíjote":5,
                  "La cas de los espíritus":2]

let libroBuscado = "Don Quíjote"

if let cantidad = inventario[libroBuscado] {
    print("Hay \(cantidad) copias de \(libroBuscado) disponibles.")
} else {
    print("El libro \(libroBuscado) no esta disponible.")
}

// */


 /*

let futbol: Set = ["Ana","Luis","Carlos","Lucia"]
let basquetbol: Set = ["Carlos","Lucia","Pedro","Maria"]

let estudiantesUnicos = futbol.union(basquetbol)

print("Numero de estudiantes unicos en activiaddes: \(estudiantesUnicos.count)")

// */

 /*

// Caso 01

//

var estudiantes = ["Jaime","Juan", "Elena","David","Sofia"]
var calificaciones:[Double] = []

//
calificaciones.append(8.5)
calificaciones.append(13)
calificaciones.append(16.5)
calificaciones.append(13.5)
calificaciones.append(9)

//1.- Acceder  a los elementos del Array
// Mostrar la Primera calificación
print(calificaciones[0])
// Mostrar la Calificacion de Elena
print(calificaciones[2])

// 2.- Modificar Elementos
// Actualizar la Calificacion de Jaime
calificaciones[0] = 19.5
// Mostrar la calificación de Jaime
print(calificaciones[0])

// 3.- Promedio
// Calcular el Promedio
var suma = 0.0
for nota in calificaciones {
    suma += nota
}

let promedio = suma/Double(calificaciones.count)

// Mostrar el promedio
print("El promedio del estudiante es : \(promedio)")

// 4.- Analizar otra forma de calcular el promedio mediante el método – REDUCE

let promedioDeNuevo = calificaciones.reduce(0, +)/Double(calificaciones.count)
print("El promedio del estudiante es : \(promedioDeNuevo)")


// 5.- Encontrar  y mostrar la Calificación más Alta
if let max = calificaciones.max() {
    print("Maximum value is : \(max)")
} else {
    print("Array is empty")

}

// 6.- Filtrar a estudiantes aprobados (Calificación >=13)

// let estudiantesAprobados = calificaciones.filter{ $0 > 13}
// print(estudiantesAprobados)
var estudiantesAprobados: [String] = []
var calificacionesAprobados: [Double] = []

for i in 0..<estudiantes.count {
    if calificaciones[i] >= 13 {
        estudiantesAprobados.append(estudiantes[i])
        calificacionesAprobados.append(calificaciones[i])
    }
}
// 7.- Mostrar la lista de estudiantes que cumplen con ese criterio
print("Estudiantes aprobados:")
for i in 0..<estudiantesAprobados.count {
    print("\(estudiantesAprobados[i]): \(calificacionesAprobados[i])")
}

// 8.- Ordenar  y mostrar las calificaciones

let calificacionesOrdenadas = calificaciones.sorted()
print("\nCalificaciones ordenadas:")
for calificacion in calificacionesOrdenadas {
    print(calificacion)
}


// */

// /*

// Caso 02


// */
