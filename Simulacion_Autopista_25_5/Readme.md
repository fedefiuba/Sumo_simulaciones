

## Simulación de Ciudad

En este caso se construye la División de Autopistas 25 de Mayo, Perito Moreno y Dellepaine, con el objetivo de analizar el tránsito.

## Cosas a tener en cuenta.

Para simular la ciudad, se puede usar el siguiente módulo de Python osmWebWizard.py, el cual se puede correr como:

python osmWebWizard.py

Este módulo se encuentra en la carpeta (a la fecha 08/8/2020 esta es la última versión): 

sumo-all-1.6.0/tools/osmWebWizard.py

## Ciudad a simular.

División de Autopistas 25 de Mayo, Perito Moreno y Dellepaine. Coordenadas: -34.649850 -58.465091
(estas coordenadas se pueden ingresar en osmWebWizard.py)

![FIUBA](Imgs/Autopista_Divison.png)

Luego se puede seleccionar la cantidad de mòviles, buses, motos, etc. En este caso se seleccionan 230 móviles, 30 camiones, 25 colectivos, 6 motos y 6 bicicletas. 

Luego, se genera el escenario y se pasa a SUMO, donde se puede correr la simulación.

![FIUBA](Imgs/Autopista_Divison_Trafico.png)

Los bloques amarillos resulta ser lo móviles, colectivos, etc. 

## Datos de salida.

Sumo tiene la opción de mostrar varias salidas:

`https://sumo.dlr.de/docs/Simulation/Output.html`

Una de ellas que resulta importante para determinar posición, velocidad e inclinación, es FCDOutput:

`https://sumo.dlr.de/docs/Simulation/Output/FCDOutput.html`

FCD (floating car data) exporta la información de cada vehículo que se encuentra en la simulación del tráfico. Para su utilización se puede usar el siguiente comando:

 `--fcd-output <FILE>`

Para la simulación que se trata, se utiliza de la siguiente forma:

`sumo -c osm.sumocfg --fcd-output datos_vehic.xml`

Siendo: 

osm.sumocfg: El archivo que contiene la simulación del tráfico

datos_vehic.xml: Archivo que contiene los datos de todos los vehículos para cada paso de simulación. Debe cortarse en algún momento durante su ejecución dado que de lo contrario puede generar un peso importante.

A continuación se observa una muestra de las primeras corridas:

<timestep time="0.00">
        <vehicle id="bike0" x="506.25" y="897.53" angle="193.63" type="bike_bicycle" speed="0.00" pos="1.70" lane="40336330#0_0" slope="0.00"/>
        <vehicle id="truck0" x="1924.82" y="972.14" angle="276.23" type="truck_truck" speed="16.16" pos="7.20" lane="462876181#0_0" slope="0.00"/>
</timestep>
    
