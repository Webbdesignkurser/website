---
layout: page
headerimage: 'header_css-wrapper.jpg'
title: Wrapper
comments: true
---


##Centrera hemsidan med CSS

<p class="preamble">För att centrera hemsidan behöver du veta vilken bredd som hemsidan ska ha, när du vet det så kan vi skapa en så kallat Wrapper.</p>

Börja med att omsluta innehållet som ska centreras i en div som vi döper till Wrapper.

{% highlight html %}

<div class="contentWrapper">

  <div class="content">
    <h1>Min hemsida</h1>
  </div>

</div>

{% endhighlight %}

Vi ska sedan berätta för wrapper vilken bredd hemsidan ska ha, samt ge den ``margin: 0 auto;``
Rekommenderas att hemsidans bredd antingen är 960px eller 1200px bred.

{% highlight css %}

.contentWrapper{
  width: 1200px;
  margin: 0 auto;
}

{% endhighlight %}

<a class="btn btn-next" href="{{ site.url }}/webbdesign/genomgang">Gå till nästa steg!</a>
