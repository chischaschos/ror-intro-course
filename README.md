# Web Development introductory course leveraging on Ruby on Rails

## Goals
* Aprender to basic file editing with vim editor
* Aprender basic CLI commands
* Aprender basic frontend development skills
* Aprender basic Ruby skills
* Aprender basic RoR skills

## Rules
* Programación en pares
  - Los pares deben tratar de aprender iguales

* Pomodoros
  - Full focus during 25 min
  - Rest afterwards

* Rotation after each pomodoro

* Stand up
  - Contenido
    - Que hicieron o aprendieron
    - Que quieren aprender ahora
    - Alguna duda o impedimento
  - Stand up at course start
  - Stand up at course lunch time
  - Stand up after lunch time
  . Stand up at end of the day

## El curso
* Vamos a forzarnos a aprender cosas nuevas
* Vamos a usar nada mas que una terminal y un editor para crear apps web
* Alégrate de la cantidad de información que recibirás en tan poco
  tiempo, esto es muchísimo poder

### Sesión 1: The environment
* Bajar e instalar https://www.virtualbox.org/
  * Para windows http://download.virtualbox.org/virtualbox/4.1.16/VirtualBox-4.1.16-78094-Win.exe
* Bajar e instalar vagrant_1.0.3.msi
* Bajar e instalar http://the.earth.li/~sgtatham/putty/latest/x86/putty.exe
* Bajar el custom-ubuntu.box
* Por CLI (command line interface) de windows (Ejecutar -> cmd) ve al
  folder donde tienes el box
* Teclea los siguientes comandos:
  * vagrant box add mybox custom-ubuntu.box
  * vagrant init mybox
  * vagrant up
* Abre putty, y conectate usando:
  host: 127.0.0.1
  port: 2222
* Cuando pida un username utiliza: vagrant
* Instala chrome browser

### Sesión 2: CLI
* Guia rápida para esta sección:
  * l
    - List current folder contents

  * ls -R
    - List current folder contents recursively

  * ls -lsh
    * List current folder contents as a list displaying size in a human
      readable way

  * cd name
    - enter a name

  * cd ..
    - Exit from a folder name

  * cd ~
    - Subir a home folder

  * mkdir name
    - Create folder name

  * rm
    - Delete a file (not for directories)

  * rm -f
    - Delete a file forced mode (even directories)

  * fg http://www.computerhope.com/unix/ufg.htm
    * ctr - z
      - send process to background

    * bg
      - list background processes

    * fg 1, fg, fg 2
      - Bring back background process

    * vim
      - abrir editor vim

    * Comandos dentro de vim
      * ESC
        - Cancela cualquier comando te deja en modo comando
        - Salir modo edición

      * En modo comando
        * Presiona "i"
          - Entrar a modo edición
        * Teclea ":w"
          - Salvar
        * Teclea ":w filename"
          - Salvar como filename
        * Teclea ":q"
          - Salir
        * Teclea ":e filename"
          - Abrir el archivo mencionado
        * Presiona "\n"
          - Abrir/Cerrar explorador de archivos

* Ejercicio:
  1 - Crear foldera
  2 - Entrar a foldera
  3 - Crear folderb dentro de foldera
  4 - Regresar a home folder
  5 - Listar folders
  6 - Listar folders recursivamente
  7 - Listar folders con lsh
  8 - Borrar foldera
  9 - Escribir su stand up en archivos separados


### Sesión 3: Movimientos, copiar, pegar y buscar en VIM + Ruby variables en ruby
* Guia rápida para está sección:
  * En modo comando:

    - Movimientos
      * Para moverse de palabra en palabra
        - Presiona "w"
          * Hacia adelante
        - Presiona "b"
          * Hacia atras

      * Ir a final de linea
        - Presiona "$"

      * Ir a inicio de linea
        - Presiona "0"

      * Ir a inicio de archivo
        - Presiona "gg"

      * Ir a final de archivo
        - Presiona "G"

      * Ir a cierta linea
        - Presiona "23G", para ir a linea 23, el numero entero indica la
          linea

    - Borrar lineas
      * Presiona "dd"
        - Borrar la linea sobre la cual esta el cursor
      * Presiona "d2d"
        - Borrar la linea sobre la cual esta el cursor y la que esta debajo de ella

    - Copiar lineas
      * Presiona "yy"
        - Copiar la linea sobre la cual esta el cursor
      * Presiona "y2y"
        - Copiar la linea sobre la cual esta el cursor y la que esta
          debajo de ella

    - Pegar lineas
      * Presiona "p"
        - Pegar en la linea debajo de donde esta el cursor
      * Presiona "P"
        - Pegar en la linea arriba de donde esta el cursor

    - Busqueda
      * Presiona "/bla" para buscar el texto bla, luego enter para ir a
        la occurrencia
        - Movimiento entre ocurrencias
          * Presiona "n"
            - Ve a la siguiente ocurrencia
          * Presiona "N"
            - Ve a la anterior ocurrencia

  * En modo edición
    * Autocompletado
      - Presiona la tecla tab para autocompletar
      - Muevete hacia arriba o abajo de la lista de palabras y presiona
        enter para elegir una

