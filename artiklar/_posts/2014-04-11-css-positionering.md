---
layout: page
headerimage: 'header_css-positionering.jpg'
title: Positionering
comments: true
---


##Sätt position med CSS

<p class="preamble">Hur placerar man ut ett element på hemsidan? För att svara på frågan måste vi först veta hur vi vill placera ut det. Element kan nämligen ha olika beteenden som reagerar annorlunda med omgivningen.</p>


###Relative, Absolute, Fixed & Static
Dessa variablar används för att ge HTML-element olika typer av beteenden som påverkar positionen. De skrivs i CSS som ``position: relative`` om elementet ska ha en relativ position. Men vad betyder då dessa variablar? För att göra det enkelt så kan vi jämföra dessa med LEGO-block, där varje variabel har en färg. <em>(LEGO sponsrar ej denna kurs)</em>


###Position: Relative
Med ``position: relative`` utgår man från den <strong>nuvarande positionen</strong> när man ska positionera ut elementet.  

<img src="{{ site.url }}/assets/images/asset_position-relative.png"/>  

###Position: Absolute
Med ``position: absolute`` utgår man från <strong>områdets absoluta nollpunkt</strong>, vilket är vänstra hörnet av området som elementet ligger inom.  

<img src="{{ site.url }}/assets/images/asset_position-absolute.png"/>  

###Position: Fixed
``position: fixed`` har samma värden som absolute, förutom att den följer med när man scrollar i webbläsaren.

<img src="{{ site.url }}/assets/images/asset_position-fixed.png"/> 

###Position: Static
``position: static`` nollställer alla värden, det är variabeln som alla element har innan man har valt någon.

<img src="{{ site.url }}/assets/images/asset_position-static.png"/>  



<a class="btn btn-next" href="{{ site.url }}#">Gå till nästa steg!</a>
