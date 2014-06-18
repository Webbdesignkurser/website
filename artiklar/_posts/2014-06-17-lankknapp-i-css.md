---
layout: artikel
headerimage: 'header_lankknapp-i-css.jpg'
title: Länkknapp i CSS
comments: true
---
<p class="preamble">Hur du på bästa sätt skapar en länkknapp i CSS. </p> 
En bra knapp vill man trycka på - det spelar ingen roll vart den går någonstans, du vill bara trycka på den. Det är ditt jobb att få användaren att trycka på dom knappar som du vill att användaren ska trycka på, därför är det viktigt att göra dom attraktiva.

###Styla länken, inte elementet utanför
Det finns två sätt att gå tillväga, bara ett är rätt. Antingen lägger man länken i ett html-element och stylar html-elementet, eller så struntar man i elementet och stylar länken direkt. Varför man bör styla länken direkt och inte html-elementet beror på att hela länken ska vara tryckbar och aktiv. Med ett element utanpå förlorar du länkbart område och det blir svårare att styla.


{% highlight html %}

<span class="button"><a href="#">Fel sätt</a></span>

<a href="#" class="button">Rätt sätt</a>

{% endhighlight %}


{% highlight css %}

.button {
  background: #2eabd9;
  padding: 10px 18px;
  color: #fff;
}

{% endhighlight %}

<div class="example box full-width">
	<span style="background: #2eabd9; padding: 10px 18px; color: #fff; display: inline-block;"><a href="#" style="color: #fff;">Fel sätt</a></span>
	<a style="background: #2eabd9; padding: 10px 18px; color: #fff; display: inline-block;" href="#">Rätt sätt</a>
</div>



###Dela upp det i flera knappar
Vanligtvis brukar man ha ett flertal olika knappar där varje knapp spelar en roll, en knapp kan varna besökaren för något och en annan kan berätta för användaren att den har lyckats och är världens bästa människa. Alla knappar har varsin pedagogiska färg. Hur delar man då upp detta på ett effektivt sätt? Bäst är det att återanvända css som finns i alla knappar gemensamt. Det betyder att vi kommer att ha en grund-class till alla knappar, och därefter en child-class där vi bestämmer färg.


{% highlight html %}

<a href="#" class="button primary">Primär knapp</a>
<a href="#" class="button success">Du är bäst!</a>
<a href="#" class="button warning">Vill du verkligen trycka?</a>
<a href="#" class="button danger">Här vill du inte trycka</a>

{% endhighlight %}


{% highlight css %}

.button {}

.button.primary {}

.button.success {}

.button.warning {}

.button.danger {}

{% endhighlight %}


###Grunden på knappen
De tre attributet som vi kommer att applicera är ``padding``, ``color``, ``border-radius`` och ``display``.  

Det som jag tycker blir snyggast estetiskt sätt är när sidorna på knappen minst är bredare än topp och botten, den känns stabilare och mer tryckvänligt.

{% highlight css %}

.button {
  padding: 10px 18px;
}

{% endhighlight %}

Därefter gör vi knapptexten vit.

{% highlight css %}

.button {
  padding: 10px 18px;
  color: #fff;
}

{% endhighlight %}

Med hjälp av <strong>border-radius</strong> kan vi göra kanterna runda på knappen. 3px eller 5px brukar bli perfekt om det gäller mindre knappar. Eftersom alla webbläsare envisas med att ha en egen standard så behöver vi skriva ut border-radius på tre olika variablar.

{% highlight css %}

.button {
  padding: 10px 18px;
  color: #fff;
  -webkit-border-radius: 3px; 
  -moz-border-radius: 3px; 
  border-radius: 3px; 
}

{% endhighlight %}

Till sist ska vi applicera ``display: inline-block`` för att knappen ska lägga sig mer som ett block istället för en text.

{% highlight css %}

.button {
  padding: 10px 18px;
  color: #fff;
  -webkit-border-radius: 3px; 
  -moz-border-radius: 3px; 
  border-radius: 3px; 
  display: inline-block;
}

