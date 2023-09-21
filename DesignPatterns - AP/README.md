# DesignPatterns

- Curso: https://meli.udemy.com/course/patrones-de-diseno-swift
- Enlace de interés: https://refactoring.guru/design-patterns/swift 

# Tipos de patrones

## Patrones Creacionales

Son utilizados en lugar de la instancia directa a través de constructor. 
- Factory Method
- Abstract Factory
- Builder
- Prototype
- Singleton

## Patrones Estructurales

Tratan la composición de la clase y objetos. Separan la interfaz de la implementación con el objetivo de crear estructuras más complejas. Nos garantizan que cuando una de las partes cambia, no es necesario cambiar toda la aplicación 
- Adapter
- Bridge
- Composite
- Decorator
- Facade
- Flyweight
- Proxy

## Patrones Comportamiento
Se encargan de definir las formas en las que interactúan y reparten responsabilidades las distintas clases y objetos. 
- Chain of Responsibility
- Command
- Interpreter
- Iteractor
- Mediator
- Memento
- Observer
- State
- Strategy
- Template method
- Visitor

# Beneficios de usar Patrones de Diseño
- Ofrecen una manera de solucionar problemas relacionados con el desarrollo de software utilizando una solución ampliamente probada. 
- La comunicación entre los programadores es mucho más eficiente. Puesto que utilizando un patrón todo el equipo entiende el código a la primera. 

# UML - Lenguaje Unificado de Modelo

<div>
	<p align= 'center'>
		<img src="https://github.com/marianobattaglia/design-patterns-swift/assets/94753551/184a0b95-335d-4738-bdf8-ec0cc27d5a77" width="500">
	</p>
</div>

### Diagrama de clases

<div>
	<p align= 'center'>
		<img src="https://github.com/marianobattaglia/design-patterns-swift/assets/94753551/6809401f-bfcc-4fe6-bb39-479d3820574e" width="500">
	</p>
</div>

### Símbolo de herencia 

<div>
	<p align= 'center'>
		<img src="https://github.com/marianobattaglia/design-patterns-swift/assets/94753551/955db346-73d9-4f75-a686-d5c75ed54476" width="500">
	</p>
</div>

### Símbolo Asociación 

<div>
	<p align= 'center'>
		<img src="https://github.com/marianobattaglia/design-patterns-swift/assets/94753551/242b7d64-adbc-47d7-9d1f-57a8b79d6af4" width="500">
	</p>
</div>

### Símbolo Dependencia

<div>
	<p align= 'center'>
		<img src="https://github.com/marianobattaglia/design-patterns-swift/assets/94753551/1e146bf5-46b4-4994-8fd9-e4d7ceeed325" width="500">
	</p>
</div>

### Símbolo Agregación

<div>
	<p align= 'center'>
		<img src="https://github.com/marianobattaglia/design-patterns-swift/assets/94753551/6ea08539-08af-46dc-ad9d-77dadd030403" width="500">
	</p>
</div>

### Símbolo Composición

<div>
	<p align= 'center'>
		<img src="https://github.com/marianobattaglia/design-patterns-swift/assets/94753551/c1ae7233-8e13-4d13-8253-ee8c9c7a6055" width="500">
	</p>
</div>

# Patrones Creacionales

## Factory Method

<div>
	<p align= 'center'>
		<img src="https://github.com/marianobattaglia/design-patterns-swift/assets/94753551/969c91a7-f30d-45a2-a883-6023ab2101a1" width="500">
	</p>
</div>

Ejemplo: Creación de un Payment Factory.

<div>
	<p align= 'center'>
		<img src="https://github.com/marianobattaglia/design-patterns-swift/assets/94753551/050a5304-eaa6-4ae9-8d72-38aba9258f94" width="500">
	</p>
</div>

### Ventajas
- Si tenemos un nuevo método de pago, creamos una nueva clase y lo agregamos al enum sin afectar el resto de la lógica. 
- Ofrece más flexibilidad al momento de generar un objeto.
- Permite desacoplamiento de código.

## Abstract Factory

<div>
	<p align= 'center'>
		<img src="https://github.com/marianobattaglia/design-patterns-swift/assets/94753551/f1b9e954-e507-4d45-aef3-a7d1946a9e73" width="500">
	</p>
</div>

Similar a Factory Method pero orientado a la combinación de familias de productos. 

### Ventajas
- Ocultamos a los clientes las clases de implementación. 
- Los clientes pueden manipular los objetos a través de clases abstractas. Aisla el código del cliente de las clases concretas. 
- Facilita el intercambio de familias de objetos. 

