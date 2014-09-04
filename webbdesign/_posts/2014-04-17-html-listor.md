---
layout: page
headerimage: 'header_html-listor.jpg'
title: Listor
comments: true
---

##Skriva listor i HTML  

För att skriva en lista börjar du med ``<ul>``

{% highlight html %}

<ul>

</ul>

{% endhighlight %}


Därefter använder du ``<li>`` för varje objekt som ska listas.

{% highlight html %}

<ul>
  <li>Objekt 1</li>
  <li>Objekt 2</li>
  <li>Objekt 3</li>
</ul>

{% endhighlight %}

<img src="{{ site.url }}/assets/images/asset_html-list.png" style="margin-left: -12px;"/>  


##Lista i listan

För att lista en lista i en lista skriver du en ny lista under det objekt där den ska ligga.

{% highlight html %}

<ul>
  <li>Objekt 1</li>
  <li>Objekt 2
    <ul>
      <li>Objekt 2.1</li>
      <li>Objekt 2.2</li>
      <li>Objekt 2.3</li>
    </ul>
  </li>
  <li>Objekt 3</li>
</ul>

{% endhighlight %}

<div><img src="{{ site.url }}/assets/images/asset_html-list-sub.png" style="margin-left: -12px;"/></div>

<div class="success box">
<h3>Så lätt var det</h3>
<p>Vi vet att det inte ser så jättesnyggt ut, vi har bara inte kommit till själva designdelen än.</p> 
</div>


<a class="btn btn-next" href="{{ site.url }}/webbdesign/html-tabeller/">Gå till nästa steg!</a>
