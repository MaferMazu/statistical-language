# Nombre del lenguaje

Este es un lenguaje de programación imperativo, fuertemente tipado con verificación estática y con alcance estático con anidamiento de bloques.

## Bloques 
Se separan o anidan con llaves, de modo que cada bloque se compone de una llave que abre una lista de instrucciones y finaliza con
una llave que cierre. Ejemplo

{
  Instruccion 1 ;
  Instruccion 2 ;
  ...
}

-Condiciones sobre bloques: 

* Cada bloque esta compuesto por un par de llaves { }
* Los bloques deben estar detro de una funcion o anidado dentro de otro bloque.
* un bloque no debe estar vacio (debe existir al menos una instruccion dentro de el). 

## Instrucciones
Las instrucciones se separan utilizando el simbolo punto y coma (;) una instruccion corresponde a una de las siguientes condiciones:

* Asignacion
* Llamado a una funcion o procedimiento
* Operadores de autoincremento o reduccion.

## Tipos de datos:

- Caracteres
- Enteros
- Booleanos
- Flotantes

- Arreglos
- Registros
- Cadena de caracteres
- Variantes
- Apuntadores


## Estructuras de control:
1. If
- if bloque 1 ese bloque 2 end
2. For
- for iterador in arreglo bloque end
3. While
- while condiconal bloque end
4. Condicional ?:
- condicional? bloque 1 : bloque 2
## Operadores de un solo Toquen
- Break
- Next

## Otras cosas:

- Mecanismo de selección
- Repetición 

(determinada)
- Subrutinas 

(procedimientos, funciones, pasajes por valor y referencia y recursión)

## Ejemplo de nuestro Hello World!

```

```

## Lista de palabras reservadas

| Palabra    | Equivalente |
| :----:     | :--:|
| focus      | for each|
| geminio    | for conditional|
| giratiempo | while |
| finite     | break |
| alohomora  | function |
| aberto     | main |
| aparicio   | print |
|    -       | end |
|    -       | in |
|    -       | if |
|    -       | else |
|    -       | elif |


## Programas de ejemplo

Calcular fibonacci
```
int alohomora fibonacci(int n)
  int r = 0
  int s = 1
  int[n] arr  // initialize an array of n one´s
  geminio (r < n)
    arr[s+1] = arr[r] + arr[s]
    r++
    s++
  end
  aparecium arr;
end
int aberto()
    int z = fibonacci(5)
    aparicio z
end
```

Multiplicar dos matrices (producto matricial)
```
```
## LEXER

-Palabras Reservadas: true, false, if, else, elif, Array, end,for, in, while, Break, Next, 
