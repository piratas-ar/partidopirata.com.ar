## Links del proyecto

Repo https://github.com/piratas-ar/partidopirata.com.ar

Pad https://pad.partidopirata.com.ar/p/RedisenoSitio

Template http://html5up.net/helios

## Levantar el sitio

### Clonar el proyecto

    git clone https://github.com/piratas-ar/partidopirata.com.ar.git

### Instalar dependencias

Hay que instalar algunas cosas antes de empezar:

* Instalar ruby 2.2 o 2.3 (idealmente 2.3.3 o sus actualizaciones) desde
  el gestor de paquetes (`apt`, `pacman`, `dnf`, `etc`)

* Instalar `ruby-dev`, `libxml2-dev` y `libxslt-dev` (debian, ubuntu y
  derivadas) del mismo modo, esto es para que las gemas instaladas
  puedan usar las librerias del sistema

* Instalar herramientas de compilacion:

  * Debian, Ubuntu, Mint, etc: `build-essential`
  * Arch, Parabola, Manjaro, etc: `base-devel`

* Entrar al repositorio clonado e instalar las dependencias del proyecto
  (gemas de ruby)

    cd partidopirata.com.ar
    gem install bundler
    bundle install

### Correr

    cd partidopirata.com.ar
    ./bin/middleman

### Generar sitio estático

    cd partidopirata.com.ar
    ./bin/middleman build

### Subir el sitio

(Necesitás una llave SSH en el servidor)

    ./bin/cap production deploy

### Crear un artículo

Los artículos están en `source/blog/posts` como archivos `.markdown`.

Lo mejor es copiar uno que ya exista y modificarlo.

El nombre de los archivos tiene que seguir el formato
`aaaa-mm-dd-titulo.markdown` es decir `2017-12-31-articulo-de-prueba.markdown`.

El contenido del archivo se divide en metadatos y texto.

```markdown
---
metadato: valor
---

texto del articulo
```

Los metadatos que hay que completar son:

```markdown
---
title: "Titulo del articulo"
tags:
  - tag1
  - tag2
image: url_de_la_imagen
thumbnail: url_de_la_imagen
---
```

Luego viene el texto en formato markdown.

### Agregar imagenes locales

* Guardar la imagen en `source/images`
* En el markdown del post referenciarla con `![Amazing picture](nombre_de_la_imagen.jpg)`

## Migracion a Middleman desde Wordpress

El blog viejo del PPAR esta(ba) en Wordpress, para migrarlo usamos wp2middleman
con algunas modificaciones para migrar las imagenes y los thumbnails.

### Migra los posts del backup a middleman

 wp2mm partidopirata.wordpress.2015-07-23.xml --include_fields wp:post_name


### Quitar los captions de wordpress

 sed -i -r "s/\[caption[^]]+](.+)\[\/caption]/\1\n/g" *

### Buscar los posts con galerias

 egrep -no "\[gallery[^]]+]" *