* Ejercicio:
  - Crea un archivo llamado "variables.rb" con los siguientes contenidos:

      integer_variable = 2
      string_variable = "a"
      float_variable = 1.0

      puts "Mi variable sin interpolar: "
      puts integer_variable
      puts "Mi variable interpolada: #{string_variable}"
      puts 'Comilla simple no interpola nada: #{string_variable}'

  - Una vez que el archivo ha sido guardado, sin salir de vim, presiona
    ctr-z para mandar vim al background, y ejecuta lo siguiente:

    ruby variables.rb

  - Deberías ver los siguiente:

      Mi variable sin interpolar:
      2
      Mi variable interpolada: a
      Comilla simple no interpola nada: #{string_variable}

  - Teclea "bg" en tu linea de comandos para ver la lista de procesos en background,
    luego teclea "fg", para ir al proceso que estaba en background de vim

  - Edita tu archivo e imprime el valor de cada variable de manera tal
    que la salida del programa sea:

      Mi variable sin interpolar:
      2
      integer_variable = 2
      string_variable = a
      float_variable = 1.0
      Mi variable interpolada: a
      Comilla simple no interpola nada: #{string_variable}

### Sesión 4: VIM tabs + condicionales y ciclos en Ruby
Ahora vamos a aprender un poco de como tener múltiples archivos para
edición en una sola pantalla.

* Guia rápida para está sección:
  - VIM modo comando
    * Teclea ":tabe" para crear un nuevo tab
    * Teclea "gt" para moverte a la siguiente tab
    * Teclea "gT" para moverte a la anterior tab
    * Teclea "1gt" para ir a la primer tab
    * Teclea "4gt" para ir a la cuarta tab

* Ejercicios:
  1 - Crea un archivo llamado "if.rb" con el siguiente contenido:
      boolean_variable = true

      if boolean_variable
        puts "La variable era verdadera"
      else
        puts "Nunca veras este mensaje"
      end

      unless boolean_variable
        puts "Nunca veras este mensaje"
      else
        puts "La variable era verdadera"
      end

  2.1 - Salva el archivo, presiona "ctr - z" para enviar el vim al
  background, y luego ejecuta el script.

  2.2 - analiza el flujo del programa y su resultado.

  3 - En la CLI (command line interface), teclea "fg". De regreso en vim crea un
  nuevo tab con el siguiente contenido:

      arreglo = [ 1, 2, 3 ]

      arreglo.each do |numero|
        puts "Iterando: #{numero}"
      end

      while !arreglo.empty? do
        puts "Sacando elemento: #{arreglo.slice!}"
      end

      arreglo << 1
      arreglo << 2
      arreglo << 3

      puts "Arreglo tiene: #{arreglo}"

  4.1 - Guarda el archivo como "loops.rb" (usando ":w loops.rb"), luego
  ejecuta el script (presiona "ctr-z" para enviar el proceso actual al
  background, luego teclea "ruby loops.rb").

  4.2 - Analiza el flujo del programa y su resultado.

### Sesión 5: Cláses, modulos y requires en Ruby
Ahora vamos a aprender un poco sobre como organizar nuestro código con
clases, módulos y múltiples archivos.

Nota: No es necesario que escribas los comentarios.

* Guia rápida para esta sección:

  - Ruby
    * Las lineas con comentarios inician con "#"
    * Métodos instancia
      - Para controlar el comportamiento de un solo objeto (el instanciado)
    * Métodos de clase
      - Para controlar el comportamiento de los objetos de un tipo,
        comportamiento compartido entre objetos

