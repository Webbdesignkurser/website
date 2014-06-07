---
layout: page
headerimage: 'header_css-farger.jpg'
title: Färger
comments: true
---


##Färgsätt element med CSS

<p class="preamble">Det finns två olika färgprofiler i webbdesign, HEX och RGBA. Med hjälp av dessa profiler kan man tilldela färger på html-element. Till exempel textfärg eller bakgrundsfärg.</p>

###HEX-färger

HEX-färger, eller webbfärger som det också kallas, innehåller en kombination på 6 stycken tecken som tillsammans bildar en färg. Röd färg skrivs till exempel såhär ``#c2322f``. Oavsett vilket bildhanteringsprogram du använder så finns det ett verktyg för att välja färger, där kan du kopiera HEX-kombinationen. 

Om en färgkombination innehåller samma tecken, till exempel svart ``#000000`` så räcker det att skriva ``#000``.

<strong>Klistra in följande</strong> för att ändra textfärgen på en rubrik.

{% highlight css %}

h1 {
  color: #d44da6;
}

{% endhighlight %}


###RGBA-färger

RGBA står för Red, Green, Blue och Alpha. Här blandar man rött, blått och grönt för att bestämma färg. Varje färg har en skala från 0 - 255. Alpha är opaciteten på färgen, alltså hur genomskinlig färgen ska vara. Här är det även bra att ha ett bildhanteringsprogram för att kunna välja färger.

Vi börjar med att skriva de tre färgkombinationerna ``rgba(0, 0, 0)``.  
Opaciteten kan sedan skrivas från ``0`` till ``1``.

En svart RGBA-färg med 50% opacitet skrivs som följande.

{% highlight css %}

h1 {
  color: rgba(0, 0, 0, 0.5);
}

{% endhighlight %}


<div class="success box full-width">
	<h3>Tips</h3>
	<p>Om du använder Mac och skriver i Sublime Text så kan du trycka <span class="keyboard">Cmd</span> <span class="keyboard">Shift</span> <span class="keyboard">C</span> för att ta fram en färgpalett direkt i texteditorn.</p>
</div>

<a class="btn btn-next" href="{{ site.url }}/webbdesign/css-typografi">Gå till nästa steg!</a>
