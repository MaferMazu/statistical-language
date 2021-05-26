# 🔮✨ MagicScript

Este es un lenguaje de programación imperativo, fuertemente tipado con verificación estática y con alcance estático con anidamiento de bloques.

La extensión para leer los archivos debe ser: .ms

## Tipos de datos:

- Caracteres

```
char z = "z"
```
- Enteros

```
int one = 1
```
- Booleanos
```
bool este_es_el_mejor_lenguaje = True
```
- Flotantes
```
float respuesta = 27.1
```

- Arreglos
- Registros
- Cadena de caracteres
- Variantes
- Apuntadores


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
- for iterador in arreglo bloque end
3. While
- while condiconal bloque end

## Operadores de un solo Toquen
- break
- next

## Subrutinas

Son estructuras que nos permiten crear una secuencia de procedimientos a ser ejecutados.

La forma de crear funciones es con la palabra reservada "alohomora", seguido el nombre de la función y en parentesis van los argumentos que usará nuestro procedimiento.

Todos nuestros procedimientos van a retornar algo, y esto se hace con la palabra "aparecium".


```
// Funcion que suma dos numeros

int alohomora suma(int x, int y)
    int z = x + y
    aparecium(z)
end
```

```
int alohomora f(int x, int y)
    if x > 0
        int z = x + y
    else
        int z = y
    end
    aparecium(z)
end

int aberto()
    int z = f(1, 2)
    aparicion(z)
    aparecium(0)
end
```

### Pasaje de parámetros

Los argumentos se pueden pasar por valor o por referencia. Por defecto se pasan los parametros por valor, pero si se quiere pasar por referencia se coloca la palabra "var" antes.

```
int alohomora f(int x, var int y)
    y = 8
    int z = x + y
    aparecium(z)
end

int aberto()
    int x = 1
    int y = 2
    int z = f(x, y)
    aparicion(y)
    aparecium(0)
end
```

Esto imprimiría 8


Se pueden tener funciones dentro de funciones.


```
int alohomora principal(int x, int y)
    int alohomora suma(int x, int y)
        int z = x + y
        aparecium(z)
    end
    z = suma(x, y)
    aparecium(z)
end
```

Y se pueden crear funciones recursivas.


## 🌟 Programas de ejemplo

### Hello World!

```
int aberto()
    aparicion("Hello World!")
    aparecium(0)
end
```

### Calcular fibonacci

```
int alohomora fibonacci(int n)
  int r = 0
  int s = 1
  int[n] arr  // inicializa un arreglo con n enteros
  geminio (r < n)
    arr[s+1] = arr[r] + arr[s]
    r++
    s++
  end
  aparecium(arr)
end
int aberto()
    int z = fibonacci(5)
    aparicion(z)
    aparecium(0)
end
```

### Multiplicar dos matrices (producto matricial)

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

## LEXER

-Palabras Reservadas: true, false, if, else, elif, Array, end,for, in, while, Break, Next, 
