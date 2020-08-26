## Trayectoria de autos

Se proponen las siguientes trayectorias de móviles:

Dos autos: uno que viene por el __carril 0__ (izquierda) y otro por el __carril 3__ de la Au.25 de Mayo. El que viene por el __carril 0__ sigue por la Au.PM y el que viene por el __carril 3__ sigue por la Dellepiane.

Para esta simulación se usan los autos: 

a) __veh32__ del archivo __PPM_00.csv__, el cual viaja por el __carril 0__ de la Au.25 de Mayo y sigue por la PM.

b) __veh33__ del archivo __Delle_30.csv__, el cual viaja por el __carril 3__ de la Au.25 de Mayo y sigue por la Dellepiane.

En las siguientes imágenes se observan sus trayectorias sobre las autopistas

![Peaje](Imgs/Movil_hacia_PM.png)

![Peaje](Imgs/Movil_hacia_Dell.png)


Los __ids__ de las Autopistas a analizar son:

La que sale de plaza de los Virreyes, que tiene seis carriles:
__id: 325213134_0, 325213134_3__ (izqiuerda a derecha)

La que va hacia PM, que tiene tres carriles:

__id:18908030_0__

La que va hacia la Dellepiane, que tiene dos carriles:

__id:39910457_0__

## Gráficos de trayectorias:

En base a esto se genera el archivo dos_veh.csv que contiene los datos de ambos vehículos. Luego se pasa este archivo a .xml mediante:

python csv2xml.py dos_veh.csv








