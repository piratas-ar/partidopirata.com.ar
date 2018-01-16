---
wppost_name: esta-todo-roto-y-vamos-a-morir
title: Está todo roto y vamos a morir
date: 2018-01-16
tags:
  - hackers
  - seguridad informática
image: /images/wifikrack.png
thumb: /images/wifikrack.png
---

> No pude pagar con el celular, y el cajero me dice: "Irónico no?
> estando en Silicon Valley" No papu, está todo roto y vamos a morir.
> 
> <https://twitter.com/esacrosa/status/887056523163082752>

> Estoy sorprendido de que <s>los informáticos</s> las piratas hayamos
> logrado ocultarle a la gente no informática que todo esta roto todo el
> tiempo y no se cae porque lo atamos con alambre continuamente al punto
> que se creen que la tecnología es mágica.
>
> <https://twitter.com/perrito666/status/923282191555153920>

Al navegar en internet se envía información desde nuestro dispositivo a
través de una red de equipos ajenos y nunca podemos estar <s>seguros</s>
seguras de cómo funcionan, a quién le dan nuestra información y a quién
benefician. Pero incluso con las mejores intenciones, a veces hay
errores que facilitan el acceso a nuestra información privada por parte
de <s>actores</s> agentes malintencionados.

Durante el primer fin de semana de octubre se publicó el artículo
científico \"Ataques de reinstalación de clave: Forzando el reuso de
nonces[^nonce] en WPA2\" (**K**ey **R**einstallation **A**tta**ck**s:
Forcing Nonce Reuse in WPA2) que detallaba una vulnerabilidad de red
WiFi, bautizada **KRACK**. El paper fue presentado para revisión en Mayo
de 2017, es decir, que entre esa fecha y octubre puede haber sido usado
por una diversidad de agentes sin que se supiera públicamente del
ataque. Ya la mayoría de los sistemas operativos sacaron parches que lo
subsanan, pero, al igual que con otras vulnerabilidades, estos sólo son
efectivos si los sistemas operativos están actualizados a la última
versión.  Afecta productos de Microsoft, Apple y Google, entre otros
fabricantes y es particularmente fácil de ejecutar sobre dispositivos
Android.

¿Qué implica este ataque? ¿Cómo vulnera mi privacidad? 
------------------------------------------------------

Lo que esta vulnerabilidad posibilita es espiar todo los datos que pasan
entre tu máquina y el router y poder modificar el tráfico agregando
información. En la práctica esto podría ser usado para espiar qué sitios
estás visitando o para agregar código que se ejecute en tu dispositivo y
le de más poder al atacante para hacer otras cosas. Esto es lo que se
conoce como ataque "Machine in the middle" (MITM).

¿Cómo puedo mitigar el impacto de esta vulnerabilidad? 
-------------------------------------------------------

Algo bueno de que este ataque sea \"sólo\" un MITM es que ya deberíamos
tener medidas activas para protegernos. ¿Por qué? Porque nunca sabemos
exactamente cuántos intermediarios hay en nuestras comunicaciones por
Internet ni a qué intereses responden. Es decir, siempre que usamos
internet estamos expuestos a un potencial MITM. Navegar por http**s** (y
en particular si tenemos activado el complemento [HTTPS
Everywhere](https://www.eff.org/https-everywhere/).  usar programas de
comunicación que encripten punto a punto (Telegram o XMPP con OTR) y
cifrar con GPG nuestros mails (usar un cliente web de mail a través de
https también funcionaría) son algunas de las medidas que deberíamos ya
tener activas y que nos protegen de este ataque.

Estos métodos mitigan un poco el alcance y aumentan la dificultad de que
nos ataquen exitosamente, pero la única verdadera solución es actualizar
el sistema operativo en nuestros dispositivos a una versión posterior a
ese fin de semana. Si utilizamos sistemas operativos de software libre
como GNU/Linux tendremos la ventaja de que las actualizaciones de
seguridad son mucho más rápidas.

¿Qué hago y como me doy cuenta si ya me atacaron? 
--------------------------------------------------

Este ataque requiere estar a una distancia corta del dispositivo
vulnerable, por lo tanto es bastante poco probable que haya habido
muchos dispositivos ya atacados \"al voleo\". El riesgo aumenta si sos
una persona de interés para algún actor estatal, pero en ese caso ya
deberías tener medidas razonables de protección contra una MITM y otros
riesgos. No hay muchos rastros para buscar de este tipo de ataques en
si, pero si se ha utilizado este ataque contra alguno de tus dispotivos,
probablemente hayan dejado un rastro y un chequeo general de malware /
virus debería ser razonable para descartar que se haya infectado la
máquina.

No hace falta cambiar la clave como medida preventiva ya que este ataque
no permite averiguar la clave de la red. Tampoco es aconsejable pasar a
WAP, WEP (que ya fue roto hace bastante tiempo) u otros protocolos más
antiguos e inseguros.

Si requiere cercanía física y es un ataque común, ¿Por qué tanto drama? 
------------------------------------------------------------------------

El problema grave con este ataque es que sabemos que los dispositivos
tardan muchísimo tiempo en actualizarse, todos los que estén fuera de
soporte quedarán para siempre con este agujero presente. Hoy que todo
tiene conexión a internet (televisores, autos, luces) es muy probable
que quede algún dispositivo sin actualizar y eso podría ser un vector de
entrada para un ataque más serio a los demás dispositivos de la red
doméstica. Además es práctica común que las empresas demoren las
actualizaciones, más preocupadas por vender nuevos dispositivos que en
arreglar los ya existentes. 

Es decir, es una perspectiva realista que dentro de más de 2 años en
cualquier hogar aún haya algún dispositivo que pueda ser atacado de esta
manera. Es un problema a corto y también a mediano y muy largo plazo.

También es interesante que esta vulnerabilidad es posible por un error
en la especificación de WPA2, algo que fue muy revisado por las
distintas entidades que lo desarrollaron y las empresas que lo
implementaron en sus dispositivos. Sabemos que todo el software puede
tener errores, esto es una prueba más que incluso haciendo todo bien, de
manera transparente, pública y auditandolo muchísimas veces, puede haber
problemas de seguridad enormes.

Desde el Partido Interdimensional Pirata nos interesa destacar que todo
software está roto y que lo mejor que podemos hacer para estar bien
preparados para cuando surjan vulnerabilidades es utilizar varias capas
de seguridad a la vez y minimizar las entidades con las que compartimos
nuestra información, especialmente minimizando las herramientas que no
sean libres (o al menos de código abierto) y que por lo tanto no sabemos
qué están haciendo con nuestra infomración. Usemos encriptación
cotidianamente, estemos al tanto de las noticias de seguridad que nos
puedan afectar (esta nota es un intento de empezar a ayudarnos en este
plano) y difundámosla, entre más entendamos que todo está roto menos
probable es que nos afecte gravemente.

Me interesa, ¿qué más puedo saber? 
-----------------------------------

* <https://www.krackattacks.com/> (inglés): Los autores del paper
  publicaron este sitio donde está muy bien explicado y donde además
  se puede descargar el artículo que describe el ataque. 
* <https://www.eff.org/deeplinks/2017/10/krack-vulnerability-what-you-need-know>
  (inglés): documento sobre KRACK de la EFF, organización de EEUU que
  vela por los derechos digitales de los usuarios.


[^nonce]: es un código criptográfico de un solo uso, el que lo recibe no
  debería poder ni reusarlo ni crear otros.

