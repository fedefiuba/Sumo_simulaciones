

## Simulación de Ciudad

En este ejemplo se construye una Ciudad (en Bs As) y se simula el tráfico de autos, buses, motos y lo que se crea necesario.

## Cosas a tener en cuenta.

Para simular la ciudad, se puede usar el siguiente módulo de Python osmWebWizard.py, el cual se puede correr como:

python osmWebWizard.py

Este módulo se encuentra en la carpeta (a la fecha 22/6 esta es la última versión): 

sumo-all-1.6.0/tools/osmWebWizard.py

## Ciudad a simular.

Para este ejemplo se elige CABA, en los alrededores de la FIUBA

![FIUBA](/imgs/Fiuba_1.jpg)

Luego se puede seleccionar la cantidad de mòviles, buses, motos, etc. En este caso se seleccionan 12 móviles, 6 camiones, 6 colectivos, 5 motos y 4 bicicletas. 

Luego, se genera el escenario y se pasa a SUMO, donde se puede correr la simulación.

![FIUBA](/imgs/Fiuba_Sim_1.jpg)

Los bloques amarillos resulta ser lo móviles, colectivos, etc. Esto se ve con más detalle en la siguiente imagen.

![FIUBA](/imgs/Fiuba_Sim_3.jpg)
