# Nombre del lenguaje

Este es un lenguaje de programación imperativo, fuertemente tipado con verificación estática y con alcance estático con anidamiento de bloques.

##Bloques 
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
##Operadores:
- Aritmeticos: +, -, *, div, mod, /, **
- Asignacion: =
- Relacionales: >, <, <=, >=, !=, ==
- Autoincremento o reduccion: ++, --
- Operadores booleanos: &&, ||, !
-
## Estructuras de control:

- If
- For
- While
- Break

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
| focus      | for each |
|    -       | for |
| geminio    | while |
| finite     | break |
| finite     | break |
| incantatem | end (main end) |
| enchantment| function |
| potion     | procedure |
|    -       | end |
|    -       | in |
| leviosa    | if |

## Programas de ejemplo

Calcular fibonacci
```
enchantment fibonacci(int n)
{
  int r = 0;
  int s = 1;
  int[n] arr;  // initialize an array of n one´s
  geminio r < n
  {
    arr[s+1] = arr[r] + arr[s];
    r++;
    s++;
  }
  print arr;
}
```

Multiplicar dos matrices (producto matricial)
```
```
