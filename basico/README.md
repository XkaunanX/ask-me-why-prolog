## Base de Conocimiento

La base de conocimiento está formada por hechos que representan la información que el programa utilizará. Estos hechos definen relaciones entre diferentes entidades o conceptos. Los hechos se escriben en forma de afirmaciones y, en un script de Prolog, pueden abarcar varias áreas, como:

- Hechos sobre entidades específicas (por ejemplo, personas, objetos, eventos).
- Relacionar atributos o características de esas entidades (por ejemplo, propiedades, valores).

Los hechos constituyen la información fundamental en un programa Prolog y sirven como punto de partida para las consultas.

## Reglas

Las reglas en Prolog permiten inferir nueva información a partir de la base de conocimiento. Son declaraciones condicionales que indican cuándo se debe aplicar una acción o establecer una relación entre diferentes hechos. Las reglas se componen de:

- **Cabeza de la regla**: Es el resultado que se genera si se cumplen las condiciones.
- **Cuerpo de la regla**: Son las condiciones que deben cumplirse para que la regla se ejecute.

Las reglas permiten a Prolog deducir hechos adicionales que no están explícitamente definidos en la base de conocimiento.

## Consultas

Las consultas son utilizadas para obtener información de la base de conocimiento o para comprobar si ciertas condiciones son ciertas dentro del sistema. Son el punto de interacción entre el usuario y el programa, donde se plantea una pregunta o se solicita una verificación. 

Prolog intenta resolver estas consultas utilizando los hechos y las reglas definidas en el script, proporcionando una respuesta en función de la base de conocimiento.