{% endhighlight %}

###Färgsätt alla knappar
Nu när vi har grunden klar kan vi färgsätta alla knappar med hjälp av ``background``.


{% highlight css %}

.button.primary {
  background: #2eabd9;
}

.button.success {
  background: #38ac39;
}

.button.warning {
  background: #bf8520;
}

.button.danger {
  background: #ba2a2d;
}

{% endhighlight %}


###Hover
Vilken färg ska knapparna få när man tar musen över? Det bestämmer vi med hjälp av <strong>hover</strong>.

{% highlight css %}

.button.primary {
  background: #2eabd9;
}
  .button.primary:hover {
    background: #1987b0;
  }

.button.success {
  background: #38ac39;
}
  .button.success:hover {
    background: #297f22;
  }

.button.warning {
  background: #bf8520;
}
  .button.warning:hover {
    background: #a8720e;
  }

.button.danger {
  background: #ba2a2d;
}
  .button.danger:hover {
    background: #a42322;
  }

{% endhighlight %}

Vi vill dessutom inte ha någon underline på länktexten, så vi skriver ``text-decoration: none`` på <strong>.button</strong>.

{% highlight css %}

.button {
  padding: 10px 18px;
  color: #fff;
  -webkit-border-radius: 3px; 
  -moz-border-radius: 3px; 
  border-radius: 3px; 
  text-decoration: none;
}
  .button:hover {
  	text-decoration: none;
  }

{% endhighlight %}


##Resultat

<style>
.exempel-button{
  padding: 10px 18px;
  color: #fff;
  -webkit-border-radius: 3px; 
  -moz-border-radius: 3px; 
  border-radius: 3px; 
  text-decoration: none;
  display: inline-block;
  margin-bottom: 5px;
}
  .exempel-button:hover{
  	text-decoration: none;
  	color: #fff;
  }


.exempel-button.exempel-button-primary{
  background: #2eabd9;
}
  .exempel-button.exempel-button-primary:hover{
    background: #1987b0;
  }

.exempel-button.exempel-button-success{
  background: #38ac39;
}
  .exempel-button.exempel-button-success:hover{
    background: #297f22;
  }

.exempel-button.exempel-button-warning{
  background: #bf8520;
}
  .exempel-button.exempel-button-warning:hover{
    background: #a8720e;
  }

.exempel-button.exempel-button-danger{
  background: #ba2a2d;
}
  .exempel-button.exempel-button-danger:hover{
    background: #a42322;
  }
</style>

<a href="#" class="exempel-button exempel-button-primary">Primär knapp</a>
<a href="#" class="exempel-button exempel-button-success">Du är bäst!</a>
<a href="#" class="exempel-button exempel-button-warning">Vill du verkligen trycka?</a>
<a href="#" class="exempel-button exempel-button-danger">Här vill du inte trycka</a>

{% highlight html %}

<a href="#" class="button primary">Primär knapp</a>
<a href="#" class="button success">Du är bäst!</a>
<a href="#" class="button warning">Vill du verkligen trycka?</a>
<a href="#" class="button danger">Här vill du inte trycka</a>

{% endhighlight %}


{% highlight css %}
.button {
  padding: 10px 18px;
  color: #fff;
  -webkit-border-radius: 3px; 
  -moz-border-radius: 3px; 
  border-radius: 3px; 
  text-decoration: none;
  display: inline-block;
}
  .button:hover {
  	text-decoration: none;
  }


.button.primary {
  background: #2eabd9;
}
  .button.primary:hover {
    background: #1987b0;
  }

.button.success {
  background: #38ac39;
}
  .button.success:hover {
    background: #297f22;
  }

.button.warning {
  background: #bf8520;
}
  .button.warning:hover {
    background: #a8720e;
  }

.button.danger {
  background: #ba2a2d;
}
  .button.danger:hover {
    background: #a42322;
  }

{% endhighlight %}

