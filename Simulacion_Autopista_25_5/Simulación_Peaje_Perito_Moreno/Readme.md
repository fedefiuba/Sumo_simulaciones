## Simulación de Autopista con peajes

## Mapa de subidas y bajadas de la Autopista Perito Moreno

![Peaje](Imgs/Subidas_Bajadas_Perito_Moreno.png)

Fuente: [https://www.ausa.com.ar/documentos/AUSA-Mapa-Autopistas.pdf](https://www.ausa.com.ar/documentos/AUSA-Mapa-Autopistas.pdf)

## Simulación son SUMO

En base a la imagen anterior, se propone simular la cantidad de móviles que pasan por el Peaje Perito Moreno. Para esto, se toma la Autopista 25 de Mayo la cual se une con la Autopista Perito Moreno, ya que sobre esta última se ubica el Peaje Perito Moreno __(PPM)__. Para determinar cuántos móviles pasan por el __PPM__, hay que tener en cuenta que la Au.25 de Mayo se divide en Au. Perito Moreno y en Au. Dellepiane, luego de Plaza de los Virreyes. Esto se muestra a continuación (imagen obtenida de Googl Maps):

![Peaje](Imgs/Mapa_25_5_Delle_PM.png)


La imagen anterior se puede obtener con la coordenada: `--34.642933, -58.461665` 


Simulando con __osmWebWizard__, para luego pasar a SUMO

![Peaje](Imgs/Sumo_Alberti.png)

__Simulando con SUMO__

![Peaje](Imgs/Sumo_Alberti_Simulacion.png)

En la imagen anterior se puede observar cómo los móviles toman direcciones distintas ante la bajada de Alberti. Uno de ellos sigue por la Au. 25 de Mayo y el otro toma la bajada.
En base a esto, se propone seguir la dirección de los móviles que continúan por la Au. 25 de Mayo para saber si llegan al Peaje Perito Moreno. Para esto, se toman los ids y la ruta de los móviles haciendo click derecho sobre el móvil. Para saber la ruta, en el menú que se despliega haciendo clicke derecho, se ofrece el ítem de "mostrar ruta"

__id: veh4472__

Para saber la ruta que siguen, se puede hacer __click derecho sobre el móvil y seleccionar la ruta que siguen__

Para est id, el auto toma la Au.Dellepiane

