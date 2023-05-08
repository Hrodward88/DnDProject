![Ironhack logo](https://i.imgur.com/1QgrNNw.png)

# Web Scraping y Cosas Varias

![titulazo](https://store.nintendo.co.uk/_next/image?url=https%3A%2F%2Fassets.nintendo.eu%2Fimage%2Fupload%2Fc_scale%2Cw_767%2Ff_auto%2Fq_auto%2Fv1617717643%2FMNS%2FContent%2520Pages%2520Assets%2FCategory-List%2520Pages%2FFranchises%2FThe%2520Legend%2520of%2520Zelda%2F16.9_Hub_TheLegendofZelda_Logo_NOE.jpg&w=3840&q=75)

## Introduction
What happens when you let a man loose on the internet to find data to scrap in order to create a simple database? Well this is one of the possible answers.


## Empezando. 

![zelda-master-sword-powerup-8](https://user-images.githubusercontent.com/129097999/236912169-1324d150-bbeb-448c-b306-d3ad576a3eff.jpg)

Tras diversos intentos de conseguir datos y APIS de diversas fuentes, acabé decidiendo usar un volumen de datos pequeño y manejable, pero que cuadraba con lo requerido.

https://docs.zelda.fanapis.com es una coleccion de datos pertinentes a la saga de juegos de "The Legend of Zelda". Desde el punto de vista de lo que quiere hacer, dista mucho de ser ideal, pero como he dicho, es suficiente para este proyecto.

La web incluye 8 APIs, ## "Games", "Staff", "Characters", "Monsters", "Bosses", "Dungeons", "Places", "Items". ##

A continuación, usando VisualStudioCode, se les asignó a cada una de ellas una url específica.

Habiendo descargado todas las librerías apropiadas, incluyendo requests, se creó un dataframe de cada una.

Al hacerlo, comprobamos que todas salvo Games contienen referencias a otros elementos en forma de URL, por lo que debemos extraer la información.

Para ello, se define una función concreta. Dado que la URL dirige a un json con varios diccionarios, definimos que queremos uno de los elementos del dicionario data, en concreto "name".

Usando esta función, creamos una columna nueva con lo que obtenemos de la función en cada una de las tablas, creadno una columna igual en todas las tablas.

A continuación, dado que vamos a usar "Games" como tabla central, se le pueden añadir nuevoas columnas con elementos obtenidos de otras webs.

Usando BeautifulSoup, y tras definir una pagina de wikipedia nueva como variable, se extraen los elementos de tipo "wikitable", concatenamos los diferentes elementos y creamos una nueva tabla. Dado que solo nos interesa una columna, nos centramos en ella, cambiando algunos de los elementos de la string.

A continuación, fusionamos la nueva tabla con Games, y eliminamos las columnas que no nos interesan. Ya tenemos una columna nueva.

Para añadir otra tabla, con los valores de Metacritic de cada juego, encontramos una web que tenga esa lista y de una manera que podamos extraer. Sin embargo, esta ruta nos muestra que hay problemas, por lo que es más fácil encontrar una web más fácil.

Extraemos la lista de la web, esta vez mas facilmente, y a continuacion separamos cada elemento en titulo y Metascore, creando un nuevo dataframe.

Vemos que hubo problemas a la hora de mergear, por lo que corregimos todos los nombres y nos aseguramos de que coinciden an ambas tablas. Tras eso, soltamos la columna extra.

En este momento es cuando empezamos a rellenar elementos vacíos o erróneos en cada una de las tablas, cambiamos títulos, y limpiamos los datos.

Guardamos todos los dataframes en csv en la misma carpeta.

A continuacion en SQL creamos un esquema representando la tabla principal "Games", con todos los elementos, y la rellenamos con el csv previamente creado*

* En realidad no porque el wizard se quejaba del caracter 1473 

Git add, git commit (Con momento de "ha desaparecido todo" de por medio), y push.

![tumblr_ooext2Rny41u1ry24o1_500](https://user-images.githubusercontent.com/129097999/236912254-5b73c6e9-f995-438d-bfa5-6f92952efd56.gif)


Ya tenemos nuestra base de datos.




