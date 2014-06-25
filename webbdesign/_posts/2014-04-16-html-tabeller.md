---
layout: page
headerimage: 'header_html-tabeller.jpg'
title: Tabeller
comments: true
---



##Skapa tabeller i HTML  

Till skillnad från en lista så består tabeller utav vertikala och horisontella rader/celler. Det är användbart när man behöver lista olika objekt, priser, information etc. bredvid varandra för jämförelse. Tabeller bör inte användas för att positionera ut hemsidans kolumner i layouten. Det kommer vi sedan att gå igenom när vi berättar om <a href="/grunderna-i-css/">CSS</a>.  



###Tabell, rad och cell

För att skriva en tabell börjar du med ``<table>``

{% highlight html %}

<table>

</table>

{% endhighlight %}

Sedan ska vi skriva en rad med hjälp av ``<tr>`` (Table Row).

{% highlight html %}

<table>
  <tr>

  </tr>
</table>

{% endhighlight %}

För varje cell i raden använder vi ``<td>`` (Table Data)

{% highlight html %}

<table>
  <tr>
    <td>Namn</td>
    <td>Ålder</td>
    <td>Intresse</td>
  </tr>
</table>

{% endhighlight %}

<img src="{{ site.url }}/assets/images/asset_html-table-row.png" style="margin-left: -10px;"/>  


{% highlight html %}

<table>
  <tr>
    <td>Namn</td>
    <td>Ålder</td>
    <td>Intresse</td>
  </tr>
  <tr>
    <td>Anna</td>
    <td>33</td>
    <td>Tennis</td>
  </tr>
  <tr>
    <td>Patrik</td>
    <td>26</td>
    <td>Matlagning</td>
  </tr>
</table>

{% endhighlight %}

<img src="{{ site.url }}/assets/images/asset_html-table-rows.png" style="margin-left: -10px;"/>  



##Ändra bredd och höjd

Cellerna anpassar sig automatiskt beroende på vilken bredd och höjd man ställer in.  
För det så behöver vi skriva in en ``style`` i ``<table>``

{% highlight html %}

<table style="width: 300px; height: 100px;">
  <tr>
    <td>Namn</td>
    <td>Ålder</td>
    <td>Intresse</td>
  </tr>
  <tr>
    <td>Anna</td>
    <td>33</td>
    <td>Tennis</td>
  </tr>
  <tr>
    <td>Patrik</td>
    <td>26</td>
    <td>Matlagning</td>
  </tr>
</table>

{% endhighlight %}

<img src="{{ site.url }}/assets/images/asset_html-table-rows-width-height.png" style="margin-left: -10px;"/> 

<img src="{{ site.url }}/assets/images/asset_html-table-rows-width-height-highlight.png" style="margin-left: -10px;"/> 



##``<thead>`` ``<tbody>`` och ``<tfoot>``

Det är inget måste, men om man vill dela in tabellen i huvud, kropp och fot så passar ``<thead>``, ``<tbody>`` och ``<tfoot>`` bra. Dessa ger varken någon stil eller funktion, utan används för att markera områden, och på så sätt ge dom olika stil senare i kursen då vi går igenom CSS.

{% highlight html %}

<table style="width: 300px; height: 100px;">

  <thead>
    <tr>
      <td>Namn</td>
      <td>Ålder</td>
      <td>Intresse</td>
    </tr>
  </thead>

  <tbody>
    <tr>
      <td>Anna</td>
      <td>33</td>
      <td>Tennis</td>
    </tr>
    <tr>
      <td>Patrik</td>
      <td>26</td>
      <td>Matlagning</td>
    </tr>
  </tbody>

  <tfoot>
    <tr>
      <td>Slut på namn</td>
      <td>Slut på ålder</td>
      <td>Slut på intresse</td>
    </tr>
  </tfoot>

</table>

{% endhighlight %}


<a class="btn btn-next" href="{{ site.url }}/webbdesign/grunderna-i-css/">Dags att styla hemsidan - Gå till nästa steg!</a>
