## Links del proyecto

Repo https://github.com/piratas-ar/partidopirata.com.ar

Pad https://pad.partidopirata.com.ar/p/RedisenoSitio

Template http://html5up.net/helios

## Levantar el sitio

### Clonar el proyecto

    git clone https://github.com/piratas-ar/partidopirata.com.ar.git

### Instalar dependencias

* Instalar ruby 2.2 o 2.3 (idealmente 2.3.3 o sus actualizaciones)

    cd partidopirata.com.ar
    gem install bundler
    bundle install

### Correr 

    cd partidopirata.com.ar
    middleman

### Generar sitio estático

    cd partidopirata.com.ar
    middleman build

## Migracion a Middleman desde Wordpress

El blog viejo del PPAR esta(ba) en Wordpress, para migrarlo usamos wp2middleman
con algunas modificaciones para migrar las imagenes y los thumbnails.

### Migra los posts del backup a middleman

 wp2mm partidopirata.wordpress.2015-07-23.xml --include_fields wp:post_name


### Quitar los captions de wordpress

 sed -i -r "s/\[caption[^]]+](.+)\[\/caption]/\1\n/g" *

### Buscar los posts con galerias

 egrep -no "\[gallery[^]]+]" *
