Tema 1.2: Entornos de desarrollo portables y ligeros
1. Características del equipo
Según el diagnóstico realizado en la Actividad 1, el equipo cuenta con
las siguientes características:
- Sistema operativo: Windows.
- Procesador: Intel Core i5-12400 de 12.ª generación, a 2.50 GHz.
- Memoria RAM: 16 GB DDR5.
- Espacio libre en disco: 266 GB.
- Virtualización: habilitada.
- Permisos de administrador: sí.
Por estas características, el equipo es apto para trabajar con los
destinos ligeros de consola y Chrome, y también cuenta con recursos para
probar un emulador Android, dependiendo de la configuración y de los
programas que estén abiertos.
2. Versiones de las herramientas
- Flutter: 3.47.8 (canal stable).
- Dart: 3.13.7.
- Editor: Visual Studio Code en versión portable.
Las versiones indicadas corresponden al entorno utilizado durante la
práctica. El archivo doctor.txt contiene el diagnóstico de Flutter
realizado con flutter doctor.
3. Ruta del entorno portable
El entorno de desarrollo está organizado en D:\dev:
- Flutter SDK: D:\dev\flutter
- Visual Studio Code: D:\dev\vscode
- Caché de paquetes: D:\dev\pub-cache
- Script de inicio: D:\dev\iniciar.bat
El archivo iniciar.bat obtiene la ruta donde se encuentra mediante
%~dp0, agrega temporalmente la carpeta flutter\bin al PATH de la
sesión y define PUB_CACHE para utilizar la caché de paquetes del
entorno. También ejecuta Flutter y abre Visual Studio Code. El cambio de
PATH realizado con set afecta a esa sesión y a los procesos
iniciados desde ella; no modifica permanentemente la configuración de
Windows.
4. Destinos de ejecución utilizados
- Consola Dart: se ejecutó el proyecto hola_entorno con
  dart run, permitiendo ingresar el nombre por teclado y mostrar
  información del sistema operativo y de la versión de Dart.
- Chrome: se ejecutó el proyecto hola_flutter con
  flutter run -d chrome. Se modificó el título para mostrar el
  nombre del estudiante y se cambió el color del tema. Los cambios se
  comprobaron mediante hot reload.
Estos son los destinos utilizados durante la práctica. Para otros
destinos, como un teléfono físico o un emulador Android, se debe
comprobar su disponibilidad con flutter devices.
5. Proyectos y evidencias
- hola_entorno/: proyecto de consola Dart. Incluye la
  configuración .vscode/launch.json para ejecutar el archivo activo
  en la terminal y permitir la entrada de datos.
- hola_flutter/: proyecto Flutter ejecutado en Chrome.
- iniciar.bat: script para iniciar el entorno portable.
- doctor.txt: salida del diagnóstico de Flutter.
- evidencias/: capturas de pantalla de la práctica.
6. Problema resuelto durante la práctica
Al ejecutar el programa Dart con F5 en Visual Studio Code, la entrada
por teclado no funcionaba como se esperaba. El programa necesitaba
ejecutarse en una terminal que permitiera introducir datos. Se configuró
.vscode/launch.json con las opciones "program": "${file}" y
"console": "terminal". También se detuvo una sesión de depuración
anterior con Shift + F5 antes de volver a ejecutar con F5.
7. Verificación antes de publicar
Las carpetas generadas build/ y .dart_tool/ no deben publicarse en
GitHub. Los archivos .gitignore de los proyectos deben excluirlas.
