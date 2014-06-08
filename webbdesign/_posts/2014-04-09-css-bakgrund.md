---
layout: page
headerimage: 'header_css-bakgrund.jpg'
title: Bakgrund
comments: true
---


##Sätta bakgrunder med CSS

<p class="preamble">Bakgrunder kan appliceras på nästan alla HTML-element, och är relativt enkelt.</p>

Vanligast är det att man sätter bakgrunden på en <a href="/webbdesign/css-id-class">div</a> eller <a href="/webbdesign/css-typografi">text</a>. Det kan gälla en header, sidfot, knapp med mera. Vi använder oss av ``background`` i css för att bestämma bakgrund. Sedan kan vi skriva en <a href="/webbdesign/css-farger/">färgkod</a> eller <a href="/webbdesign/html-bilder/">bildadress</a> för att visa bakgrunden.

###Bakgrundfärg

{% highlight html %}

<div class="ettRosaBlock">

</div>

{% endhighlight %}

{% highlight css %}

.ettRosaBlock{
  background: #fd65e4;
}

{% endhighlight %}



###Bakgrundsbild

{% highlight html %}

<div class="ettRosaBlock">

</div>

{% endhighlight %}

{% highlight css %}

.ettRosaBlock{
  background: url(images/bild.jpg);
}

{% endhighlight %}



<a class="btn btn-next" href="{{ site.url }}#">Gå till nästa steg!</a>
