# Uso de Listas en Prolog

Este repositorio proporciona una explicación detallada sobre cómo trabajar con listas en Prolog. Las listas son una estructura de datos fundamental en Prolog, permitiendo almacenar y manipular colecciones de elementos. Aquí se presentan algunos conceptos clave y ejemplos para entender cómo funcionan las listas en este lenguaje.

## Descripción de Listas en Prolog

En Prolog, las listas se utilizan para almacenar secuencias de elementos. Estas listas pueden contener cualquier tipo de datos, incluidos números, variables, y otros términos. Las listas en Prolog tienen una representación sencilla y son utilizadas de manera extensiva en la programación lógica para modelar relaciones y realizar inferencias.

Las listas en Prolog tienen la siguiente sintaxis:
- **[X1, X2, ..., Xn]**: Representa una lista con los elementos `X1`, `X2`, ..., `Xn`.
- **[]**: Representa una lista vacía.
- **[Head | Tail]**: Una lista cuyo primer elemento es `Head` y el resto de los elementos forman la lista `Tail`.

## Características Principales

- **Listas como hechos**: Se pueden almacenar elementos de una lista como hechos individuales en la base de datos de Prolog.
- **Recursividad**: La manipulación de listas en Prolog se realiza frecuentemente mediante recursión, descomponiendo listas en cabeza y cola.
- **Construcción de listas**: Las listas pueden ser construidas utilizando el operador `.` que coloca un elemento al frente de una lista.

## Manipulación de Listas

En Prolog, las listas pueden ser manipuladas mediante la recursión y el uso de patrones como cabeza (Head) y cola (Tail). A continuación, se explican algunos de los métodos más comunes para trabajar con listas:

### Caso Base de una Lista

El caso base de una lista es la lista vacía `[]`. Esta es la condición que se verifica cuando se llega al final de la lista durante la recursión.

### Recursión en Listas

En Prolog, las listas se manejan comúnmente utilizando recursión. Cada elemento de la lista se puede procesar en el primer paso de la recursión (la cabeza), y el resto de la lista se procesa en pasos posteriores (la cola). Este enfoque es útil para realizar operaciones como contar elementos, buscar valores o realizar transformaciones en los elementos de la lista.

### Ejemplo de Recursión en Listas

El siguiente es un ejemplo de cómo contar los elementos de una lista utilizando recursión:

- **Hechos**: Definimos que `juan`, `pedro`, `carlos` y `diego` son hombres.
- **Caso base**: La lista vacía tiene 0 elementos.
- **Caso recursivo**: Si el primer elemento de la lista es un hombre, contamos ese elemento y seguimos procesando el resto de la lista.

```prolog
% Hechos
hombre(juan).
hombre(pedro).
hombre(carlos).
hombre(diego).

% Caso base
hombres([], 0).

% Caso recursivo
hombres([X|Xs], Cont) :- hombre(X), hombres(Xs, C), Cont is C + 1.

% Caso recursivo
hombres([X|Xs], Cont) :- \+ hombre(X), hombres(Xs, C), Cont is C.
```
