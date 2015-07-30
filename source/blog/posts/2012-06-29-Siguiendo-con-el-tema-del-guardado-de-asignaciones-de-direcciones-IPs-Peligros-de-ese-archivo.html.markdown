---
title: Siguiendo con el tema del guardado de asignaciones de direcciones IPs-Peligros
  de ese archivo
date: '2012-06-29'
tags:
- asignacion-de-direcciones
- material-para-difusion
- direccines-ips
- guardado-del-registro
- logs
- proveedores-de-internet
image: http://partidopirata.com.ar/wp-content/uploads/2012/06/historia_xcf_web.jpg.scaled500.jpg
thumb: http://partidopirata.com.ar/wp-content/uploads/2012/06/historia_xcf_web.jpg.scaled500-150x150.jpg
wppost_name: siguiendo-con-el-tema-del-guardado-de-asignaciones-de-direcciones-ips-peligros-de-ese-archivo
---

<p style="text-align: left;"><strong><a href="http://partidopirata.com.ar/5008/cuanto-tiempo-tu-proveedor-de-internet-guarda-los-registros-de-direcciones-ips-asignadas">Acá dejé una nota de Torrentfreak sobre la cantidad de tiempo que guardan las asignaciones de las direcciones IP los proveedores de Internet en EE.UU.</a></strong></p>
<p style="text-align: left;">Vamos a ver qué peligros lleva guardar esa información:</p>


[caption id="attachment_5015" align="aligncenter" width="500"]<a href="http://partidopirata.com.ar/wp-content/uploads/2012/06/historia_xcf_web1.jpg.scaled5001.jpg"><img class="alignright size-full wp-image-5016" title="historia_xcf_web.jpg.scaled500" src="http://partidopirata.com.ar/wp-content/uploads/2012/06/historia_xcf_web1.jpg.scaled5001.jpg" alt="" width="500" height="1559" /></a> <a href="https://www.rubens.net.br/pela-defesa-do-logzero-no-marcocivil" target="_blank"> Diseño de Rubens Menezes sobre las direcciones IP y el peligro de su almacenamiento.</a>[/caption]

&nbsp;

Lo que dice el dibujo:
<p style="text-align: center;"><strong>Todo bajo control!</strong>
<strong>Logs, registros y tu privacidad en Internet por @RV3EN5 </strong></p>
Obs: (En este cuentito el servidor Apache fue usado como ejemplo por ser el más popular pero la mecánica es la misma con el IIS y los demás servidores de páginas web)
<ul>
	<li>Tu proveedor de Internet es quien te da la dirección IP que quedará grabada en todos los lugares que visitás.</li>
	<li>
<p style="text-align: center;">No hay problemas, sólo tu proveedor sabe exactamente quien sos.</p>
El servidor Apache es quien te da las páginas y los archivos que vos accedes en Internet. No hay problemas, él sólo conoce tu IP, no sabe quien sos.</li>
</ul>
<p style="text-align: center;"><strong>ES UN MUNDO PERFECTO!</strong></p>

<ul>
	<li>Tu proveedor sabe tu IP y tu horario de acceso pero él no sabe exactamente lo que vos viste</li>
	<li> y el servidor Apache sabe exáctamente lo que tu IP vió en cada horario, pero él NO sabe quien sos.</li>
	<li>Pero si alguien junta los registros (logs) del servidor con los de tu proveedor sabrá exáctamente lo que viste, cuando y por cuanto tiempo.</li>
	<li>Por eso, justamente por tu seguridad es mejor que los logs del proveedor NO existan.</li>
</ul>
"El problema pasa si los logs fuesen mantenidos por el proveedor, eo genera una "llave" que permite, cuando es cruzada con los Logs de <strong>Apache</strong>, saber exactamente lo que vos estabas viendo, leyendo o haciendo. Entonces, guardar los logs preventivamente, es proporcionarle al Estado, a la Policía y a quien más venga a tener acceso a estos registros la capacidad de volver en el tiempo e investigar tu vida.

Con el log del proveedor le es posible al Estado ir atrás de los logs de los servidores y desvendar tus gustos, amigos, afilicación política, orientación sexual. Es posible saber si vos estabas leyendo sobre fabricación de bombas, manipulación de armas, productos químicos, sexualidad, cultos y sectas, todo. Además, todo debidamente descontextualizado, desplazado en el tiempo y sin la menor probabilidad de que puedas probar si tu interés era o no legítimo, si era o no legal. Noten que el ejemplo está tratando apenas de páginas de Internet, o sea, del protocolo HTTP. Ya la propuesta del Marco Civil prevee la grabación de todo el tráfico de la red, de todos los protocolos, lo que incluye  bittorrent, FTP, SSH y lo que el gentil lector pudiera imaginar."
<a href="https://www.rubens.net.br/pela-defesa-do-logzero-no-marcocivil" target="_blank">Fuente Blog de Rubens Menezes.</a>

<hr />

<strong>En la Argentina no sabemos por cuánto tiempo se guardan las asignaciones de IPs. ¿Alguien sabe si existe una ley o proyecto de ley al respecto?</strong>
