---
layout: page
headerimage: 'header_css-positionering.jpg'
title: Positionering
comments: true
---


##Sätt position med CSS

<p class="preamble">Hur placerar man ut ett element på hemsidan? För att svara på frågan måste vi först veta hur vi vill placera ut det. Element kan nämligen ha olika beteenden som reagerar annorlunda med omgivningen.</p>



##Relative, Absolute, Fixed & Static
Dessa variablar används för att ge HTML-element olika typer av beteenden som påverkar positionen. De skrivs i CSS som ``position: relative`` om elementet ska ha en relativ position. Sedan kan man positionera ut elementet med hjälp av <a href="/webbdesign/css-margin-padding">margin</a>. 



###Position Relative
Med ``position: relative`` utgår man från den <strong>nuvarande positionen</strong> när man ska positionera ut elementet.  

<img src="{{ site.url }}/assets/images/asset_position-relative.png"/>  

{% highlight css %}

.relativtBlock{
  position: relative;
}

{% endhighlight %}



###Position Absolute
Med ``position: absolute`` utgår man från <strong>områdets absoluta nollpunkt</strong>, vilket är vänstra hörnet av området som elementet ligger inom.  

<img src="{{ site.url }}/assets/images/asset_position-absolute.png"/>  

{% highlight css %}

.absolutBlock{
  position: absolute;
}

{% endhighlight %}




###Position Fixed
``position: fixed`` har samma värden som absolute, förutom att den följer med när man scrollar i webbläsaren.

<img src="{{ site.url }}/assets/images/asset_position-fixed.png"/> 

{% highlight css %}

.fixeratBlock{
  position: fixed;
}

{% endhighlight %}




###Position Static
``position: static`` nollställer alla värden, det är variabeln som alla element har innan man har valt något.

<img src="{{ site.url }}/assets/images/asset_position-static.png"/>  

{% highlight css %}

.statisktBlock{
  position: static;
}

{% endhighlight %}  



##Placera ett element bredvid ett annat

``float`` är attributet du behöver för att placera ett element bredvid ett annat i CSS. Du kan bestämma om elementet ska flyta till vänster eller höger. I det här exemplet så har vi två element, ett för content och ett för sidebar.

{% highlight html %}

<div class="content">
  <h1>Startsida</h1>
  <p>Välkommen till min hemsida!</p>
</div>

<div class="sidebar">
  <strong>Meny till höger</strong>
</div>

{% endhighlight %}  

{% highlight css %}

.content{
  position: relative;
  width: 300px;
  float: left;
}

.sidebar{
  position: relative;
  float: left;
}

{% endhighlight %}  

<div class="example box full-width">
	<div style="position: relative;width: 300px;float: left;">
	  <h1 style="margin-top: 0;">Startsida</h1>
	  <p>Välkommen till min hemsida!</p>
	</div>

	<div style="position: relative;float: left;">
	  <strong>Meny till höger</strong>
	</div>
</div>

<div class="example box full-width">
	<div style="background: #ffff4c;position: relative;width: 300px;float: left;">
	  <h1 style="margin-top: 0;">Startsida</h1>
	  <p>Välkommen till min hemsida!</p>
	</div>

	<div style="background: #ffff4f; position: relative;float: left;">
	  <strong>Meny till höger</strong>
	</div>
</div>

###Avsluta en float

Om du inte avslutar floaten kommer elementen efter dessa att malplaceras och hamna fel. Placera därför båda elementen inom ett annat element som har attributet ``overflow: hidden``. Alternativt lägger du en div efter de båda elementen som attributet ``clear: both``.

{% highlight html %}
<div style="overflow: hidden;">

  <div class="left">
  </div>

  <div class="right">
  </div>

</div>
{% endhighlight %}  

{% highlight html %}

<div class="left">
</div>

<div class="right">
</div>

<div style="clear: both;"></div>

{% endhighlight %}  

<a class="btn btn-next" href="{{ site.url }}">Gå till nästa steg!</a>
