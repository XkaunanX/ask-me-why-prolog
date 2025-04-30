## Operadores en Prolog

### Operadores Aritméticos

Prolog permite realizar operaciones aritméticas básicas mediante operadores integrados. Estos operadores se utilizan para calcular expresiones matemáticas y son esenciales para manipular valores numéricos.

- **+**: Suma
- **-**: Resta
- **\***: Multiplicación
- **/**: División
- **div**: División entera
- **mod**: Módulo
- **is**: Asignación de una expresión a una variable y evaluación aritmética

El operador `is` es utilizado para evaluar expresiones aritméticas y asignar el resultado a una variable. Es importante notar que `is` solo se puede usar con expresiones aritméticas, y no con relaciones lógicas.

### Comparación de Valores

Prolog proporciona operadores para comparar valores y determinar la relación entre ellos:

- **=**: Unificación (igualdad lógica)
- **\=**: Diferencia (no unificación)
- **<**: Menor que
- **=<**: Menor o igual que
- **>**: Mayor que
- **>=**: Mayor o igual que

### Operadores de Control de Flujo

Prolog usa operadores para controlar el flujo de ejecución y realizar consultas en la base de hechos y reglas:

- **,**: Conjunción (AND lógico)
- **;**: Disyunción (OR lógico)
- **fail**: Fuerza la falla de una consulta
- **cut (!) **: Limita el backtracking

### Operadores de Lista

Prolog también permite trabajar con listas mediante operadores especiales:

- **.**: Constructor de listas, agrega un elemento a una lista.
- **[]**: Representa una lista vacía.
  
### Operadores de Entrada/Salida (IO)

Prolog permite interactuar con el sistema de archivos y el usuario mediante operaciones de entrada y salida (IO). Estas operaciones permiten leer y escribir datos desde y hacia el sistema, lo cual es fundamental para interactuar con aplicaciones externas o el usuario.

- **write/1**: Escribe un término en la salida estándar.
- **writeln/1**: Escribe un término seguido de un salto de línea.
- **read/1**: Lee un término desde la entrada estándar.
- **nl/0**: Imprime un salto de línea.
