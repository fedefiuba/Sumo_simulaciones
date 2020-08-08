

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
    <timestep time="1.00">
        <vehicle id="bike0" x="506.10" y="896.91" angle="193.63" type="bike_bicycle" speed="0.64" pos="2.34" lane="40336330#0_0" slope="0.00"/>
        <vehicle id="bus0" x="1919.95" y="972.67" angle="276.23" type="bus_bus" speed="12.24" pos="12.10" lane="462876181#0_0" slope="0.00"/>
        <vehicle id="truck0" x="1909.05" y="973.86" angle="276.23" type="truck_truck" speed="15.87" pos="23.07" lane="462876181#0_0" slope="0.00"/>
        <vehicle id="veh2" x="541.51" y="1022.49" angle="195.16" type="veh_passenger" speed="0.00" pos="5.10" lane="40336328#1_0" slope="0.00"/>
    </timestep>
    <timestep time="2.00">
        <vehicle id="bike0" x="505.81" y="895.70" angle="193.63" type="bike_bicycle" speed="1.25" pos="3.58" lane="40336330#0_0" slope="0.00"/>
        <vehicle id="bus0" x="1907.90" y="973.99" angle="276.23" type="bus_bus" speed="12.12" pos="24.22" lane="462876181#0_0" slope="0.00"/>
        <vehicle id="moto0" x="1929.69" y="971.61" angle="276.23" type="moto_motorcycle" speed="9.54" pos="2.30" lane="462876181#0_0" slope="0.00"/>
        <vehicle id="truck0" x="1893.37" y="975.58" angle="276.23" type="truck_truck" speed="15.77" pos="38.84" lane="462876181#0_0" slope="0.00"/>
        <vehicle id="veh2" x="541.00" y="1020.64" angle="195.16" type="veh_passenger" speed="1.92" pos="7.02" lane="40336328#1_0" slope="0.00"/>
        <vehicle id="veh3" x="1279.13" y="1187.87" angle="312.51" type="veh_passenger" speed="0.00" pos="5.10" lane="-21619598#1_0" slope="0.00"/>
        <vehicle id="veh5" x="1142.07" y="1308.91" angle="132.33" type="veh_passenger" speed="10.42" pos="5.10" lane="21619598#0_0" slope="0.00"/>
    </timestep>
    <timestep time="3.00">
        <vehicle id="bike0" x="505.35" y="893.84" angle="193.63" type="bike_bicycle" speed="1.91" pos="5.50" lane="40336330#0_0" slope="0.00"/>
        <vehicle id="bus0" x="1895.32" y="975.37" angle="276.23" type="bus_bus" speed="12.66" pos="36.88" lane="462876181#0_0" slope="0.00"/>
        <vehicle id="moto0" x="1920.45" y="969.40" angle="276.23" type="moto_motorcycle" speed="8.96" pos="11.26" lane="462876181#0_1" slope="0.00"/>
        <vehicle id="truck0" x="1877.35" y="977.33" angle="276.23" type="truck_truck" speed="16.11" pos="54.95" lane="462876181#0_0" slope="0.00"/>
        <vehicle id="veh2" x="540.05" y="1017.12" angle="195.16" type="veh_passenger" speed="3.64" pos="10.66" lane="40336328#1_0" slope="0.00"/>
        <vehicle id="veh3" x="1277.51" y="1189.35" angle="312.51" type="veh_passenger" speed="2.20" pos="7.30" lane="-21619598#1_0" slope="0.00"/>
        <vehicle id="veh5" x="1149.67" y="1301.98" angle="132.33" type="veh_passenger" speed="10.29" pos="15.39" lane="21619598#0_0" slope="0.00"/>
        <vehicle id="veh8" x="1118.95" y="1491.93" angle="231.41" type="veh_passenger" speed="9.52" pos="5.10" lane="26539416#0_0" slope="0.00"/>


 







