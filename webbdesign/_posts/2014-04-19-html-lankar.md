---
layout: page
headerimage: 'header_html-lankar.jpg'
title: Länkar
comments: true
---

##Länka till andra sidor med HTML
<p class="preamble">En hemsida består (förhoppningsvis) av fler än en sida. För att länka besökaren till dessa sidor gäller det att du vet vart sidorna ligger och vad dom heter.</p>

För att skapa en länk använder du dig av ``<a>`` och därefter ``href`` för att bestämma destination.
{% highlight html %}

<a href="min-sida.html">Tryck här</a>

{% endhighlight %}



###Öppna länk i nytt fönster
Om du vill att länken ska öppna sidan i ett nytt fönster lägger du till ``target="_blank"``
{% highlight html %}

<a href="min-sida.html" target="_blank">Tryck här</a>

{% endhighlight %}



###Titel på länken när man har musen över
``title`` används för att visa en titel på html-objekt när man tar musen över det.
{% highlight html %}

<a href="min-sida.html" title="En titel på länken">Tryck här</a>

{% endhighlight %}



###Länka till en annan mapp
Om sidan som du ska länka till inte ligger i samma mapp som länken så räcker det inte att skriva sida.html som adress, utan du blir tvungen att skriva vilken mapp den ligger i.
{% highlight html %}

<a href="undermapp/sida.html">Länk</a> <!-- Länka till undermapp -->

<a href="../sida.html">Länk</a> <!-- Länka till övermapp -->

{% endhighlight %}

<hr/>

##Exempel
I det här exemplet har vi två html-sidor som heter ``hundar.html`` och ``katter.html``  
Vi ska länka dessa till varandra.

<img src="{{ site.url }}/assets/images/asset_html-links-example.png" style="margin-left: -13px;"/>  


###I ``hundar.html`` skriver vi följande
{% highlight html %}

<h1>Hundar</h1>
<p>Det här är en hemsida om hundar</p>
<p><a href="katter.html">Tryck här för att läsa om katter</a></p>

{% endhighlight %}


###Och i ``katter.html`` skriver vi följande
{% highlight html %}

<h1>Katter</h1>
<p>Det här är en hemsida om katter</p>
<p><a href="hundar.html">Tryck här för att läsa om hundar</a></p>

{% endhighlight %}



<div class="success box">
<h3>Sådär ja!</h3>
<p>Det är så man länkar sidor, nu ska vi visa bilder i HTML.</p> 
</div>


<a class="btn btn-next" href="{{ site.url }}/webbdesign/html-bilder/">Gå till nästa steg!</a>
