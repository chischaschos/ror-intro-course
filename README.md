# Web Development introductory course leveraging on Ruby on Rails

## Goals
* Learn to basic file editing with vim editor
* Learn basic CLI commands
* Learn basic frontend development skills
* Learn basic Ruby skills
* Learn basic RoR skills

## Rules
* A pair per computer
* Pairs must learn together
* Pomodoros
  - Full focus during 25 min
  - Rest afterwards
* Rotation after each pomodoro
* Stand up
  - Que hicieron o aprendieron
  - Que quieren aprender ahora
  - Alguna duda o impedimento
* Stand up at course start
* Stand up at course lunch time
* Stand up after lunch time
* Stand up at end of the day

## The course
* Vamos a forzarnos a aprender cosas nuevas
* Vamos a usar nada mas que una terminal y un editor para crear apps web
* Emocionense esto es muchisimo poder

### Sesión 1: The environment
* Download https://www.virtualbox.org/
  * For windows http://download.virtualbox.org/virtualbox/4.1.16/VirtualBox-4.1.16-78094-Win.exe
* Download vagrant vagrant_1.0.3.msi
* Download the box (my host)

### Sesión 2: CLI
* Basic CLI commands cheat sheet:
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
      * En modo comando presiona "i"
        - Entrar a modo edición
      * En modo comando presiona ":w"
        - Salvar
      * En modo comando presiona ":w filename"
        - Salvar como filename
      * En modo comando presiona ":q"
        - Salir
      * En modo comando presiona ":e filename"
        - Abrir el archivo mencionado

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


### Sesión 3: Movimientos, copiar, pegar y buscar en VIM + Ruby variables
en ruby
* Cheat sheet de esta sesión:
  * En modo commando:

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

  - Deberias ver los siguiente:

      Mi variable sin interpolar:
      2
      Mi variable interpolada: a
      Comilla simple no interpola nada: #{string_variable}

  - Presiona bg para ver la lista de procesos en background, luego
    presiona fg, para ir al proceso que estaba en background de vim

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

### Sesión 5: Cláses, modulos y requires en Ruby

### Sesión 6: Comando rails + HTML

### Sesión 7: CSS
* Using selectors
* Using some css properties

### Sesión 8: Que es RoR + TODO App
* What it is?
* Why to use frameworks?
* Creating a quick application

### Sesion 9

