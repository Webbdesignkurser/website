---
layout: page
headerimage: 'header_grunderna-i-html.jpg'
title: Grunderna i HTML
comments: true
---

##En hemsidas uppbyggnad
<h4>En hemsida består av textfiler, skrivna i ren text. HTML är ett av många språk som används för att skapa hemsidor. Webbläsarens jobb är att översätta dessa språk och sedan visa den färdiga hemsidan för besökaren.</h4>

Precis som en människa så består HTML av kroppsdelar, den har ett huvud som tänker och en kropp att visa upp. För att kunna skriva in dessa kroppdelar så börjar vi med att skapa en mapp på datorn för våran första hemsida. I våra exempel använder vi en Mac, men det ser ungefär likadant ut i Windows och Linux.


<h3><em>1.</em> Skapa en ny mapp i datorn</h3>



<h3><em>2.</em> Öppna texteditorn och skapa ett nytt dokument</h3>

<img src="/assets/images/asset_texteditor.png" style="margin-left: -13px;"/>  



<h3><em>3.</em> Spara ner HTML-filen</h3>
<strong>Spara ner</strong> det tomma dokumentet i din nya mapp, döp filen till <strong>index.html</strong>  
Det är Index som besökaren först kommer att komma till när de besöker hemsidan, en startsida helt enkelt.  
Filändelsen i slutet av namnet berättar för webbläsaren att det är HTML som ska visas.

<img src="/assets/images/asset_save-index-html.png" style="margin-left: -10px;"/>  



<h3><em>4.</em> Öppna index.html i webbläsaren</h3>
Nu ska vi öppna hemsidan i webbläsaren för att se hur den ser ut.  
<strong>Högerklicka på filen</strong> > <strong>Öppna med</strong> > <strong>Välj en valfri webbläsare</strong>

<img src="/assets/images/asset_open-with.png" style="margin-left: -10px;"/>   

<img src="/assets/images/asset_blank-browser.png" style="margin-left: -10px;"/>  

<div class="success box"><h3>Bra gjort! Du har precis besökt din första hemsida</h3>  
<p>Den är lite tom just nu, men det beror på att vi inte har skrivit något i HTML-filen än.</p></div><br/>  



##Hur skriver man i HTML?

Vi ska nu öppna texteditorn igen och skriva in följande så kallat <strong>html-taggar</strong>.  
Det är mellan dessa två taggar som vi sedan ska placera våran html-uppbyggnad.

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

Head kommer vi senare att fylla med sådant som påverkar hemsidan globalt.  
Body är hemsidans kropp där vi ska placera alla texter, bilder, objekt med mera.

{% highlight html %}
<!doctype html>

<html>

  <head>
  </head>

  <body>
  </body>

</html>
{% endhighlight %}



###Språk

Följande meta-tagg gör det möjligt för oss att skriva å, ä och ö på hemsidan.  

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

Vanligtvis flyttar man in texten 2 eller 4 mellanslag, alternativt trycker man TAB <img src="/assets/images/keyboard_tab.png" class="keyboard"/> på tangentbordet.


###Title

Title är den texten som syns på hemsidans flik i webbläsaren.

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

<a class="btn btn-next">Nästa steg!</a>
