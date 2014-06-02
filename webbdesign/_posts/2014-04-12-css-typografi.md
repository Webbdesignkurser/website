---
layout: page
headerimage: 'header_css-text.jpg'
title: Typografi
comments: true
---


##Typografi med CSS

<p class="preamble">Det är mer än bara textstorlek när det kommer till typografi på webben. Här kommer vi att gå igenom de viktigaste variablarna i CSS som används för typografi.</p>



###Textstorlek

Textstorleken anges i pixlar och skrivs ``font-size: 14px`` om texten ska vara 14 pixlar hög.

{% highlight css %}

h1 {
  font-size: 30px;
}

p {
  font-size: 14px;
}

{% endhighlight %}

{% highlight html %}
<h1>Rubrik</h1>

<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Numquam, ut voluptas at quis rerum tempore eligendi quas vitae sint expedita voluptatum tenetur blanditiis architecto vel itaque recusandae facere commodi eius!</p>

<p>Labore magnam veritatis asperiores quod quaerat reiciendis?</p>
{% endhighlight %}

<img src="{{ site.url }}/assets/images/asset_css-typografi-2.png" style="margin-left: -13px;"/>  



###Linjehöjd

Linjehöjden avgör hur hög en rad ska vara. Du vill inte att raderna ska vara för nära varandra och samtidigt inte för långt borta. Höjden bestäms med hjälp av ``line-height``.

{% highlight css %}

h1 {
  font-size: 30px;
  line-height: 32px;
}

p {
  font-size: 14px;
  line-height: 21px;
}

{% endhighlight %}

<img src="{{ site.url }}/assets/images/asset_css-typografi-3.png" style="margin-left: -13px;"/>  



###Radavstånd

Radavståndet är avståndet mellan rubriker och paragrafer.  
Här använder vi ``margin-bottom: 15px`` för att skilja dom åt.

{% highlight css %}

h1 {
  font-size: 30px;
  line-height: 32px;
  margin-bottom: 15px;
}

p {
  font-size: 14px;
  line-height: 21px;
  margin-bottom: 15px;
}

{% endhighlight %}

<img src="{{ site.url }}/assets/images/asset_css-typografi-4.png" style="margin-left: -13px;"/>  



###Typsnitt

Med hjälp av ``font-family`` så tilldelar vi texten ett typsnitt. En fullständig lista på alla tillgängliga typsnitt hittar du <a href="http://cssfontstack.com" target="_blank">här</a>. Om du vill importera ett eget typsnitt så hänvisar vi dig till vår <a href="{{ site.url }}/typsnitt/">fördjupning av typsnitt</a>.

{% highlight css %}

h1 {
  font-size: 30px;
  line-height: 32px;
  margin-bottom: 15px;
  font-family: helvetica;
}

p {
  font-size: 14px;
  line-height: 21px;
  margin-bottom: 15px;
  font-family: helvetica;
}

{% endhighlight %}

<img src="{{ site.url }}/assets/images/asset_css-typografi-5.png" style="margin-left: -13px;"/>  




###Tjocklek och kursivt

I HTML finns det två taggar som används för tjock text och kursiv text, nämligen ``<strong>`` och ``<em>``. Eftersom vi tidigare i kursen nollställde alla CSS-värden med en <a href="{{ site.url }}webbdesign/reset-css/">Reset CSS</a> så måste vi nu ta in dessa stilar igen till respektve HTML-tag.

{% highlight css %}

strong {
  font-weight: bold;
}

em {
  font-style: italic;
}

{% endhighlight %}

{% highlight html %}

<strong>Tjock text</strong> <br/>

<em>Kursiv text</em>

{% endhighlight %}

<div class="example box full-width">

<strong>Tjock text</strong> <br/>

<em>Kursiv text</em>

</div>

##Länkar

För att ändra css-stilen när man har <strong>musen över</strong> eller <strong>trycker</strong> på en länk så krävs det några extra attribut, nämligen ``hover`` och ``active``.

{% highlight css %}

a {
  /* När länken är oberörd */
}

a:hover {
  /* När länken hålls över */
}

a:active {
  /* När länken trycks på */
}

{% endhighlight %}


###Exempel

{% highlight css %}

a {
  color: #38b857; /* Grön */
  text-decoration: none; /* Inget understreck */
}

a:hover {
  color: #44d96c; /* Ljusare grön */
  text-decoration: underline; /* Understreck */
}

a:active {
  color: #47e672; /* Ännu ljusare grön */
}

{% endhighlight %}

{% highlight html %}

<a href="#">Håll musen över mig</a>

{% endhighlight %}

<style>
.examplelink {
  font-size: 20px;
  color: #38b857; /* Grön */
  text-decoration: none; /* Inget understreck */
}
.examplelink:hover {
  color: #44d96c; /* Ljusare grön */
  text-decoration: underline; /* Understreck */
}
.examplelink:active {
  color: #47e672; /* Ännu ljusare grön */
}
</style>
<div class="example box full-width">
  <a href="#" class="examplelink">Håll musen över mig</a>
</div>
<a class="btn btn-next" href="{{ site.url }}#">Gå till nästa steg!</a>
