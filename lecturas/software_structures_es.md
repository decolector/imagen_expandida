
#Estructuras de {Software}
###Un texto sobre Software y Arte por Casey Reas 

Traducción por Camilo Martínez y Lina Cabrera
Tomado de: http://artport.whitney.org/commissions/softwarestructures/text.html

##Software y Dibujo

Yo quiero que la programación sea tan inmediata y fluida como dibujar y yo trabajo con software en una forma que minimiza los aspectos técnicos. Frecuentemente gasté algunos días creando una pieza central de código técnico y después meses trabajando con ella intuitivamente, modificándola sin considerar los algoritmos centrales. Usé el mismo código base para crear innumerables variaciones mientras operaba en la estructura de código fundamental como si fuera un dibujo -borrando, redibujando, remodelando líneas, moldeando la superficie por medio de acciones instintivas. Durante el último año, empecé removiendo código del proceso de creación. El concepto para el trabajo se desarrolla por entero por medio de bocetos y la pieza final es una descripción escrita comentada sin referencia a una implementación computacional. El trabajo se desarrolla en el vago dominio de imagen y entonces madura hacia las estructuras más definidas del lenguaje natural antes de que cualquier pensamiento sea dado a una implementación específica de máquina. Estoy llamando a este tipo de programa una estructura de software.  
Un factor clave en este desplazamiento fue el trabajo de Sol Lewitt - específicamente sus dibujos sobre pared. Un dibujo sobre pared es un conjunto de instrucciones (un texto descriptivo y diagrama opcional) describiendo una estructura  para ser ejecutada en una pared. Por ejemplo, el programa para Wall Drawing #69 de 1971 dice:

    Líneas no largas, no derechas, sin tocarse, dibujadas aleatoriamente usando cuatro colores, uniformemente dispersas con máxima densidad, cubriendo la superficie completa de la pared.

LeWitt ha escrito cientos de dibujos de pared desde su origen en 1968. Cada vez que un dibujo de pared es reproducido, éste es diferente dependiendo del sitio y del dibujante. Hay una separación completa del concepto del trabajo de su manifestación perceptiva. La relación entre LeWitt y su dibujante es con frecuencia comparada a la relación entre compositor(a) e intérprete, pero creo que es también válido ver la la comparación entre un(a) programador(a) y la entidad de ejecución. LeWitt escribe programas para que las personas las ejecuten e interpreten, más que para máquinas. Esta diferencia le permite trabajar en un lenguaje natural, más que los limitados lenguajes formales del código informático. Él es también capaz de ser ambiguo en sus programas, ya que ellos serán ejecutados por dibujantes hábiles que son capaces de interpretar más que una máquina a la que debe decírsele en forma precisa qué hacer. 

Este ensayo explora las influencias potenciales del trabajo de LeWitt's en trabajos contemporáneos de software. He creado tres ejemplos de estructuras de software. Para definir más a fondo el concepto de estructuras de software he escrito y encargado veinticuatro implementaciones de esas estructuras para aislar diferentes aspectos que incluyen interpretación, material, y proceso.


##Sol y Software

Hay algunas aproximaciones obvias al analizar a LeWitt en relación al software: implementando su trabajo como programas (informáticos); re - programando sus conceptos usando diferentes sistemas de notación; y creando estructuras generativas codificando sus métodos.  Estoy más interesado en relaciones menos obvias y transformacionales, incluyendo la separación entre el concepto del trabajo y su implementación, persiguiendo la intuición, y el potencial para estructuras dinámicas. 



###Separando concepto e implementación.

LeWitt enfatiza continuamente en la separación entre concebir el dibujo su realización.  Él promueve su rol como artista conceptual y minimiza el rol de el dibujante al escribir sentencias como, “Como se vea la obra no es demasiado importante.” [1] Pero está realmente interesado en la percepción final del trabajo cuando escribió que el plan  “necesita ser puesto en una forma óptima,” [2] “la misma tonalidad debería ser mantenida a través del plano entero,” y “la mejor superficie para dibujar es el yeso.” [3] Esta no es una contradicción porque permite muchas variaciones de su plan y solo está preocupado por la falta de consistencia y porque la baja calidad no exprese la estructura. 

Como un artista trabajando con software, estoy fascinado con la decisión de LeWitt de filtrar sus ideas por un representación textual intermedia y por las preferencias de una persona intermediaria. Esto provee la libertad de trabajar a un nivel más abstracto y experimentar más variaciones en el concepto central del trabajo.  La decisión de usar lenguaje natural hace el trabajo más abierto a la interpretación hecha por el dibujarte y también lo hace más accesible a la audiencia.

###Muros y Pantallas

Cada dibujo de pared se adapta al lugar, es decir, la superficie única de cada muro y sus proporciones resultan en un dibujo diferente. LeWitt escribió, “Las propiedades físicas del muro: altura, longitud, color, material, condiciones arquitectónicas e intrusiones son parte necesaria de los dibujos de pared.” [4]  Él considera que las diferencias y las imperfecciones en cada muro como un elemento del dibujo, pero la estructura que el predefine domina la percepción.  La información se mantiene intacta a pesar de los diferentes niveles de ruido en la señal.  En términos de software, analogías pueden ser establecidas entre la pared y la pantalla (diferentes tamaños, resolución ) entre la pantalla y el hardware en el que el software está siendo ejecutado ( diferentes velocidades y sistemas operativos ).  Proyectando el software en un muro crea potenciales similitudes entre los dibujos de pared y las estructuras de software.  


###El Programador Místico

Las primeras tres sentencias en el texto de LeWitt de 1969 “Sentencias sobre Arte Conceptual” dicen: [5]

1. Los Artistas Conceptuales son místicos en vez de racionalistas.  Llegan a conclusiones que la lógica no puede alcanzar.
2. Juicios racionales repiten juicios racionales
3. Juicios irracionales conducen a nuevas experiencias.

LeWitt enfatiza continuamente estos sentimientos en sus escritos al usar consistentemente los términos ilógico e intuitivo.  Si bien éstos términos pueden ser usados para categorizar pensamientos humanos, no pueden ser usados tan fácilmente para definir software.  Muchas piezas de software pueden tener origen en  una decisión rápida e impulsiva, pero tan pronto como son manifiestas en código se vuelven rígidas y fijas cómo lo dictan las restricciones de la tecnología.  Si el programa final fuera especificado a través de una combinación de diagramas y descripciones textuales, sería posible para el artista trabajar más tiempo y más frecuentemente en un espacio mental indefinido.


###Estructura dinámica

LeWitt ha pasado su carrera entera hasta la fecha planeando dibujos de pared con estructuras estáticas. Dibujar sobre muros restringe la forma a un lugar específico y por lo tanto mantiene las mismas relaciones entre elementos conforme pasa el tiempo.  En software es posible crear estructuras definiendo relaciones dinámicas entre elementos. En un dibujo de pared el plan puede declarar “dibuje una línea” pero en una estructura de software el plan puede declarar “dibuje una línea moviéndose de izquierda a derecha.”  En un dibujo de pared el plan puede declarar “los elementos no se tocan” pero en una estructura de software el plan puede declarar “cuando dos elementos se tocan entre sí, crear una nueva línea.”  Los elementos en una estructura de software pueden moverse y poseer comportamientos en relación a otros elementos, mientras que los dibujos de pared contienen relaciones dinámicas en la mente de los artistas y dibujantes, pero permanecen estáticas después del que el dibujo se ha completado.