### Desventajas
 - Para crear nuevos productos se tiene que modificar tanto la Fábrica Exacta como la Fábrica Concreta. 

## Builder
Un único procedimiento de creación de objetos. Crea objetos a partir de un “objeto fuente”.

<div>
	<p align= 'center'>
		<img src="https://github.com/marianobattaglia/design-patterns-swift/assets/94753551/26dd0f3b-3130-4f9a-b6bf-c92c47459a51" width="500">
	</p>
</div>

### Ventajas
- Reduce el acoplamiento.
- Permite crear estructuras complejas respetando una interfaz común de la clase Builder.
- El código de construcción es independiente de la representación. 
- Mayor control en el proceso de creación del objeto. 
### Desventajas
- Utilizarlo bien introduce cierta complejidad a la hora de programar.

## Prototype
Crea objetos a partir de un modelo. Crea en base a un prototipo. Permite que un objeto cree una copia de sí mismo sin conocer su clase, etc. 
Para implementarlo se debe heredar de la clase NSCopying

<div>
	<p align= 'center'>
		<img src="https://github.com/marianobattaglia/design-patterns-swift/assets/94753551/de4a4ad1-9718-428b-a1d3-7dcee57fe445" width="500">
	</p>
</div>

- Interfaz: Metodo clone que permite crear prototipo
- ConcretePrototype: Devuelven una copia de el mismo
- Cliente: Se encarga de utilizar el Prototype.

### Ventajas
- Clonar un objeto es siempre más rápido que crearlo. 
- Se puede usar cuando crear es muy costoso. 
- Oculta la complejidad de crear objetos y simplifica el tiempo de ejecución. 
- Permite desacoplar objetos.
### Desventaja
- Debemos escribir más código. 


## Singleton
Patrón de diseño creacional que nos permite que una aplicación pueda tener solo una instancia de cualquier clase. 
Permite que el mismo objeto sea siempre compartido en distintas partes del código, garantizando que una clase tenga una sola instancia, proporcionando un punto de acceso global (desde cualquier punto de nuestra aplicación).
El uso común es acceso a BD o web service, donde podemos hacer solicitudes desde cualquier parte de nuestra aplicación, pero queremos siempre tener una única instancia. 

<div>
	<p align= 'center'>
		<img src="https://github.com/marianobattaglia/design-patterns-swift/assets/94753551/ac53e268-a5d8-44e4-8a73-74a8552c1bbc" width="500">
	</p>
</div>

El siguiente código explica como siempre será la misma instancia:

```swift 
func testSingleton() {
        let instancia1 = CardSingleton.shared
        let instancia2 = CardSingleton.shared
        
        if (instancia2 === instancia1) {
            print("La instancia1 es la misma que instancia2")
        }
        
        instancia1.doSomething()
}
```

### Ventajas
- Permite tener el acceso controlado a la única instancia de la clase. 
### Desventaja
- Se considera un “antipatrón” ya que es muy difícil de testear su código ya que guarda su misma referencia, y durante los tests no se puede cambiar. 
- En lugar de utilizar singleton, se suele implementar el patrón “Inyección de dependencias” para crear las clases que se quieren. 

# Patrones de Comportamiento

## Chain of Responsability
Patrón de comportamiento  que permite acoplar el emisor de una petición a su receptor, dando a más de un objeto la posibilidad de responder a dicha petición. 
Permite que varias clases puedan manejar una solicitud, independientemente de cualquier otro objeto a lo largo de la cadena. 
Una vez realizada la solicitud se termina la cadena. 

<div>
	<p align= 'center'>
		<img src="https://github.com/marianobattaglia/design-patterns-swift/assets/94753551/6da36d0e-f4aa-437a-ae56-7c0424fb190c" width="500">
	</p>
</div>

### Ventajas
- Reduce grado de acoplamiento
- El objeto no necesita conocer la estructura de la cadena
- Se puede cambiar miembros y su orden
- Permite agregar y eliminar responsables de la cadena facil y rapido
## Desventaja
- No se garantiza la recepción de la solicitud
- Es un patrón difícil de debugear

## Command
Command es un patrón de diseño de comportamiento que convierte una solicitud en un objeto independiente que contiene toda la información sobre la solicitud. Esta transformación te permite parametrizar los métodos con diferentes solicitudes, retrasar o poner en cola la ejecución de una solicitud y soportar operaciones que no se pueden realizar.

