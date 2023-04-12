# Instrucciones de ejecución proyecto
***

A continuación se muestra la forma de distribución del proyecto y la forma de ejecución con gradle.

## Tecnologias utilizadas

En general para generar la automatización se utilizo el framework **karate** . Este framework permite automatizar las 
pruebas de API, es necesario agregar para la ejecución cucumber para escribir los escenarios de pruebas, el escenario de 
prueba se encuetra en el archivo **testApi.feature** que describe cada escenario y verificación

Para realizar una ejecución exitosa se debe tener instalado lo siguiente:

1. Java **version** 8 .211 o superior
2. Gradle **version** 7.5.1
4. powershell *(consola de comandos de windows)*

**Si se quiere revisar el código de la automatización abrir el archivo build.gradle con algun IDE para java
como Intellij, Netbeans o Eclipe**

## Pasos para ejecución

1. Descargar el proyecto y dirigirse a la carpeta donde se encuentra guardado en el equipo, luego ir a la ruta *KatateTest > karate_test*
2. Iniciar la consola o terminal en esta carpeta
3. Ejecutar el siguiente comando

``` bash 
gradle clean test
```

4. Al finalizar la ejecución escribimos el siguiente comando en la consola o terminal para visualizar
   el reporte de pruebas *(se debe estar ubicado en la carpeta del proyecto)*.

```bash
start .\build\karate-reports\karate-summary.html
```

Se procedera a abrir el navegador con el reporte general donde se muestran los features ejecutados,
tiempos de ejecución y resultados.
