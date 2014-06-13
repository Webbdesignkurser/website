---
layout: page
headerimage: 'header_css-margin-padding.jpg'
title: Margin och padding
comments: true
---


##Marginaler och utfyllnad i CSS

<p class="preamble">Margin och padding är två helt olika saker, men de går ofta hand i hand. Margin används för att ge elementet ett avstånd på hemsidan, medan padding fyller ut.</p>

###Margin
Margin kan skrivas på två olika sätt i CSS, antingen skriver man varje riktning var för sig, eller så förkortar man ner det till ett attribut.

{% highlight css %}

.block{
  margin-top: 10px;
  margin-left: 20px;
  margin-right: 30px;
  margin-bottom: 40px;
}

.block{
  margin: 10px 20px 30px 40px;
}

{% endhighlight %}

Båda alternativen går lika bra, och ger följande effekt på elementet.

<img src="{{ site.url }}/assets/images/asset_css-margin.png"/> 



###Padding
Till skillnad från margin så placerar det inte ut elementet, trots att det visuellt kan se ut så. Det padding gör är att den lägger till en utfyllnad inom elementet, vilket  exempelvis passar bra på en knapp som har en bakgrund och behöver utrymme runt knapptexten.

{% highlight css %}

.block{
  padding-top: 10px;
  padding-left: 20px;
  padding-right: 30px;
  padding-bottom: 40px;
}

.block{
  padding: 10px 20px 30px 40px;
}

{% endhighlight %}

Det här ger då följande effekt.

<img src="{{ site.url }}/assets/images/asset_css-padding.png"/> 



###Less is more
Om elementets margin eller padding endast ska påverka upp och ner räcker det att bara skriva ``margin: 10px 0px;`` Det är nämligen detsamma som ``margin: 10px 0px 10px 0px;``.  

Om elementet har lika mycket avstånd på alla sidor, räcker det att skriva avståndet en gång, så kommer det att läggas på varje sida. ``margin: 10px;`` ger alltså samma effekt som ``margin: 10px 10px 10px 10px;``


##Top, Right, Bottom och Left
Det finns ett tredje attribut, som används för att positionera ut element. Det skrivs ``top: 10px`` för att positonera ut ett element 10px från toppen.

{% highlight css %}

.block{
  top: 10px;
  left: 10px;
  right: 10px;
  bottom: 10px;
}

{% endhighlight %}


###Vad är skillnaden mellan "Top" och "Margin-top"?
Det kanske verkar konstigt att man har två attribut som gör samma saker, men skiljer sig däremot från varandra. "Top" används för att positionera ut ett element med hjälp av ``position`` (som vi går igenom på nästa sida). Margin-top är till för att sätta ett avstånd i förhållande mot element i omgivningen.


<a class="btn btn-next" href="{{ site.url }}/webbdesign/css-positionering">Gå till nästa steg!</a>
