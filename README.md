# 🔮✨ MagicScript

Este es un lenguaje de programación imperativo, fuertemente tipado con verificación estática y con alcance estático con anidamiento de bloques.

La extensión para leer los archivos debe ser: .ms

## Tipos de datos:

- Caracteres
Por los momentos solo codigo ASCII

```
char z = "z"
```

-String
Nuestro string seran arreglos de caracteres
Al final de cada cadena de caracteres se le asignara el  \0 , para indentificar que la cadena acabó, el tamaño del arreglo sera siempre de uno más. 

```
string *valor = "hola hogwarts"
```

- Enteros
Nuestros enteros usaran complemento a dos. Su tamaño sera de 4 bytes (32 bits), y puede tomar 232 estados distintos de -2147483648 a 2147483647

```
int one = 1
```
- Booleanos
Nuestro valores booleanos son True, False.
```
bool este_es_el_mejor_lenguaje = True
```
- Flotantes
Vamos a utilizar flotantes de precisión sencilla (flout) de 4 bytes, presición doble(double) de 8 bytes, precisión doble largo ( long double ) de 10 bytes.
```
float respuesta = 27.1
```

- Arreglos
Los arreglos son iterables y son accesibles mediante nombre[indice]
Los arreglos serán del tipo homogeneo
Su indice comenzara desde el valor 0 
Su tamaño máximo viene dado por el valor máximo que puede tomar std :: size_t del sistema.
```
int[3] notas = [5,5,5]
```
- Registros
 ```
ebublio gryffindor = {nombre: string, apellido: string, edad:int, mejor_hechizo: string}

gryffindor elegido = {Ricardo, Monascal, 35, comidius }
```
- Cadena de caracteres
- Variantes
- Apuntadores
 ```
int i = 5;
int *p, *q;
p = &i; // Se le asigna a ’p’ la dirección de ’i’
q = p; // Se le asigna a ’q’ la dirección almacenada en ’p’ (la misma de ’i’)
```
-Input
Se utiliza un prefijo para identificar el tipo de dato que recibirá y este tiene que ser del mismo tipo de dato de la variable donde será almacenada.
Estos prefijos seran:
 %c caracter
 %i integer
 %f float
 %d double
 %l long double
 %p pointer
 %s pointer de string
 ```
 int aberto()
    int testInteger
    apareciumf("Enter an integer: ")
    examino("%d", &testInteger)
    aparecium("Number = %d",testInteger)
    reditus(0)
 end
```
##


## Operadores:
- Aritmeticos: +, -, *, div, mod, /, ^
- Asignacion: =
- Relacionales: >, <, <=, >=, !=, ==
- Autoincremento o reduccion: ++, --
- Operadores booleanos: &&, ||, !

## Estructuras de control:

1. If

```
if x > 0
    int z = x + y
else
    int z = y
end
```

2. For

- For - each: se recorren los elementos de un arreglo 

```
// Funcion que imprime todos los impares de un arreglo

int alohomora impares(int[] arr)
    focus i in arr
        if (i mod 2 == 0)
            aparecium(i)
        end
    end
    reditus(0)
end

int aberto()
    impares([3,34,5,23,12,24,8])
end

SALIDA:
        3
        5
        23
```
- For condicional: ejecutar el bloque mientras se cumpla la condicion booleana
```
// Funcion que imprime todos los impares de un arreglo

int alohomora impares(int[] arr)
    geminio (int i= 0 : (i <= length(arr)) : i++) 
        if (arr[i] mod 2 == 0)
            aparecium(i)
        end
    end
    reditus(0)
end

int aberto()
    impares([2,34,5,23,12,24,8])
end

SALIDA:
        5
        23
```
3. While
```
// Funcion que retorna true si un elemento esta en un arreglo
bool alohomora exist(int[] arr, int n)
    int i = 0
    int l = length(arr)
    bool e = true
    giratiempo (arr[i] != 15)
        if (i < l - 1)
            i++
        else
            e = false
            finite
        end
    end
    reditus(e)
end

int aberto()
    int[9] z = [3,4,78,23,12,15,19]
    aparecium(exist(z,15))
    reditus(0)
end
SALIDA:
true
```

