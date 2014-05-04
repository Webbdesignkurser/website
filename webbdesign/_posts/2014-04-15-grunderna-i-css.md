---
layout: page
headerimage: 'header_css-grunder.jpg'
title: Grunderna i CSS
comments: true
---


##Designa HTML med CSS

CSS är ett språk inom webbdesign som används för att ge HTML-element olika stilar, så som storlek, färg, typsnitt, form med mera. Om du vill designa din hemsida så är det CSS du behöver. Det är ett väldigt lätt språk att lära sig och möjligheterna i webbdesign är enorma när man väl lärt sig det.

###Skapa nytt dokument
<strong>Skapa en ny mapp</strong> i samma mapp som index.html och döp den till ``assets`` (förslagsvis).  

<strong>Skapa ett nytt dokument</strong> i assets och döp det till ``style.css``   

Vi väljer att lägga style.css i en enskild mapp eftersom det kan tillkomma fler tillgångar (assets) framöver, och då har vi allt samlat på samma ställe. Filändelsen i slutet av namnet (.css) berättar för webbläsaren att att det är CSS som ska hämtas.



###Länka in CSS i HTML
För att CSS'en ska fungera på vår hemsida måste vi länka in den i vår HTML.

<strong>Klistra</strong> in följande inom ``<head>``

{% highlight html %}

<link rel="stylesheet" href="assets/style.css">

{% endhighlight %}

<div class="success box" style="margin-top: 10px;">
  <h3>Länkat och klart</h3>
  <p>Nu kommer din HTML-sida att reagera på allt vi skriver i style.css</p>
</div>



##Hur skriver man i CSS?
<strong>Öppna style.css</strong> och skriv vilket HTML-element du vill ändra designen på. Vi börjar med rubriken.

{% highlight css %}

h1

{% endhighlight %}

Därefter skriver vi så kallade måsvingar ``{}``. Om du har Mac så trycker du <span class="keyboard">Alt</span> <span class="keyboard">Shift</span> <span class="keyboard">8 / 9</span> för att skriva en måsvinge. Det som skrivs inom dessa vingar kommer att appliceras på HTML-elementet som de tillhör. 

{% highlight css %}

h1 {}
{% endhighlight %}

Nu har vi möjligheten att ge elementet olika stilar/attribut. Det finns en mängd olika att välja på, men vi börjar med något enkelt - färgen.

{% highlight css %}

h1 {
  color: darkblue;
}
{% endhighlight %}

<img src="{{ site.url }}/assets/images/asset_css-basics.png" style="margin-left: -11px;"/> 



<div class="success box" style="margin-top: 10px;">
  <h3>Bra!</h3>
  <p>Nu kan du grunden i hur CSS fungerar. Nästa steg blir att lära sig alla attribut som går att tillämpa i CSS.</p>
</div>



<a class="btn btn-next" href="{{ site.url }}#">Gå till nästa steg!</a>
