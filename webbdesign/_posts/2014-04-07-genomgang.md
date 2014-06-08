---
layout: page
headerimage: 'header_html-css-genomgang.jpg'
title: Genomgång
comments: true
submenu: true
---

<p class="preamble">Vi kommer nu att sätta upp en fungerande hemsida, och det gäller att du har följt hela kursen för att hänga med.</p>

##Resultat

Såhär kommer vårat exempel att bli, <a>tryck här</a> för att ladda ner exempelsidans alla filer.

<img src="{{ site.url }}/assets/images/asset_html-css-genomgang6.png"/> 


##Sätta upp det viktigaste

Vi börjar med vår <a href="/webbdesign/grunderna-i-html/">HTML-grund</a>, samt en <a href="/webbdesign/reset-css/">CSS-reset</a>.

{% highlight html %}

<!doctype html>

<html>

  <head>
    <meta charset="utf-8">
    <title>Matlagning</title>
  </head>

  <body>
    <!-- Innehållet på hemsidan ska ligga här -->
  </body>

</html>

{% endhighlight %}

##Header, content, sidebar och footer

Det här är de fyra områdena som jag tänkt ha på hemsidan. Jag skriver dom som divar men de kan även skrivas som ``<header>`` ``<content>`` och ``<footer>`` i senaste versionen HTML 5.

{% highlight html %}

  <body>
    
    <div id="header">
    </div>

    <div id="content">
    </div>

    <div id="sidebar">
    <div>

    <div id="footer">
    </div>
  
  </body>

{% endhighlight %}


{% highlight css %}

#header{

}

#content{

}

#sidebar{

}

#footer{

}

{% endhighlight %}


##Storlekar och positionering

Header och footer tänker jag mig ska vara 100% breda, medan content och sidebar ska ligga bredvid varandra och vara 70% respektive 30% breda.

{% highlight css %}

#header{
  width: 100%;
}

#content{
  width: 70%;
}

#sidebar{
  width: 30%;
}

#footer{
  width: 100%;
}

{% endhighlight %}

<img src="{{ site.url }}/assets/images/asset_html-css-genomgang1.png"/> 



###Floata sidebaren till höger om content

Content och sidebar tänker jag mig ska ligga bredvid varandra, det fixar vi med att sätta ``float: left`` på divarna, samt en div som omringar de två divarna och avslutar floaten. Jag döper den diven till container.

{% highlight html %}

      <div class="container">

        <div id="content">
        </div>

        <div id="sidebar">
        <div>

      </div>

{% endhighlight %}



{% highlight css %}

#content{
  width: 70%;
  float: left;	
}

#sidebar{
  width: 30%;
  float: left;	
}

.container{
  overflow: hidden;
}

{% endhighlight %}

###Avstånd mellan content och sidebar
Vi vill ha ett avstånd mellan <strong>#content</strong> och <strong>#sidebar</strong>, det gör vi genom att ta bort ``10%`` av bredden på <strong>#sidebar</strong> och lägga det på en ``margin-left`` istället.

{% highlight css %}

#sidebar{
  width: 20%;
  float: left;
  margin-left: 10%;	
}

{% endhighlight %}

<img src="{{ site.url }}/assets/images/asset_html-css-genomgang1-5.png"/> 



##Wrapper

Allt ska centreras inom ett 960px brett område hade jag tänkt. Vi lägger därför alla divar inom en <a href="/webbdesign/css-wrapper/">wrapper</a>.

{% highlight html %}

  <body>
    
    <div class="siteWrapper">

      <div id="header">
      </div>

      <div class="container">

        <div id="content">
        </div>

        <div id="sidebar">
        <div>

      </div>

      <div id="footer">
      </div>

    </div>
  
  </body>

{% endhighlight %}

{% highlight css %}

.siteWrapper{
  width: 960px;
  margin: 0 auto;
}

{% endhighlight %}