- Ejercicios:
  1 - Crea un archivo llamado "clases1.rb" con el siguiente contenido:

    class Saludador
      def initialize person_name
        self.person_name = person_name
      end

      # esto es un metodo de instancia
      def inicio_de_dia
        puts "Buen dia #{self.person_name}"
      end
    end

    # instanciamos para invocar metodos de instancia
    saludador = Saludador.new
    saludador.inicio_de_dia

  2 - Ejecuta el script (archivo recien creado) "clases1.rb"

  3 - Analiza y comenta el script y su salida con tu compañero.

  4 - Regresa al vim, crea un nuevo tab que llamaras "clases2.rb", con
  el siguiente contenido:

    class Saludador

      def self.saluda person_name
        puts "Hola #{person_name}"
      end

    end

    # no necesidad de instanciar
    Saludador.saluda "Pacles"

  5 - Analiza y comenta el script y su salida con tu compañero.

  6 - Crear el archivo "modulos.rb"

  7 - Crear el archivo "persona.rb"

  8 - Crear el archivo "pueblo.rb" con el siguiente contenido:

    require './persona.rb'

    class Pueblo

      def initialize poblacion_total
        self.personas = []

        poblacion_total.times do |iteracion|
          self.personas << Persona.new("Persona numero #{iteracion}")
        end
      end

      def personas
        self.personas
      end

    end

    pueblo = Pueblo.new 23

    puts pueblo.personas.map {|persona| persona.nombre }

### Sesión 6: Comando rails + HTML + CSS
Ahora vamos a servir contenido estático desde el directorio publico de
rails, mas de esto adelante.

El objetivo por ahora es crear un archivo public/index.html.

* Guia rápida para está sección:
  - Los estilos pueden ser inline, embedded o externos


* Ejercicios:
  1 - Crearemos una app de rails, ejecuta el siguiente comando:

    rails new inegi
    bundle

  2 - Mas adelante hablaremos de la estructura

  3 - Crear un html para mostrar a una lista de personas como se muestra a
    continuación:

    <html>
      <head>
        <title>Mi Pueblo</title>
      </head>
      <body>
        <h1>Lista de personas en mi pueblo</h1>
        <div id="personas">
          <div>
            <h2>Juan Penas</h2>
            <p>Un buen señor</p>
          </div>
        </div>
      </body>
    </html>

  4 - Ahora vamos a agregar algo de estilos a nuestro archivo, edita
  public/index.html, agrega una sección para estilos embebidos:

    <html>
      <head>
        <title>Mi Pueblo</title>
        <style type="text/css">
          h1 {
            color: sienna;
            font-size: 20px;
            font-weight: bold;
          }

          #personas { margin-left: 20px }

          #personas > div {
            float: left;
            min-width: 150px;
            border: 1px solid red;
          }

          #personas > div h2 {
            color: blue;
            font-size: 15px;
            font-weight: bold;
          }

          #personas > div p {
            color: black;
            font-size: 12px;
            font-weight: normal;
          }
        </style>
      </head>
      <body>
        <h1>Lista de personas en mi pueblo</h1>
        <div id="personas">
          <div>
            <h2>Juan Penas</h2>
            <p>Un buen señor</p>
          </div>
        </div>
      </body>
    </html>

  5 - Inicia el servidor rails con:

    rails s

  6 - Ve a la dirección http://localhost:3000

### Sesión 7: Que es RoR + Aplicación inegi
Aprenderemos que es rails, que es un framework, rasgos generales de una
aplicación en rails.

* Guia rápida para esta sección:
  - MVC
  - Convenciones
  - Alcances de un scaffold y partes que lo integran

* Ejercicios:
  1 - Vamos a crear una aplicación para manejar las personas del inegi:

    rails generate scaffold Persona name:string descripcion:text

  2 - Ahora configuramos la base de datos y creamos las tablas requeridas:

    rake db:setup

  3 - Ahora probamos la aplicación

    rails s

  4 - Visitemos http://localhost:3000/personas

### Sesión 8: La M de modelo para MVC
Ahora vamos a jugar con el modelo existente para conocer un poco de el
alcance que tienen.

* Guia rápida para esta sección
  - La consola de rails
    rails console

  - Queries
    - where
    - find

  - Ciclo de vida
    - new
    - create
    - destroy

  - callbacks
    - before_save

  - validaciones
    - validates_presence_of

  - relaciones
    has_many
    belong_to

* Ejercicios:

  1 - Empecemos por crear algunas personas mas:

  2 - Ahora hagamos queries para buscar a esas personas:

  3 - Ahora crearemos un nuevo modelo para crear una relación "uno a
  muchos":

  4 - Volvamos a crear personas con pueblos:

  5 - Agreguemos validación para el nombre de la persona:

  6 - Agreguemos descripciones por default:

  7 - Hagamos queries sobre las relaciones:


### Sesión 9: La C de controlador para MVC
Ahora vamos a jugar con los controladores para conocer un poco de su
objetivo y alcance.


### Sesión 10: La V de vista para MVC
Ahora vamos a jugar con las vistas para conocer un poco de su
objetivo y alcance.