## Operadores de un solo Toquen
- break:
  finite: se usa para hacer una parada en un ciclo
  
- pass:
 saltus: es la instrucción que se usa para saltar una condición

## Subrutinas

Son estructuras que nos permiten crear una secuencia de procedimientos a ser ejecutados.

La forma de crear funciones es con la palabra reservada "alohomora", seguido el nombre de la función y en parentesis van los argumentos que usará nuestro procedimiento.

Todos nuestros procedimientos van a retornar algo, y esto se hace con la palabra "aparecium".


```
// Funcion que suma dos numeros

int alohomora suma(int x, int y)
    int z = x + y
    reditus(z)
end
```

```
int alohomora f(int x, int y)
    if x > 0
        int z = x + y
    else
        int z = y
    end
    reditus(z)
end

int aberto()
    int z = f(1, 2)
    aparecium(z)
    reditus(0)
end
```

### Pasaje de parámetros

Los argumentos se pueden pasar por valor o por referencia. Por defecto se pasan los parametros por valor, pero si se quiere pasar por referencia se coloca la palabra "var" antes.

```
int alohomora f(int x, var int y)
    y = 8
    int z = x + y
    reditus(z)
end

int aberto()
    int x = 1
    int y = 2
    int z = f(x, y)
    aparecium(y)
    reditus(0)
end
```

Esto imprimiría 8


Se pueden tener funciones dentro de funciones.


```
int alohomora principal(int x, int y)
    int alohomora suma(int x, int y)
        int z = x + y
        reditus(z)
    end
    z = suma(x, y)
    reditus(z)
end
```

Y se pueden crear funciones recursivas.


## 🌟 Programas de ejemplo

### Hello World!

```
int aberto()
    aparecium("Hello World!")
    reditus(0)
end
```

### Calcular fibonacci

```
int alohomora fibonacci(int n)
  int r = 0
  int s = 1
  int[n] arr  // inicializa un arreglo con n enteros
  giratiempo (r < n)
    arr[s+1] = arr[r] + arr[s]
    r++
    s++
  end
  reditus(arr)
end
int aberto()
    int z = fibonacci(5)
    aparecium(z)
    reditus(0)
end
```

### Multiplicar dos matrices (producto matricial)

```
int[m,n] alohomora multiplicar_matrices(int[m,p] x, int[q,n] y, int m , int p , int q, int n)
   if p != q
    aparecium("no se pueden multiplicar las matrices")
    reditus(0)
  else
    int i = 0
    int j = 0
    int k = 0
    int[m,n] c
    int suma
    giratiempo ( i < m )
        giratiempo ( j < n)
            suma = 0
            giratiempo ( k < p )
                c[i][j] += x[i][k]*y[k][j]
                k++
            end
            j++
        end
        i++
    end
    reditus(C)
  end
end
  
int aberto()
    int[2,2] A = [[1,2]],[3,4]],
    int[2,3] B = [[5,6];[7,8];[9,10]]
    int[2,3] C = multiplicar_matrices (A , B , 2 , 2 , 2 ,3 )
    aparecium(C)
    reditus(0)
end
```


## Lista de palabras reservadas

| Palabra     | Equivalente |
| :----:      | :--:|
| focus       | for (each)|
| geminio     | for (conditional)|
| giratiempo  | while |
| finite      | break |
| alohomora   | function |
| aberto      | main |
| examino     | input |
| aparecium   | print |
| reditus     | return |
| avadakedavra| error |
| saltus      | pass |
|    -        | end |
|    -        | in |
|    -        | if |
|    -        | else |
|    -        | elif |
|    -        | true |
|    -        | false |
|    -        | int |
|    -        | float |
|    -        | char |
|    -        | string |
|    -        | bool |
|    -        | pointer |
|    -        | register |

## LEXER

