Las configuraciones son siempre complicadas, puede haber errores que solo salgan en tu computadora.

Les recomendamos venir a la oficina para que hagamos la configuración juntos y resolver los errores que se puedan presentar.

Vamos a instalar Ruby y Sublime Text para que podamos hacer los ejercicios desde nuestras computadoras.

## Instalar Ruby

### En Windows

Ve a la página [RailsInstaller](http://www.railsinstaller.org/en) y descarga la versión que dice WINDOWS Ruby 2.5.

Abre el archivo que descargaste y sigue los pasos como en la instalación de cualquier otro programa.

Al terminar la instalación te muestra la siguiente pantalla en la que tienes que introducir tu nombre y tu email.

<center><img src="https://codealab.files.wordpress.com/2015/05/instalacion_ruby_en_windows-1.png" ></center>

### En MacOS

En folder de `Aplicaciones` encontrarás un folder llamado `Utilidades`. Abre el programa `Terminal`. Te recomendamos arrastrar este programa a tu `Dock` ya que lo estaremos usando durante todo el curso.

Otra manera de abrir la `Terminal` es usando Spotlight, solo escribe la palabra terminal en la barra de búsqueda y da enter.

Pega la siguientes línea dentro de la Terminal y da enter:

```
xcode-select --install
```
Este comando instala ciertos paquetes necesarios para instalar y correr Ruby.

Para revisar que esté instalado correctamente, ejecuta el siguiente comando:

```
xcode-select -v
```
La Terminal te debe de mostrar algo similar a:
```
xcode-select version 2339.
```

La siguiente línea instala el manejador de paquetes Homebrew:
```
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

Para revisar que esté instalado correctamente, ejecuta el siguiente comando:

```
brew -v
```
La Terminal te debe de mostrar algo similar a:
```
Homebrew 0.9.5
```

Los siguientes comandos instalan la última versión de Ruby (en este momento es 2.3.1) en tu máquina. Pega una por una las líneas en la terminal:

```
brew update
brew install rbenv ruby-build
rbenv install 2.3.1
rbenv global 2.3.1
```

Después necesitamos decirle a nuestra computadora que use por default estos comandos que ejecutamos. Copia las siguientes líneas en la terminal una por una:

```
echo 'if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi' >> ~/.bash_profile
source ~/.bash_profile
```

Para revisar que todo esté instalado correctamente, ejecuta el siguiente comando:

```
ruby -v
```

La Terminal te debe mostrar algo similar a:
```
ruby 2.3.1p112 (2016-04-26 revision 54768) [x86_64-darwin15]
```

## Instalar Sublime Text

Durante el curso vamos a utilizar el editor de texto Sublime Text.

Lo puedes descargar desde la página ([http://www.sublimetext.com/](http://www.sublimetext.com/)).

Una vez que generes tus códigos en Sublime deberás correrlos en la consola. Te explicaremos como se hace en el ejercicio `Línea de Comandos`.
