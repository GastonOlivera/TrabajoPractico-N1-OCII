
## Tabla de contenidos
1. [Introduccion](https://github.com/GastonOlivera/TrabajoPractico-N1-OCII/blob/master/README.md#introduccion)
2. [Formula Resolvente](https://github.com/GastonOlivera/TrabajoPractico-N1-OCII#formula-resolvente) 
3. [Como Ejecutar](https://github.com/GastonOlivera/TrabajoPractico-N1-OCII#como-ejecutar)
4. [Sobre Ejercicios Obligatorios](https://github.com/GastonOlivera/TrabajoPractico-N1-OCII#sobre-los-ejercicios-obligatorios)
5. [Sobre MI](https://github.com/GastonOlivera/TrabajoPractico-N1-OCII#sobre-mi)



# Introduccion 
En este repositorio se mostrara como fue el paso a paso para resolver el TP1 de la materia de Organizacion del computador II. 

Este contiene:
- Formula resolvente con variables linkeadas entre codigo C y assembler.
- Ejercicios obligatorios de memoria y FPU.



# Formula Resolvente
Este equivale al punto 1 del TP , al encarar este ejercicio se presentaron muchas dudas de como encararlo , asique , decidi comenzar realizando un programa en 
assembler que con numeros ingresados manualmente , pueda realizar las operaciones de la fomula resolvente entendiendo que era escencial para continuar el ejercicio.



![ImagenRes](ImagenRes.PNG)
 
El segundo paso fue hacer un programa en c el cual pedia los 3 numeros al usuario y luego los cargaba en una funcion que se encargaria de linkearlos con el codigo assembler.

A este punto el ejercicio iba encaminado , hasta que llego el momento de linkear las variables que fue donde comenzaron los problemas.

El ejercicio que resolvia la formula lo hacia en la fpu , la idea fue separar la resolvente en pequeños calculos y e ir guardando esos resultados en variables que se utilizan para obtener el resultado final.

Al momento de linkear empiezo probando con enteros esto funciona correctamente , Pero al intentar linkear numero de punto flotanto a un programa pequeño de suma que sirvio como prueba aparece el primer error.
![ImagenError1](ImagenError1.PNG)

Este error todavia no enconre el porque sucedio solo se arreglo al copiar todo el archivo C en un nuevo archivo y ahi dfue que dejo crear el ejecutable.

Al poder crear el ejecutable se carga el numero , y genera un nuevo error. 

![Error2](Error2.jpg)

Este error fue de los mas dificiles de solucionar y se acudio a la ayuda de los profesores , el cual recomendo inicializar de distintas formas las variables donde se iban a guardar los numeros pasados por C que estaban inicializadas como variables vacias , y pasaron a inicializarse como 0.0 , y esa fue la solucion! 

![Error3](Error3.jfif)

Pero seguia dando una violacion de segmento , la cual no encontre solucion , el ultimo paso fue cargar de la misma manera las variables en el codigo de la formula resolvente y FUNCIONO! , hasta quedo eliminada la violacion de segmento.

![Funciona!](Funciona!.jpg)

Asi llegamos al final del ejercicio funcionando correctamente! 

# ¿Como ejecutar?
Tenemos dos opciones para ejecutar el programa , en ambas tenemos que descargar este repositorio desde la terminal con git clone: 
En la carpeta formula resolvente:
- Abrimos una terminal en la carpeta descargada y escribimos el comando 
./TP

-Abrimos la terminal y escribimos el comando bash script.sh

# Sobre los ejercicios obligatorios

Estos ejercicios se fueron resolviendo a medida que las clases fueron avanzando , no generaron una dificultad muy grande , el ejercicio numero 7 de memoria se puede encontrar en los dos excel's subidos al repositorio los cuales contienen la modificacion de cada tabla en la busqueda de cada pagina.

El ejercicio 4 de FPU esta subido al repositorio como un archivo de texto , el cual funciona ejecutandolo en SASM.


# Sobre mi 
Mi nombre es Gaston Olivera estoy cursando la carrera de Licenciatura en Sistemas de la UNGS , actualmente trabajo como operario de produccion en una empresa de galletitas y soy hincha del Club Atletico River Plate. 










