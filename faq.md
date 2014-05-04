---
layout: page
headerimage: 'header_faq.jpg'
title: "Vanliga frågor"
page: faq
permalink: /faq/
---

## Hur gör man en hemsida?
Hemsidor är uppbyggda av ren text, sparade i små filer som man laddar upp på sitt webbhotell. Dom här texterna kan till exempel vara skrivna i ett språk kallat HTML. Med HTML kan man hämta in bilder och texter på hemsidan, samt skapa länkar till andra filer.  

För att få större inblick på hur en hemsida kan vara uppbyggd kan du högerklicka på en hemsida för att visa källkoden, då dyker dom här texterna upp. Vill du lära dig mer hur man verkligen skapar en hemsida kan du följa vår nybörjarkurs i HTML & CSS.

## WYSIWYG-Program?
WYSIWYG står för What You See Is What You Get, det vill säga program som hjälper dig skapa hemsidor med hjälp av visuella verktyg. Det är inget vi rekommenderar, men det är såklart en smaksak. Dreamviewer är ett exempel på WYSIWYG-program, vilket ger dig både en visuell redigerare och möjlighet till att skriva direkt i koden.

## Vad är copyright?
Copyright, eller upphovsrätt som det heter på svenska, används för att ge den person som skapat något av verkshöjd ensamrätt över materialet. Att kopiera copyright-skyddat material bryter mot lagen vilket kan resultera i skadestånd.

## Jag får en massa konstiga tecken istället för å, ä och ö?
Det beror på kodningen på din hemsida. Du måste berätta för hemsidan att det är svenska som gäller.
Lägg in det här inom ``<head>``:
{% highlight html %}
<meta charset="utf-8">
{% endhighlight %}

## Hemsidan ser konstig ut i Internet Explorer?
Det är inte ovanligt att Internet Explorer ska kasta om allt. Kolla så att du har följande doctype-kod längst upp på sidan. Det här berättar för webbläsaren att du skriver i HTML5.

{% highlight html %}
<!DOCTYPE html>
{% endhighlight %}

## Hur väljer jag webbhotell?
Vi är en oberoende tjänst när det gäller val av webbhotell och kan inte ge några förslag. Däremot får du gärna läsa vårat kapitel om webbhotell för att veta mer vad man ska tänka på när man väljer.

## Hur kan jag öka trafiken på sidan?
Bästa sättet är att ha bra innehåll på sidan som besökarna vill läsa och dela med sig av. Sedan brukar det mesta gå av sig själv. Annars kan man köpa reklamplats på till exempel Facebook, Twitter, Google med flera.

## Hur kan jag kontakta er?
Du kan kontakta oss på: [kontakt@webbdesignkurser.se](mailto:kontakt@webbdesignkurser.se).