<img src="{{ site.url }}/assets/images/asset_html-css-genomgang2.png"/>


##Färger och bakgrunder

Vi börjar med att sätta en bakgrundsfärg på hela sidan, alltså body. Där tänker jag mig en ljusgrå färg. Headern kan vi strunta i att ge bakgrund åt och container gör vi vit. Footern blir mörkgrå.

{% highlight css %}

body{
  background: #e4e5e4;
}

.container{
  overflow: hidden;
  background: #fff;
}

#footer{
  width: 100%;
  background: #1d1d1d;
}

{% endhighlight %}

<img src="{{ site.url }}/assets/images/asset_html-css-genomgang3.png"/> 



##Texter

Vi fyller vår hemsida med textinnehåll, i det här exemplet kommer jag att skriva en massa <a href="http://sv.lipsum.com/" target="_blank">Lorem Ipsum</a>.

{% highlight html %}

  <body>

    <div class="siteWrapper">

      <div id="header">
        <h1>Matlagning</h1>
      </div>

      <div class="container">
        <div id="content">
          <h2>Vegetarisk mat är bra för hälsan</h2>
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. 
          Fugit, non aut tempore itaque veniam ipsam aperiam quae quasi.</p>
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. 
          Totam, consequatur, nam, labore, recusandae cum quas provident 
          obcaecati quaerat quibusdam porro a praesentium assumenda i
          llum impedit doloribus perspiciatis sequi rem ullam.</p>
        </div>
 
        <div id="sidebar">
          <h3>Fakta om vegetarisk mat</h3>
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. 
          Similique, magni, quaerat blanditiis odio quibusdam perspiciatis 
          placeat commodi iste repudiandae rem veniam aperiam dolores 
          reprehenderit ut amet beatae accusamus. Quia, dicta.</p>
        </div>
      </div>
 
      <div id="footer">
        <span>Skapades av <a href="http://webbdesignkurser.se">Webbdesignkurser</a></span>
      </div>
      
    </div>
  
  </body>

{% endhighlight %}

<img src="{{ site.url }}/assets/images/asset_html-css-genomgang4.png"/> 




##Padding

Som du märker är det väldigt trångt just nu. Det fixar vi med hjälp av <a href="/webbdesign/css-margin-padding/">padding</a> på <strong>#header</strong>, <strong>#container</strong> och <strong>span</strong> som ligger i footern. Eftersom <strong>span</strong> inte reagerar som ett block vanligtvis, måste vi ge den ``display: block`` för att kunna ha en padding.

{% highlight css %}

#header{
  width: 100%;
  padding: 30px 0px;
}

.container{
  overflow: hidden;
  background: #fff;
  padding: 30px;
}

#footer span{
  display: block;
  padding: 30px;
}


{% endhighlight %}

<img src="{{ site.url }}/assets/images/asset_html-css-genomgang5.png"/> 



##Textstiler

Sist men inte minst så ska alla <a href="/webbdesign/css-typografi/">texter stylas</a>.

{% highlight css %}

h1 {
  font-size: 40px;
  line-height: 45px;
  font-family: helvetica;
  font-weight: bold;
}

h2 {
  font-size: 25px;
  line-height: 30px;
  margin-bottom: 15px;
  font-family: helvetica;
}

h3 {
  font-size: 20px;
  line-height: 25px;
  margin-bottom: 15px;
  font-family: helvetica;
}

p {
  font-size: 14px;
  line-height: 25px;
  margin-bottom: 15px;
  font-family: helvetica;
}

a{
  color: #eb4f9a;
  text-decoration: none;
}

#footer span{
  display: block;
  padding: 30px;
  color: #eee;
  font-size: 14px;
  font-family: helvetica;
}

{% endhighlight %}

<img src="{{ site.url }}/assets/images/asset_html-css-genomgang6.png"/> 


<a class="btn btn-next" href="{{ site.url }}#">Gå till nästa steg!</a>
