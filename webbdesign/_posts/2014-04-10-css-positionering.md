---
layout: page
headerimage: 'header_css-positionering.jpg'
title: Positionering
comments: true
---


##Sätt position med CSS

<p class="preamble">Hur placerar man ut ett element på hemsidan? För att svara på frågan måste vi först veta hur vi vill placera ut det. Element kan nämligen ha olika beteenden som reagerar annorlunda med omgivningen.</p>



##Relative, Absolute, Fixed & Static
Dessa variablar används för att ge HTML-element olika typer av beteenden som påverkar positionen. De skrivs i CSS som ``position: relative`` om elementet ska ha en relativ position. Sedan kan man positionera ut elementet med hjälp av <a href="/webbdesign/css-margin-padding">top, right, bottom eller left</a>. 



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
  float: left;
}

.sidebar{
  position: relative;
  float: left;
}

{% endhighlight %}  

<div class="example box full-width">
	<div style="position: relative;float: left;">
	  <h1 style="margin-top: 0;">Startsida</h1>
	  <p>Välkommen till min hemsida!</p>
	</div>

	<div style="position: relative;float: left;">
	  <strong>Meny till höger</strong>
	</div>
</div>

<div class="example box full-width">
	<div style="background: #ffff4c;position: relative;float: left;">
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

##Display: Inline, Block och Inline-block
Element som agerar som block (tex div) beter sig annorlunda jämfört med text (tex span). Det beror på att de har olika display-inställningar. Man kan själv sätta display-inställning på ett block genom attributet ``display: inline / block / inline-block``

###Inline-element
Inline-element har följande som standard.
<ul>
<li>Fyller ut området beroende på innehållet.</li>
<li>Ignorerar top och bottom i margin, men funkar med left och right, samt padding.</li>
<li>Följer med i text-innehåll utan att byta rad.</li>
<li>Ignorerar width och height.</li>
<li>Kan positioneras med hjälp av text-align.</li>
<li>Kan positioneras med hjälp av vertical-align.</li>
</ul>
Exempel på inline-element ``<a>``, ``<span>``, ``<strong>`` och ``<em>``.

###Block-element
Block-element har följande som standard.
<ul>
<li>Om ingen bredd är satt, fylls området ut till 100%.</li>
<li>Kan ha margin och padding.</li>
<li>Placeras på en ny rad efter tidigare element, om ingen float är angiven.</li>
<li>Kan inte positioneras med hjälp av text-align.</li>
<li>Kan inte positioneras med hjälp av vertical-align.</li>
</ul>
Exempel på block-element ``<p>``, ``<div>``, ``<form>``, ``<header>``, ``<nav>``, ``<ul>``, ``<li>`` och ``<h1>``.

###Inline-block-element
Inline-block tar vara på bådas egenskaper. Den klarar av margin och anpassar samtidigt bredden efter innehållet istället för 100%.



###Exempel
I det här exemplet har vi tre stycken ``<span>`` med textinnehåll. Som du ser så tar <strong>inline</strong> inte hänsyn om marginaler inom content men kan däremot innehålla padding. <strong>Block</strong> lägger däremot marginaler utanför content och breddar ut sig på hela området. <strong>Inline-block</strong> tar vara på både block och inline och lägger marginaler inom content samtidigt samtidigt som den anpassar bredden utefter innehållet.

<div class="example box full-width" style="margin-bottom: 15px;">

  <div style="background: #000;">
    <span style="display: inline; line-height: 14px;margin: 20px; display: inline;padding: 8px 12px;background: #33abe2;color: #fff;">Inline</span></p>
  </div>

  <div style="background: #000;">
    <span style="display: block;padding: 8px 12px;margin: 20px;background: #33abe2;color: #fff;">Block</span></p>
  </div>

  <div style="background: #000;">
    <span style="display: inline-block;padding: 8px 12px;margin: 20px;background: #33abe2;color: #fff;">Inline-block</span></p>
  </div>

</div>

{% highlight html %}

<div class="content">
  <span class="inline">Inline</span>
</div>

<div class="content">
  <span class="block">Block</span>
</div>

<div class="content">
  <span class="inline-block">Inline-block</span>
</div>

{% endhighlight %}  

{% highlight css %}

.content{
  background: #000;
}

span{
  margin: 20px;
  padding: 8px 12px;
  background: #33abe2;
  color: #fff;
}

.inline{
  display: inline;
}

.block{
  display: block;
}

.inline-block{
  display: inline-block;
}

{% endhighlight %}


<a class="btn btn-next" href="{{ site.url }}/webbdesign/css-bakgrund">Gå till nästa steg!</a>
