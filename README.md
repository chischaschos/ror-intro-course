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

### Session 1: The environment
* Download https://www.virtualbox.org/
  * For windows http://download.virtualbox.org/virtualbox/4.1.16/VirtualBox-4.1.16-78094-Win.exe
* Download vagrant vagrant_1.0.3.msi
* Download the box (my host)

### Session 2: CLI
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


### Session 3: VIM Editor tabs and motions
* VIM Editor tabs and motions cheat sheet
  * En modo commando:

    - Para moverse de palabra en palabra
      - Presiona "w"
        * hacia adelante
      - Presiona "b"
        * hacia atras

    - borrar lineas
      * Presiona "dd"
        - borrar la linea sobre la cual esta el cursor
      * Presiona "d2d"
        - borrar la linea del cursos y la que esta debajo de ella

    - copiar lineas
      * Presiona "yy"


## Rest 2 - :55 hr .. :60 hr

# 3 - 1 hr .. 1:25 hr
* About ruby 1
  * conditionals
  * loops
  * scripts

## Rest 3 - 1:25 hr .. 1:30 hr

# 4 - 1:30 hr .. 1:55hr
* About ruby 2
  * Classes and modules
  * Composing larger ruby applications
  * Exercises

## Rest 4 - 1:55 hr .. 2:10 hr

# 5 - 2:10 hr .. 2:35 hr
* About HTML
  * Creating basic pages
  * Serving them with Rack

## Rest 5 - 2:35 hr .. 2:40 hr

# 6 - 2:40 hr .. 3:05
* About CSS
  * Using selectors
  * Using some css properties

## Rest 6 - 3:05 hr .. 3:10 hr

# 7 - 3:10 .. 3:35
* Dynamic pages
  * Play with everything that we've learned so far

## Rest 7 - 3:35 hr .. 3:40 hr

# 8 - 3:40 hr .. 4:05
* Welcome RoR
  * What it is?
  * Why to use frameworks?
  * Creating a quick application

