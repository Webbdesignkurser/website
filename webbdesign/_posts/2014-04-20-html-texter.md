---
layout: page
headerimage: 'header_texter-html.jpg'
title: Skriva texter
comments: true
---

##Skriva texter i HTML
<p class="preamble">Precis som vanliga textdokument så innehåller en hemsida rubriker, underrubriker och brödtexter. I HTML så markerar vi texten med olika former av taggar, beroende på vad texten ska vara för något.</p>

###Innehållet på hemsidan
Allt innehåll som ska synas på hemsidan lägger vi inom ``<body>``

{% highlight html %}
<!doctype html>

<html>

  <head>
    <meta charset="utf-8"> <!-- Svenska tecken -->
    <title>Matlagning</title> <!-- Titel för webbläsaren -->
  </head>

  <body>
    <!-- Hemsidans innehåll ska ligga här -->
  </body>

</html>
{% endhighlight %}




###Rubriker
Rubriker skrivs med ``<h1>`` ``<h2>`` ``<h3>`` ``<h4>`` och ``<h5>`` beroende på vilken rank rubriken ska ha. Huvudrubriken ska alltid använda ``<h1>``, underrubriken använder ``<h2>``, underrubriken till underrubriken använder ``<h3>`` osv.  

<strong>Klistra in</strong> detta inom ``<body>``

{% highlight html %}

<h1>Matlagning</h1>

<h2>Hur kokar man pasta?</h2>

<h3>Råvaror</h3>

<h3>Resurser</h3>

{% endhighlight %}

<strong>Spara dokumentet</strong> och <strong>uppdaterar hemsidan</strong>. Den kommer nu att se ut såhär.

<div><img src="{{ site.url }}/assets/images/asset_html-rubriker.png" alt="Html Rubriker" style="margin-left: -10px;"/></div>

<div class="note box">
<h3>Val av rubriker</h3>
<p>En hemsida får endast innehålla en huvudrubrik (h1) per sida. Skriv därför det viktigaste där. Om du vill fylla på med fler rubriker så använd h2, h3, h4 osv.</p>
</div>



###Paragraf
Varje paragraf i brödtexten lägger man inom taggen ``<p>``  

En ny paragraf kan jämföras med att trycka <span class="keyboard">Enter</span> i en visuell texteditor.  

{% highlight html %}

<p>För att koka pasta behöver du pasta, vatten, kastrull och spis. 
Är du redo att koka pasta?</p>

{% endhighlight %}

<img src="{{ site.url }}/assets/images/asset_html-paragraf.png" alt="Html Paragraf" style="margin-left: -10px;"/>


###Radbyten
Texten kommer att fortsätta på samma rad tills att du skapar en ny paragraf eller gör ett radbyte med ``<br/>``  

Ett radbyte är detsamma som att trycka <span class="keyboard">Shift</span> <span class="keyboard">Enter</span> i en visuell texteditor.  

{% highlight html %}

<p>För att koka pasta behöver du pasta, vatten, kastrull och spis. <br/> 
Är du redo att koka pasta?</p>

{% endhighlight %}

<img src="{{ site.url }}/assets/images/asset_html-radbyte.png" alt="Html Radbyte" style="margin-left: -13px;"/>


<div class="success box">
<h3>Bra gjort!</h3>
<p>Nu kan du grunderna i att skriva texter i HTML. Nästa steg för oss är att länka en html-sida till en annan.</p>
</div>

<a class="btn btn-next" href="{{ site.url }}/webbdesign/html-lankar/">Gå till nästa steg!</a>