<div>
	<p align= 'center'>
		<img src="https://github.com/marianobattaglia/design-patterns-swift/assets/94753551/00934e9d-b6c2-4991-b4ce-ba3f8c6c7e69" width="500">
	</p>
</div>

### Ventajas
- Código extensible, podemos agregar nuevos comandos sin cambiar el código existente.
### Desventajas
- Incrementa el número de clases para cada comando. 

## Iterator
Permite acceder de manera secuencial a los elementos de una colección sin exponer su representación subyacente (lista, pila, árbol, etc.). 

<div>
	<p align= 'center'>
		<img src="https://github.com/marianobattaglia/design-patterns-swift/assets/94753551/e7386ee6-f9b5-4d7c-8a4a-31d990e579f8" width="500">
	</p>
</div>

### Ventajas
- Se puede acceder a una colección de objetos sin conocer el código de los objetos. 
- Utilizarlo es fácil de implementar y utilizar varios recorridos al mismo tiempo. 
- Simplifican el código de las colecciones ya que el código que hacen los recorridos están en los iteradores y no en la colección 

## Mediator
Permite el desacoplamiento de los objetos introduciendo una capa intermedia para que la interacción de esta, para hacer el sistema más mantenible.

<div>
	<p align= 'center'>
		<img src="https://github.com/marianobattaglia/design-patterns-swift/assets/94753551/c94773f8-c6bc-4739-8def-bc9b90f9c83d" width="500">
	</p>
</div>

### Ventajas
- Reduce el acoplamiento entre los objetos
- Un objeto no necesita conocer a todos los objetos con que se van a comunicar, sólo al Mediator. Pasando a ser un sistema centralizado.


## Memento
Punto de restauración en el ciclo de vida de un objeto. Permite capturar y exportar el estado interno de un objeto para que luego se pueda restaurar sin romper la encapsulación. 

<div>
	<p align= 'center'>
		<img src="https://github.com/marianobattaglia/design-patterns-swift/assets/94753551/f568970f-c91e-4658-8a52-d33fe1933122" width="500">
	</p>
</div>

### Ventajas
- Podemos descartar cambios no deseados y restaurarlos a un estado deseado o estable.
- No compromete la encapsulación asociada con los objetos que participan en el modelo.
- Ofrece alta cohesión en el código. 
- Proporciona una técnica de recuperación de datos fácil y sencilla.
### Desventaja
- Un alto número de Mementos requiere más almacenamiento. 
- Conlleva más tiempo de mantenimiento. 

## Observer
Permite implementar una estratégia que reacciona a los cambios de estado en el objeto.
Lo usamos cuando necesitamos detectar cambios en el tiempo de ejecución y queremos actualizar el estado.

<div>
	<p align= 'center'>
		<img src="https://github.com/marianobattaglia/design-patterns-swift/assets/94753551/9bad4227-3696-418d-8c28-dc9e648885d6" width="500">
	</p>
</div>

### Ventajas
- Permite modificar las clases subject y los observers independientemente.
- Podemos añadir nuevos observadores en tiempo de ejecución sin ningún problema. 
- Dos capas de niveles de abstracción se pueden comunicar sin ningún tipo de problema a través de este patrón. 
- Permite que un objeto Subject envie su notificacion a todos los que estan observando sin enviarlo a ningún objeto en concreto (va a todos y no a uno en particular y son ellos los que deciden si hacer una acción o no).
### Desventajas
- Al principio resulta complicado de entender. 

## State
Un objeto modifica su comportamiento cada vez que cambia su estado interno. 

<div>
	<p align= 'center'>
		<img src="https://github.com/marianobattaglia/design-patterns-swift/assets/94753551/ccc79820-1684-4818-b5cd-aab9b7f5655e" width="500">
	</p>
</div>

### Ventajas
- Permite agregar nuevos estados sin afectar otros componentes. 
- Ayuda a reducir el uso de sentencias if-else.
### Desventajas
- Cuantos más estados se tienen más subclases hay que crear.

## Interpreter
Dado un lenguaje define una representación para su gramática junto con un intérprete de su lenguaje. Sirve para crear sistemas estilo RegEx.

<div>
	<p align= 'center'>
		<img src="https://github.com/marianobattaglia/design-patterns-swift/assets/94753551/dd57f3a1-3be8-42ac-96c9-8a01b13ec203" width="500">
	</p>
</div>

### Ventajas
- Es fácil cambiar la gramática a través de la herencia.
### Desventaja
- Se utiliza muy poco. 
- Para gramáticas complejas es dificil mantener. Se necesita al menos 1 clase por cada regla, pudiendo ser un sistema muy complejo. 

