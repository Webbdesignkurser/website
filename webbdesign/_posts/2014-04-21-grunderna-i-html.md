---
layout: page
headerimage: 'header_grunderna-i-html.jpg'
title: Grunderna i HTML
comments: true
---

##En hemsidas uppbyggnad
<h4>En hemsida består utav textfiler, skrivna i ren text. HTML är ett av många språk som används för att skapa hemsidor. Webbläsarens jobb är att översätta dessa språk och sedan visa den färdiga hemsidan för besökaren.</h4>

Precis som en människa så består HTML av kroppsdelar, den har ett huvud som tänker och en kropp att visa upp. För att kunna skriva in dessa kroppdelar så börjar vi med att skapa en mapp på datorn för våran första hemsida. I våra exempel använder vi en Mac, men det ser ungefär likadant ut i Windows och Linux.


### *1.* Skapa en ny mapp i datorn



### *2.* Öppna texteditorn och skapa ett nytt dokument

<img src="{{ site.url }}/assets/images/asset_texteditor.png" style="margin-left: -13px;"/>  



### *3.* Spara ner HTML-filen
<strong>Spara ner</strong> <span class="keyboard">Ctrl/Cmd</span> + <span class="keyboard">S</span> det tomma dokumentet i din nya mapp, döp filen till <strong>index.html</strong>  
Det är Index som besökaren först kommer att komma till när de besöker hemsidan, en startsida helt enkelt.  
Filändelsen i slutet av namnet berättar för webbläsaren att det är HTML som ska visas.

<img src="{{ site.url }}/assets/images/asset_save-index-html.png" style="margin-left: -10px;"/>  



### *4.* Öppna index.html i webbläsaren
Nu ska vi öppna hemsidan i webbläsaren för att se hur den ser ut.  
<strong>Högerklicka på filen</strong> > <strong>Öppna med</strong> > <strong>Välj en valfri webbläsare</strong>

<img src="{{ site.url }}/assets/images/asset_open-with.png" style="margin-left: -10px;"/>   

<img src="{{ site.url }}/assets/images/asset_blank-browser.png" style="margin-left: -10px;"/>  

<div class="success box"><h3>Bra gjort! Du har precis besökt din första hemsida</h3>  
<p>Den är lite tom just nu, men det beror på att vi inte har skrivit något i HTML-filen än.</p></div><br/>  



##Hur skriver man i HTML?

Vi ska nu öppna texteditorn igen och skriva in följande så kallat <strong>html-taggar</strong>.  
Det är inom ``<html>`` som vi sedan ska placera våran html-uppbyggnad.

{% highlight html %}
<html>

</html>
{% endhighlight %}



###HTML 5

HTML finns däremot i flera olika versioner. Den senaste versionen heter HTML 5 och har ett annat sätt att börja uppbyggnaden på.
Skriv därför följande rad längst upp i dokumentet.

{% highlight html %}
<!doctype html>

<html>

</html>
{% endhighlight %}



###Head och Body

``<head>`` kommer vi senare att fylla med sådant som påverkar hemsidan globalt.  
``<body>`` är hemsidans kropp där vi ska placera allt innehåll (texter, bilder, objekt med mera).

{% highlight html %}
<!doctype html>

<html>

  <head>
  </head>

  <body>
  </body>

</html>
{% endhighlight %}



###Svenska tecken

Följande ``<meta>`` gör det möjligt för oss att skriva å, ä och ö på hemsidan.  

{% highlight html %}
<!doctype html>

<html>

  <head>
    <meta charset="utf-8">
  </head>

  <body>
  </body>

</html>
{% endhighlight %}



###Indrag när man skriver HTML

Som du märker så flyttar vi in texten två mellanslag för varje gång som vi går djupare in i en tagg. Det här gör man för att lättare se och organisera strukturen på texten, då det kan bli för många taggar att hålla reda på om allt ligger på samma rad.  

Vanligtvis flyttar man in texten 2 eller 4 mellanslag, alternativt trycker man TAB <img src="{{ site.url }}/assets/images/keyboard_tab.png" class="keyboard"/> på tangentbordet.



###Title

``<title>`` visar den text som syns på hemsidans flik i webbläsaren.  
<img src="{{ site.url }}/assets/images/asset_title.png" style="border-bottom: 1px solid #999;"/>  

{% highlight html %}
<!doctype html>

<html>

  <head>
    <meta charset="utf-8">
    <title>Matlagning</title>
  </head>

  <body>
  </body>

</html>
{% endhighlight %}



###Kommentera i HTML

Om du vill skriva något i din HTML-fil som inte ska synas i webbläsaren, utan snarare finnas där som en anteckning, då behöver du kommentera ut det med följande taggar.

{% highlight html %}
<!doctype html>

<html>

  <head>
    <meta charset="utf-8"> <!-- Svenska tecken -->
    <title>Matlagning</title> <!-- Titel för webbläsaren -->
  </head>

  <body>
    <!-- Hemsidans innehåll kommer ligga här -->
  </body>

</html>
{% endhighlight %}

<a class="btn btn-next" href="{{ site.url }}/webbdesign/texter/">Snyggt! Gå till nästa steg!</a>
