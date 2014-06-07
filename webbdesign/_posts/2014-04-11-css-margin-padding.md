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



<a class="btn btn-next" href="{{ site.url }}#">Gå till nästa steg!</a>