## Strategy
Permite elegir una implementación específica o tarea en tiempo de ejecución para la misma tarea. Encapsula los algoritmos en clase permitiendo que sean reutilizados. Dependiendo de la tarea que estemos podemos elegir la implementación sin afectar la aplicación.

<div>
	<p align= 'center'>
		<img src="https://github.com/marianobattaglia/design-patterns-swift/assets/94753551/89f56049-cd7d-45a6-bb34-b74711a769a0" width="500">
	</p>
</div>

### Ventajas
- Permite alterar el comportamiento de la aplicación sin que ello implique el cambio de su arquitectura.
- Como los algoritmos son encapsulados por separado, permite agregar nuevos algoritmos que cumplan con la misma interfaz.
- La app puede cambiar de estratégia en tiempo de ejecución sin problemas, sin utilizar un if-else muchas veces.
### Desventajas
- La app debe conocer todas las estratégias para seleccionar la correcta en cada situación.
- Las clases de Contexto y Estratégia se utilizaran por medio de una interfaz. Si no está implementado bien, puede tener la clase base todos los comportamientos requeridos. 

## Template
Define los pasos secuenciales para ejecutar un algoritmo de varios pasos. Define la estructura del algoritmo y su lógica será implementada por las subclases.

<div>
	<p align= 'center'>
		<img src="https://github.com/marianobattaglia/design-patterns-swift/assets/94753551/1e74b45a-9883-4aa1-aa34-7dbcf630cc35" width="500">
	</p>
</div>

### Ventajas
- Nos ahorra duplicar código.
- Se mueve toda la implementación a la clase abstracta, permitiendo reutilizar el código de una manera muy sencilla.
- Es un patrón que tiene una implementación sencilla y de gran utilidad.
### Desventaja
- Número de clases adicionales que hay que crear.


## Visitor
Permite separar un algoritmo de la estructura del objeto en el que opera. Al separar nos ofrece la capacidad de agregar nuevas operaciones a la estructura del objeto sin modificar dicha estructura. 

<div>
	<p align= 'center'>
		<img src="https://github.com/marianobattaglia/design-patterns-swift/assets/94753551/1ad4869f-1b00-42f1-9cdf-d8e72b9e5cfd" width="500">
	</p>
</div>

### Ventajas
- Permite agregar nuevas operaciones a la jerarquía de visitantes sin contaminar mucho el diseño asistente.
- Nos permite agregar un nuevo elemento a nuestro sistema de manera sencilla, solo requiere un cambio en la interfaz e implementarlo en el visitor. Las clases de los elementos asistentes no se verán afectadas. 
### Desventajas
- Si tenemos demasiadas implementaciones en al interfaz visitante posiblemente sea bastante costoso su extensión. 

# Patrones Estructurales

## Adapter
Dos interfaces no relacionadas pueden trabajar juntas sin problema, a través de un objeto “Adapter”. Permite convertir la interfaz de una clase en otra interfaz que esperan los clientes, permitiendo que las clases trabajen juntas y que de otra manera no podrían hacerlo debido a la incompatibilidad de sus interfaces.

<div>
	<p align= 'center'>
		<img src="https://github.com/marianobattaglia/design-patterns-swift/assets/94753551/aefd89b7-d208-4614-afda-864ade5057b0" width="500">
	</p>
</div>

### Ventajas
- Permite trabajar a clases juntas que de otra manera no podrían hacerlo debido a que tienen interfaces incompatibles.
- Ofrece lograr la reutilización y flexibilidad en el código.
### Desventajas
- Necesitamos muchas clases y muchas adaptaciones a lo largo de la cadena del adapter para obtener el tipo que necesitamos. 
- Puede que el código al ser utilizado por otra persona sea difícil de entender.

## Bridge
Sirve cuando tenemos que desacoplar una abstracción de su implementación para que los dos puedan variar independientemente. 
Este patrón implica una interfaz que actúa como “puente” que hace que la funcionalidad de las clases concretas sea independiente de las clases del implementador de la interfaz. Por lo tanto ambos tipos de clase se pueden alterar estructuralmente sin afectarse entre sí. 

<div>
	<p align= 'center'>
		<img src="https://github.com/marianobattaglia/design-patterns-swift/assets/94753551/af769154-9a85-4d6b-addb-a8790b2bb71c" width="500">
	</p>
</div>

