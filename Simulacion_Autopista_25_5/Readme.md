

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

![FIUBA](Imgs/Autopista_Divison.jpg)

Luego se puede seleccionar la cantidad de mòviles, buses, motos, etc. En este caso se seleccionan 12 móviles, 8 camiones, 6 colectivos, 4 motos y 6 bicicletas. 

Luego, se genera el escenario y se pasa a SUMO, donde se puede correr la simulación.

![FIUBA](Imgs/Fiuba_Sim_1.jpg)

Los bloques amarillos resulta ser lo móviles, colectivos, etc. 
