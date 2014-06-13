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

<div class="ettBlock">

</div>

{% endhighlight %}

{% highlight css %}

.ettBlock{
  background: url(bild.jpg);
}

{% endhighlight %}



###Bakgrundsfärg och bakgrundsbild

{% highlight html %}

<div class="ettBlock">

</div>

{% endhighlight %}

{% highlight css %}

.ettBlock{
  background: #fd65e4 url(bild.jpg);
}

{% endhighlight %}



###Upprepa bakgrundsbild

Du kan välja att upprepa bakgrundsbilden vertikalt, horisontelt, eller inte alls. Upprepning åt båda hållen är förinställt om du inte ändrar något. Attributet kan läggas efter bildadressen, eller läggas som ett nytt attribut.

{% highlight css %}

.block1{
  background: url(bild.jpg) repeat-y;
}

.block2{
  background: url(bild.jpg) repeat-x;
}

.block3{
  background: url(bild.jpg) no-repeat;
}

{% endhighlight %}

{% highlight css %}

.block1{
  background-repeat: repeat-y;
}

{% endhighlight %}


###Ändra position på bakgrundsbild

Du kan bestämma hur bakgrunden ska ligga, antingen till vänster (förinställt), höger eller centrerat. Attributet kan läggas efter tidigare attribut repeat, eller som ett nytt attribut.

{% highlight css %}

.block1{
  background: url(bild.jpg) no-repeat left;
}

.block2{
  background: url(bild.jpg) no-repeat right;
}

.block3{
  background: url(bild.jpg) no-repeat center;
}

{% endhighlight %}


{% highlight css %}

.block1{
  background-position: left;
}

{% endhighlight %}


<a class="btn btn-next" href="{{ site.url }}/webbdesign/css-wrapper">Gå till nästa steg!</a>
