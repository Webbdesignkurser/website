---
layout: page
headerimage: 'header_css-id-class.jpg'
title: Id och class
comments: true
---


##Namnge html-element med id och class

<p class="preamble">Vare sig du vill styla ett helt område på hemsidan, eller två h2-rubriker på olika sätt så behöver du namnge dessa html-element. Det här gör vi med id och class, två värdefulla delar i webbdesign.</p>

###Div för att markera områden
Html-elementet <strong>``<div>``</strong> används för att markera områden på hemsidan, så som sidhuvud, boxar, menyer, sidfot med mera. Exempelvis såhär:

{% highlight html %}

<div>
  <h1>Ett område på hemsidan</h1>
  <p>Det här området kommer vi att kunna styla senare i CSS</p>
</div>

{% endhighlight %}



###Id
Id används för att namnge <strong>ett</strong> element på hemsidan, det måste alltså vara unikt.   
Det appliceras på html-element som följande.

{% highlight html %}

<div id="uniktBlock">
  Jag är unik
</div>

{% endhighlight %}

Vi använder sedan en hashtag ``#`` i CSS'en för att styla området med valfria attribut.

{% highlight css %}

#uniktBlock{

}

{% endhighlight %}



###Class
Class är till för att namnge <strong>flera</strong> element på hemsidan, vilket passar bra om du har flera områden på hemsidan som ska tilldelas samma stiler.   
Det appliceras på html-element som följande.

{% highlight html %}

<div class="ettBlock">
  Jag är inte unik
</div>

<div class="ettBlock">
  Jag är inte unik
</div>

<div class="ettBlock">
  Jag är inte unik
</div>

{% endhighlight %}

Istället för en hashtag så använder vi här en punkt ``.`` för att styla classen.

{% highlight css %}

.ettBlock{

}

{% endhighlight %}




###Lägga till flera classer i en div
Om vi vill att alla divar ska se likadan ut <strong>förutom en</strong>, så funkar det utmärkt att lägga till classer i diven. 

{% highlight html %}

<div class="ettBlock specialerbjudande">
  Jag är speciell
</div>

<div class="ettBlock">
  Jag är inte speciell
</div>

<div class="ettBlock">
  Jag är inte speciell
</div>

{% endhighlight %}

Och i CSS'en skapar vi nu en specialstil till classen.

{% highlight css %}

.ettBlock{

}

.specialerbjudande{

}

{% endhighlight %}




###Understreck, bindestreck eller camelCase?
Som du har märkt använder vi inte mellanrum när vi namnger html-elementen, det beror på att man inte kan det helt enkelt. Istället kan man använda understreck, bindestreck eller så kallat camelCase när man skriver. Vi föredrar camelCase men det är en smaksak.

{% highlight css %}

.ett_block{
  
}

.ett-block{
  
}

.ettBlock{
  
}

{% endhighlight %}

<hr/>

##Scoping  

Det är ibland svårt att veta vilken class som tillhör vart på hemsidan om man har ett tiotal classer. Det finns en enkel lösning på det, scoping. Man kan översätta det till avgränsning på svenska.   

###Scopa inom flera element

Om vi har en div som ligger inom en div, till exempel såhär:

{% highlight html %}

<div class="sidhuvud">
  <div class="meny">
    Den här menyn kommer att påverkas
  </div>
</div>

<div class="meny">
  Den här menyn kommer inte att påverkas
</div>

{% endhighlight %}

Så kan du scopa det i CSS'en på det här viset och på så sätt hålla det sorterat.

{% highlight css %}

.sidhuvud .meny{
  /* Den här kommer endast att påverka .meny som ligger inom .sidhuvud */
}

{% endhighlight %}

Stilen i ``.sidhuvud .meny`` kommer bara att påverka diven ``.meny`` som ligger inom ``.sidhuvud``.



###Scopa inom ett element

Om vi vill scopa inom ett element, till exempel styla en h2-rubrik som har classen ``.special`` och endast påverka alla h2 som finns på sidan med den classen, skriver vi precis som ovan fast utan mellanrummet.

{% highlight html %}

<h2 class="special">Den här rubriken kommer att påverkas</h2>

<h3 class="special">Den här rubriken kommer inte att påverkas</h3>

{% endhighlight %}

{% highlight css %}

h2.special{
  
}

{% endhighlight %}



<a class="btn btn-next" href="{{ site.url }}#">Gå till nästa steg!</a>