### Ventajas
- Los cambios en la implementación de una abstracción no van a afectar nunca al cliente que los está utilizando.
- Evitamos enlaces entre la abstracción y la implementación. 
- Mejora la extensibilidad de nuestro código. 
- Se pueden extender las jerarquías de abstracción tanto como se quiera. 
- Esconde detalles de la implementación a los clientes.
### Desventajas
- Requiere escribir y mantener muchas clases.

## Composite
Permite construir objetos o algoritmos complejos a partir de objetos o algoritmos mas simples y parecidos entre sí, gracias a la composición recursiva y a una estructura de forma de arbol. 
Permite construir objetos complejos componiendo de una forma recursiva objetos similares en una estructura de arbol. 

<div>
	<p align= 'center'>
		<img src="https://github.com/marianobattaglia/design-patterns-swift/assets/94753551/e09f8622-917a-4e66-a02a-11abbbe76701" width="500">
	</p>
</div>

### Ventajas
- Los clientes tratan los objetos primitivos y compuestos de una manera uniforme a través de una interfaz de componentes que simplifica el código al cliente
- Agregar nuevos componentes es sencillo y no requiere cambiar el código al cliente
### Desventajas
- Puede desencadenar en demasiados objetos pequeños que sean difícil de depurar 
- Es más difícil que solo utilizar herencia

### Decorator
Se utiliza para agregar características o comportamientos adicionales a una instancia particular de una clase sin modificar las otras instancias de la misma clase. 
Decorar un objeto cambia su comportamiento pero no su interfaz. 

<div>
	<p align= 'center'>
		<img src="https://github.com/marianobattaglia/design-patterns-swift/assets/94753551/20b46b50-fee3-43c0-b56f-0322139a26c8" width="500">
	</p>
</div>

### Ventajas
- Da más sencillez a la hora de utilizar la herencia. Pudiendo utilizar distintas combinaciones de distintos tipos decorator pudiendo crear muchas combinaciones de comportamientos distintos. 
### Desventajas
- Obliga a crear muchos objetos encadenados, lo que es difícil de mantener y depurar. 

## Facade
Busca simplificar el sistema para el cliente, proporcionando una interfaz simplificada para un conjunto de sus sistemas. Define una interfaz de alto nivel. Será un sistema facil de utilizar por parte del cliente pero difícil de desarrollar. 
Sirve para cuando tenemos un sistema complejo y queremos exponer una forma simplificada, ocultando la complejidad. 

<div>
	<p align= 'center'>
		<img src="https://github.com/marianobattaglia/design-patterns-swift/assets/94753551/465b7b80-25a4-4818-9f69-11cc4e9f8843" width="500">
	</p>
</div>

### Ventajas
- Oculta la dificultad del código al cliente.
- Facilita la implementación. 
- Ofrecen menos cantidad de objetos al cliente con los que lidiar. 
### Desventajas
- Puede ser complicado de implementar.


## Flyweight
Permite el uso compartido de objetos para soportar grandes cantidades de objetos de grado fino (pequeños) de una manera eficiente en nuestro sistema. 
Un Flyweight es un objeto compartido que se puede utilizar en múltiples contextos simultáneamente, actuando como objeto independiente en cada contexto y de ahí su ventaja. 
Al compartir estados para soportar un gran número de objetos pequeños aumentamos la eficiencia de espacio en memoria. 
Este patrón es muy útil cuando necesitamos muchos objetos similares que solo se diferencian en unos pocos parámetros, pero que el resto de parámetros son comunes a todos los objetos. 

<div>
	<p align= 'center'>
		<img src="https://github.com/marianobattaglia/design-patterns-swift/assets/94753551/49a2ec57-47a0-439e-b707-56a80ca43cbf" width="500">
	</p>
</div>

### Ventajas
- Reduce mucho la cantidad de memoria que necesitamos. 
- Reduce el número total de objetos que tenemos en el sistema. 
- Proporciona un mecanismo generalizado para controlar los estados de muchos objetos. 
### Desventajas
- Es un patrón complicado. 
- Pueden aparecer errores. 
- Si no está bien aplicado es difícil de depurar. 


## Proxy
Se utiliza como intermediario para acceder a un objeto. Las llamadas al objeto se hacen a través de este objeto, que actúa como sustituto y delegando las llamadas a los objetos respectivos. 

<div>
	<p align= 'center'>
		<img src="https://github.com/marianobattaglia/design-patterns-swift/assets/94753551/49482ae1-34d0-4959-92db-b414508cd65f" width="500">
	</p>
</div>

### Ventajas
- Ofrece más seguridad evitando duplicación de objetos que podrían ocupar espacio en memoria. 
- Introduce una nueva capa de abstracción, para que los clientes no puedan entrar. 

