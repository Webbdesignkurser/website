---
layout: page
headerimage: 'header_faq.jpg'
title: "Vanliga frågor"
page: faq
permalink: /faq/
---

## Vilka typer av hemsidor kommer jag att kunna skapa med hjälp av era kurser?
Du kommer att kunna skapa enkla, snygga och moderna hemsidor. Dock lär vi inte ut någon programmering i PHP och databashantering, vilket betyder att du bara kommer att lära dig hur man skapar statiska hemsidor.
Kort sagt kan vi säga att du kommer kunna göra en hemsida likt den här.

### Vad är skillnaden på statiska och dynamiska hemsidor?
På en statisk hemsida kan man inte använda databaser för att hantera inloggningar, inläggsredigerare, bloggliknande funktioner med mera. Med en dynamisk sida kan man därimot göra detta, med hjälp av bland annat programmeringsspråket PHP och databashantering. Vi har valt att i nuläget inte gå djupare in på det här.

## Kan ni göra en hemsida åt mig?
Tyvärr inte, vi lär bara ut. Testa däremot vår [nybörjarkurs i webbdesign](/webbdesign/inledning) så är du snart proffs på webbdesign.

### Har ni workshops eller fysiska kurser?
Nej, men vi bollar gärna idéer mer dig :)

## Vad är copyright?
Copyright, eller upphovsrätt som det heter på svenska, används för att ge den person som skapat något av verkshöjd ensamrätt över materialet. Att kopiera copyright-skyddat material bryter mot lagen vilket kan resultera i skadestånd.

## Jag får konstiga tecken istället för å, ä och ö?
Det beror på kodningen på din hemsida. Du måste berätta för hemsidan att det är svenska som gäller.  
<strong>Klistra in</strong> det här inom ``<head>``:
{% highlight html %}
<meta charset="utf-8">
{% endhighlight %}

## Hemsidan ser konstig ut i Internet Explorer?
Det är inte ovanligt att Internet Explorer ska kasta om allt. Kolla så att du har följande doctype-kod längst upp på sidan. Det här berättar för webbläsaren att du skriver i HTML5.

{% highlight html %}
<!DOCTYPE html>
{% endhighlight %}

## Hur väljer jag webbhotell?
Vi är en oberoende tjänst när det gäller val av webbhotell och kan inte ge några förslag. Däremot får du gärna läsa vårat kapitel [om webbhotell](/webbdesign/publicera-hemsidan).

## Hur kan jag öka trafiken på sidan?
Bästa sättet är att ha bra innehåll på sidan som besökarna vill läsa och dela med sig av. Sedan brukar det mesta gå av sig själv. Annars kan man köpa reklamplats på till exempel Facebook, Twitter, Google med flera. 

## Hur kontaktar jag er?
Skicka oss ett mail på [kontakt@webbdesignkurser.se](mailto:kontakt@webbdesignkurser.se) så ska vi försöka svara så snart vi kan!