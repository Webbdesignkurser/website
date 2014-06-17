---
layout: artikel
headerimage: 'header_lankknapp-i-css.jpg'
title: Länkknapp i CSS
comments: true
---
<p class="preamble">Hur man skapar en länkknapp på bästa sätt i CSS. </p> 
En bra knapp vill man trycka på - det spelar ingen roll vart den går någonstans, du vill bara trycka på den. Vi kommer här att visa hur du stylar en länkknapp.

###Styla länken, inte elementet utanför
Det finns två sätt att gå tillväga, bara ett är rätt. Antingen lägger man länken i ett html-element och stylar elementet, eller så struntar man i elementet och stylar länken direkt. Varför man bör styla länken direkt och inte elementet beror på att hela länken ska vara tryckbar och aktiv. Med ett element utanpå förlorar du länkbart område.


{% highlight html %}

<span class="button"><a href="#">Fel sätt</a></span>

<a href="#" class="button">Rätt sätt</a>

{% endhighlight %}


{% highlight css %}

.button{
  background: #2eabd9;
  padding: 10px 18px;
  color: #fff;
}

{% endhighlight %}

<div class="example box full-width">
	<span style="background: #2eabd9; padding: 10px 18px; color: #fff; display: inline-block;"><a href="#" style="color: #fff;">Fel sätt</a></span>
	<a style="background: #2eabd9; padding: 10px 18px; color: #fff; display: inline-block;" href="#">Rätt sätt</a>
</div>



###Dela upp knappen
Vanligtvis brukar man ha ett flertal olika knappar där varje knapp spelar en roll, en knapp kan varna besökaren för något, en annan kan informera om något och en kan berätta för användaren att den har lyckats och är världens bästa människa. Alla med varsin pedagogisk färg. Hur gör man då detta på ett effektivt sätt? Bäst är det att återanvända css som finns i alla knappar gemensamt. Det betyder att vi kommer att ha en grund-class till alla knappar, och därefter en child-class där vi bestämmer färgerna.


{% highlight html %}

<a href="#" class="btn button-primary">Primär knapp</a>
<a href="#" class="btn button-success">Du är bäst!</a>
<a href="#" class="btn button-warning">Vill du verkligen trycka?</a>
<a href="#" class="btn button-danger">Här vill du inte trycka</a>

{% endhighlight %}


{% highlight css %}

.btn{}

.btn.button-primary{}

.btn.button-success{}

.btn.button-warning{}

.btn.button-danger{}

{% endhighlight %}


###Grunden på knappen
De tre attributet som vi kommer att applicera är ``padding``, ``color``, ``border-radius`` och ``display``.  

Det som jag tycker blir snyggast estetiskt sätt är när sidorna på knappen är lite bredare än topp och botten, den känns stabilare och mer tryckvänligt.

{% highlight css %}

.btn{
  padding: 10px 18px;
}

{% endhighlight %}

Därefter gör vi knapptexten vit.

{% highlight css %}

.btn{
  padding: 10px 18px;
  color: #fff;
}

{% endhighlight %}

Med hjälp av <strong>border-radius</strong> kan vi göra kanterna runda på knappen. 3px brukar bli perfekt om det gäller mindre knappar. Eftersom alla webbläsare envisas med att ha en egen standard så behöver vi skriva ut border-radius på tre olika variablar.

{% highlight css %}

.btn{
  padding: 10px 18px;
  color: #fff;
  -webkit-border-radius: 3px; 
  -moz-border-radius: 3px; 
  border-radius: 3px; 
}

{% endhighlight %}

Till sist ska vi applicera ``display: inline-block`` för att knappen ska lägga sig mer som ett block istället för en text.

{% highlight css %}

.btn{
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

.btn.button-primary{
  background: #2eabd9;
}

.btn.button-success{
  background: #38ac39;
}

.btn.button-warning{
  background: #bf8520;
}

.btn.button-danger{
  background: #ba2a2d;
}

{% endhighlight %}


###Hover
Vilken färg ska knapparna få när man tar musen över? Det bestämmer vi med hjälp av <strong>hover</strong>.

{% highlight css %}

.btn.button-primary{
  background: #2eabd9;
}
  .btn.button-primary:hover{
    background: #1987b0;
  }

.btn.button-success{
  background: #38ac39;
}
  .btn.button-success:hover{
    background: #297f22;
  }

.btn.button-warning{
  background: #bf8520;
}
  .btn.button-warning:hover{
    background: #a8720e;
  }

.btn.button-danger{
  background: #ba2a2d;
}
  .btn.button-danger:hover{
    background: #a42322;
  }

{% endhighlight %}

Vi vill dessutom inte ha någon underline på länktexten, så vi skriver ``text-decoration: none`` på <strong>.btn</strong>.

{% highlight css %}

.btn{
  padding: 10px 18px;
  color: #fff;
  -webkit-border-radius: 3px; 
  -moz-border-radius: 3px; 
  border-radius: 3px; 
  text-decoration: none;
}
  .btn:hover{
  	text-decoration: none;
  }

{% endhighlight %}


##Resultat

<style>
.exempel-btn{
  padding: 10px 18px;
  color: #fff;
  -webkit-border-radius: 3px; 
  -moz-border-radius: 3px; 
  border-radius: 3px; 
  text-decoration: none;
  display: inline-block;
  margin-bottom: 5px;
}
  .exempel-btn:hover{
  	text-decoration: none;
  	color: #fff;
  }


.exempel-btn.exempel-button-primary{
  background: #2eabd9;
}
  .exempel-btn.exempel-button-primary:hover{
    background: #1987b0;
  }

.exempel-btn.exempel-button-success{
  background: #38ac39;
}
  .exempel-btn.exempel-button-success:hover{
    background: #297f22;
  }

.exempel-btn.exempel-button-warning{
  background: #bf8520;
}
  .exempel-btn.exempel-button-warning:hover{
    background: #a8720e;
  }

.exempel-btn.exempel-button-danger{
  background: #ba2a2d;
}
  .exempel-btn.exempel-button-danger:hover{
    background: #a42322;
  }
</style>

<a href="#" class="exempel-btn exempel-button-primary">Primär knapp</a>
<a href="#" class="exempel-btn exempel-button-success">Du är bäst!</a>
<a href="#" class="exempel-btn exempel-button-warning">Vill du verkligen trycka?</a>
<a href="#" class="exempel-btn exempel-button-danger">Här vill du inte trycka</a>

{% highlight html %}

<a href="#" class="btn button-primary">Primär knapp</a>
<a href="#" class="btn button-success">Du är bäst!</a>
<a href="#" class="btn button-warning">Vill du verkligen trycka?</a>
<a href="#" class="btn button-danger">Här vill du inte trycka</a>

{% endhighlight %}


{% highlight css %}
.btn{
  padding: 10px 18px;
  color: #fff;
  -webkit-border-radius: 3px; 
  -moz-border-radius: 3px; 
  border-radius: 3px; 
  text-decoration: none;
  display: inline-block;
}
  .btn:hover{
  	text-decoration: none;
  }


.btn.button-primary{
  background: #2eabd9;
}
  .btn.button-primary:hover{
    background: #1987b0;
  }

.btn.button-success{
  background: #38ac39;
}
  .btn.button-success:hover{
    background: #297f22;
  }

.btn.button-warning{
  background: #bf8520;
}
  .btn.button-warning:hover{
    background: #a8720e;
  }

.btn.button-danger{
  background: #ba2a2d;
}
  .btn.button-danger:hover{
    background: #a42322;
  }

{% endhighlight %}

