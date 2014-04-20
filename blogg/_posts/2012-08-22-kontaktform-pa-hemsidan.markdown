---
layout: post
status: publish
published: true
title: Kontaktform p&aring; hemsidan
author: admin
author_login: admin
author_email: kontakt@webbdesignkurser.se
wordpress_id: 1672
wordpress_url: http://webbdesignkurser.se/?p=1672
date: '2012-08-22 16:18:26 +0200'
date_gmt: '2012-08-22 14:18:26 +0200'
categories:
- Blogg
tags:
- Kontaktform
- php
- css3
- knappar
comments: []
---
<p><img src="http:&#47;&#47;webbdesignkurser.se&#47;wp-content&#47;uploads&#47;2012&#47;08&#47;kontaktform1.png" alt="" title="Kontaktform p&aring; hemsidan" width="700" height="428" class="alignnone size-full wp-image-1840" &#47;><br />
<strong>Vill du att dina bes&ouml;kare enkelt ska kunna kontakta dig, men du vill inte ge ut din email-adress?<&#47;strong><br />
I den h&auml;r snabba kursen visar vi hur man kan skapa en fungerande kontaktform fr&aring;n grunden. Vi g&aring;r igenom tre steg, n&auml;mligen HTML-grunden, PHP-funktionaliteten och till sist CSS3.</p>
<h2>Vi b&ouml;rjar med grunden<&#47;h2><br />
F&ouml;r att markera att vi ska skriva formul&auml;r skriver man helt enkelt<br />
<form> och avslutar med <&#47;form></p>
<p>[html]</p>
<form>
<p><&#47;form><br />
[&#47;html]</p>
<h2>Label och Input<&#47;h2><br />
Vi b&ouml;rjar med en <strong>label<&#47;strong> som fungerar som en rubrik f&ouml;r v&aring;rt kommande textf&auml;lt. Labeln &auml;r igentligen bara ett vanligt textomr&aring;de, f&ouml;rutom att om du trycker p&aring; texten aktiverar du textf&auml;ltets inmatning som den &auml;r bunden till.<br />
Vi l&auml;gger sedan in en <strong>Input<&#47;strong> som fungerar som v&aring;rat f&ouml;rsta textf&auml;lt.<br />
Inom input-taggarna skriver vi ocks&aring; tre variablar, type, name och id. <strong>Type<&#47;strong> beskriver vad f&ouml;r typ av form det &auml;r, <strong>name<&#47;strong> d&ouml;per v&aring;r form och <strong>id<&#47;strong> ska vara den samma som labeln f&ouml;r att elementen ska kunna bindas till varandra.</p>
<p>[html]</p>
<form>
<label for="namn">Namn:<&#47;label><br&#47;><br />
<input type="text" name="namn_form" id="namn"><br />
<&#47;form><br />
[&#47;html]</p>
<div style="width:700px;padding:10px;background:#f3abcb;border-radius:5px">
<form>
<label for="namn">Namn:<&#47;label><br />
<input type="text" name="namn_form" id="namn"&#47;><br />
<&#47;form><br />
<&#47;div></p>
<h2>Meddelandet (textarea)<&#47;h2><br />
Meddelandet ska skrivas i en form som har taggen <strong>textarea<&#47;strong>.<br />
Inom textarea finner vi samma variablar plus tv&aring; till, n&auml;mligen <strong>cols<&#47;strong>(bredd) och <strong>rows<&#47;strong>(rader).<br />
[html]</p>
<form>
<label for="meddelande">Meddelande:<&#47;label><br&#47;><br />
<textarea name="meddelande_form" id="meddelande" cols="40" rows="10"&#47;><&#47;textarea><br />
<&#47;form><br />
[&#47;html]</p>
<div style="width:700px;padding:10px;background:#f3abcb;border-radius:5px">
<form>
<label for="meddelande">Meddelande:<&#47;label><br />
<textarea name="meddelande_form" id="meddelande" cols="40" rows="10"&#47;><&#47;textarea><br />
<&#47;form><br />
<&#47;div></p>
<h2>Knappen (submit)<&#47;h2><br />
Vi skriver knappen likadant, f&ouml;rutom att vi byter ut <strong>type="text"<&#47;strong> till <strong>type="submit"<&#47;strong><br />
Inneh&aring;llet i v&aring;r knapp skriver vi med variabeln <strong>Value<&#47;strong>.</p>
<p>[html]</p>
<form>
<input type="submit" name="skicka" value="Skicka mailet"><br />
<&#47;form><br />
[&#47;html]</p>
<div style="width:700px;padding:10px;background:#f3abcb;border-radius:5px">
<form><input type="submit" name="skicka" value="Skicka mailet" &#47;><&#47;form><br />
<&#47;div></p>
<h2>V&aring;r grund<&#47;h2><br />
[html]</p>
<form>
<p><label for="namn">Namn:<&#47;label><br&#47;><br />
<input type="text" name="namn_form" id="namn"&#47;><br&#47;></p>
<p><label for="email">Email:<&#47;label><br&#47;><br />
<input type="text" name="email_form" id="email"&#47;><br&#47;></p>
<p><label for="subject">&Auml;mne:<&#47;label><br&#47;><br />
<input type="text" name="subject_form" id="subject"&#47;><br&#47;></p>
<p><label for="meddelande">Meddelande:<&#47;label><br&#47;><br />
<textarea name="meddelande_form" id="meddelande" cols="40" rows="10"&#47;><&#47;textarea><br&#47;></p>
<p><input type="submit" name="skicka" value="Skicka mailet"></p>
<p><&#47;form><br />
[&#47;html]</p>
<div style="width:700px;padding:10px;background:#f3abcb;border-radius:5px">
<form>
<p><label for="namn">Namn:<&#47;label><br />
<input type="text" name="namn_form" id="namn"&#47;><br&#47;></p>
<p><label for="mail">Email:<&#47;label><br />
<input type="text" name="email_form" id="mail"&#47;><br&#47;></p>
<p><label for="subject">&Auml;mne:<&#47;label><br />
<input type="text" name="subject_form" id="subject"&#47;><br&#47;></p>
<p><label for="meddelande">Meddelande:<&#47;label><br />
<textarea name="meddelande_form" id="meddelande" cols="40" rows="10"&#47;><&#47;textarea><br&#47;></p>
<p><input type="submit" name="skicka" value="Skicka mailet"><br&#47;></p>
<p><&#47;form><br />
<&#47;div></p>
<h2>Funktionalitet<&#47;h2><br />
Nu &auml;r det dags att g&ouml;ra s&aring; att formen g&ouml;r n&aring;gonting, i detta exemplet har vi valt att anv&auml;nda oss av PHP.<br />
Om du aldrig har anv&auml;nt dig av PHP kan du snart l&auml;sa v&aring;r <strong>PHP f&ouml;r nyb&ouml;rjare<&#47;strong> (under uppbyggnad).<br />
F&ouml;rst g&ouml;r vi s&aring; att html-formen skickar data till PHP scriptet, detta g&ouml;r vi genom att &auml;ndra form-taggen till<br />
[html]<br />
<form method="POST">[&#47;html]<br />
Sedan l&auml;gger vi in f&ouml;ljande PHP kod f&ouml;r att skicka meddelandet via email:<br />
[php]<br />
<?php<br />
if (isset($_POST['skicka'])) {<br />
    &#47;&#47;Namn<br />
    $name = $_POST['namn_form'];<br />
    &#47;&#47;Email<br />
    $email = $_POST['email_form'];<br />
    &#47;&#47;&Auml;mne<br />
    $subject = $_POST['subject_form'];<br />
    &#47;&#47;Meddelande<br />
    $message = $_POST['meddelande_form']; </p>
<p>    &#47;&#47;Fr&aring;n(Vad som syns i email klienten)<br />
    $header='Fr&aring;n: ' . $name . '<' . $email . '>';</p>
<p>    &#47;&#47;Din emailadress(Hit skickas mailen)<br />
    $to = 'someone@example.com';<br />
    &#47;&#47;Skicka mailet<br />
    $sent = mail($to,$subject,$message,$header);</p>
<p>    &#47;&#47;Kolla om meddelandet har skickats<br />
    if($sent){<br />
        &#47;&#47;Om det har skickats, visa ett tackmeddelande<br />
        echo "Tack f&ouml;r ditt meddelande";<br />
    }else {<br />
        &#47;&#47;Annars, visa ett felmeddelande<br />
        echo "N&aring;got gick fel!";<br />
    }<br />
}<br />
?><br />
[&#47;php]</p>
<p><strong>Klart!<&#47;strong> K&auml;llkoden f&ouml;r din sida b&ouml;r nu se ut s&aring;h&auml;r, spara den som "filnamn".php, tex kontakt.php:</p>
<p>[php]</p>
<form method="POST">
<p><label for="namn">Namn:<&#47;label><br />
<input type="text" name="namn_form" id="namn"&#47;><br&#47;></p>
<p><label for="email">Email:<&#47;label><br />
<input type="text" name="email_form" id="email"&#47;><br&#47;></p>
<p><label for="subject">&Auml;mne:<&#47;label><br />
<input type="text" name="subject_form" id="subject"&#47;><br&#47;></p>
<p><label for="meddelande">Meddelande:<&#47;label><br />
<textarea name="meddelande_form" id="meddelande" cols="40" rows="10"&#47;><&#47;textarea><br&#47;></p>
<p><input type="submit" name="skicka" value="Skicka mailet"></p>
<p><&#47;form></p>
<p><?php<br />
if (isset($_POST['skicka'])) {<br />
    &#47;&#47;Namn<br />
    $name = $_POST['namn_form'];<br />
    &#47;&#47;Email<br />
    $email = $_POST['email_form'];<br />
    &#47;&#47;&Auml;mne<br />
    $subject = $_POST['subject_form'];<br />
    &#47;&#47;Meddelande<br />
    $message = $_POST['meddelande_form']; </p>
<p>    &#47;&#47;Fr&aring;n(Vad som syns i email klienten)<br />
    $header='Fr&aring;n: ' . $name . '<' . $email . '>';</p>
<p>    &#47;&#47;Din emailadress(Hit skickas mailen)<br />
    $to = 'someone@example.com';<br />
    &#47;&#47;Skicka mailet<br />
    $sent = mail($to,$subject,$message,$header);</p>
<p>    &#47;&#47;Kolla om meddelandet har skickats<br />
    if($sent){<br />
        &#47;&#47;Om det har skickats, visa ett tackmeddelande<br />
        echo "Tack f&ouml;r ditt meddelande";<br />
    }else {<br />
        &#47;&#47;Annars, visa ett felmeddelande<br />
        echo "N&aring;got gick fel!";<br />
    }<br />
}<br />
?><br />
[&#47;php]</p>
<h2>Styla formen med CSS<&#47;h2><br />
Dags att styla v&aring;r hittills fula kontaktform.<br />
Det g&ouml;r vi genom att skapa en CSS-mall, kallad <strong>style.css<&#47;strong>. H&auml;r t&auml;nkte vi skapa tre <a href="&#47;nyborjare-div-class&#47;#class" target="_blank">classer<&#47;a> &aring;t formarna.<br />
De h&auml;r classerna ska du sedan applicera p&aring; dina form-taggar. Om du inte vet hur du g&ouml;r det kan du l&auml;sa <a href="http:&#47;&#47;webbdesignkurser.se&#47;nyborjare-css-grunder&#47;">CSS-grunder<&#47;a>.<br&#47;></p>
<p><strong>.info<&#47;strong> Namn, Email och &Auml;mne<br />
<strong>.message<&#47;strong> Meddelande<br />
<strong>.submit<&#47;strong> Skicka-knappen</p>
<p>[css]<br />
.info{</p>
<p>}</p>
<p>.message{</p>
<p>}</p>
<p>.submit{</p>
<p>}<br />
[&#47;css]</p>
<h2>Runda kanter och padding<&#47;h2><br />
<strong>Border-radius<&#47;strong> best&auml;mmer storleken p&aring; v&aring;ra runda kanter i formarna. H&auml;r k&ouml;r vi med 5px som exempel.<br />
-moz-border-radius och -webkit-border-radius g&ouml;r precis detsamma, men &auml;r skrivet f&ouml;r Firefox, samt Safari och Chrome.<br />
<strong>Padding<&#47;strong> fungerar som ett kraftf&auml;lt runt v&aring;r text. Det best&auml;mmer avst&aring;ndet fr&aring;n formens kanter till texten i f&auml;ltet.<br />
<img style="border:1px #9c9c9c solid;" src="http:&#47;&#47;webbdesignkurser.se&#47;wp-content&#47;uploads&#47;2012&#47;08&#47;input-shadow0.png" alt="" title="" width="369" height="62" class="alignnone size-full wp-image-1806" &#47;><br />
<img style="border:1px #9c9c9c solid;" src="http:&#47;&#47;webbdesignkurser.se&#47;wp-content&#47;uploads&#47;2012&#47;08&#47;buttons-shadow0-0.png" alt="" title="" width="245" height="62" class="alignnone size-full wp-image-1804" &#47;><br />
[css]<br />
.info{<br />
border-radius:5px;<br />
-moz-border-radius:5px;<br />
-webkit-border-radius:5px;<br />
padding:5px;<br />
}</p>
<p>.message{<br />
border-radius:5px;<br />
-moz-border-radius:5px;<br />
-webkit-border-radius:5px;<br />
padding:5px;<br />
}</p>
<p>.submit{<br />
border-radius:10px;<br />
-moz-border-radius:10px;<br />
-webkit-border-radius:10px;<br />
padding:5px;<br />
}<br />
[&#47;css]</p>
<h2>Bakgrund och kantlinje (border)<&#47;h2><br />
Bakgrundsf&auml;rgen skriver vi med hj&auml;lp av <strong>Background<&#47;strong>.<br />
Kantlinjen skrivs <strong>border: 1px #b0b0b0 solid<&#47;strong>.<br />
Vi vill att kantlinjen ska vara m&ouml;rkare &auml;n bakgrunden, f&ouml;r att f&aring; till kontrasten. V&aring;r kantlinje kommer smidigt att f&ouml;lja v&aring;ra runda kanter. Knappen g&ouml;r vi m&ouml;rklila.<br />
<img  style="border:1px #9c9c9c solid;"  src="http:&#47;&#47;webbdesignkurser.se&#47;wp-content&#47;uploads&#47;2012&#47;08&#47;input-shadow1.png" alt="" title="" width="369" height="62" class="alignnone size-full wp-image-1807" &#47;><br />
<img style="border:1px #9c9c9c solid;" src="http:&#47;&#47;webbdesignkurser.se&#47;wp-content&#47;uploads&#47;2012&#47;08&#47;buttons-shadow0.png" alt="" title="" width="245" height="62" class="alignnone size-full wp-image-1803" &#47;><br />
[css]<br />
.info{<br />
border-radius:5px;<br />
-moz-border-radius:5px;<br />
-webkit-border-radius:5px;<br />
padding:5px;<br />
background:#e1e1e1;<br />
border:1px #b0b0b0 solid;<br />
}</p>
<p>.message{<br />
border-radius:5px;<br />
-moz-border-radius:5px;<br />
-webkit-border-radius:5px;<br />
padding:5px;<br />
background:#e1e1e1;<br />
border:1px #b0b0b0 solid;<br />
}</p>
<p>.submit{<br />
border-radius:10px;<br />
-moz-border-radius:10px;<br />
-webkit-border-radius:10px;<br />
padding:5px;<br />
background:#971665;<br />
border:1px #771953 solid;<br />
}<br />
[&#47;css]</p>
<h2>Bredden p&aring; textf&auml;lten<&#47;h2><br />
Om du vill &auml;ndra bredden p&aring; antingen .info eller .message kan du klistra in en <strong>width:500px<&#47;strong>, annars g&aring;r webbl&auml;saren efter standardinst&auml;llningarna.</p>
<h2>Box-shadow p&aring; knappen<&#47;h2><br />
Med box-shadow kan du skapa en skugga p&aring; knappen f&ouml;r att f&aring; den mer oemotst&aring;ndlig. I det h&auml;r fallet g&ouml;r vi skuggan ljus och l&auml;gger den l&auml;ngst upp p&aring; knappen.<br&#47;><br&#47;></p>
<table class="cssprop">
<tbody>
<tr>
<td width="50px"><strong>box-shadow:<&#47;strong><&#47;td>
<td width="50px"><strong> inset<&#47;strong><&#47;td>
<td width="50px"><strong> 0px<&#47;strong><&#47;td>
<td width="50px"><strong> 1px<&#47;strong><&#47;td>
<td width="50px"><strong> 0px<&#47;strong><&#47;td>
<td><strong> #c83890;<&#47;strong><&#47;td><br />
<&#47;tr></p>
<tr>
<td width="50px">Attribut<&#47;td>
<td width="50px">Skugga inne&#47;ute<&#47;td>
<td width="50px">x- koordinat<&#47;td>
<td width="50px"> y-koordinat<&#47;td>
<td width="50px">Styrka p&aring; skugga<&#47;td>
<td width="50px">F&auml;rg<&#47;td><br />
<&#47;tr><br />
<&#47;tbody><br />
<&#47;table><br />
<img style="border:1px #9c9c9c solid;" src="http:&#47;&#47;webbdesignkurser.se&#47;wp-content&#47;uploads&#47;2012&#47;08&#47;buttons-shadow1.png" alt="" title="" width="245" height="62" class="alignnone size-full wp-image-1800" &#47;></p>
<p>[css]<br />
.submit{<br />
border-radius:5px;<br />
-moz-border-radius:5px;<br />
-webkit-border-radius:5px;<br />
padding:10px;<br />
background:#971665;<br />
border:1px #771953 solid;</p>
<p>box-shadow: inset 0px 1px 0px #c83890;<br />
-webkit-box-shadow: inset 0px 1px 0px #c83890;<br />
-moz-box-shadow: inset 0px 1px 0px #c83890;<br />
}<br />
[&#47;css]</p>
<h2>Text-shadow, tjocklek och f&auml;rg p&aring; knappen<&#47;h2><br />
Knappens text ska vi tilldela skugga, tjocklek och f&auml;rg.<br&#47;><br&#47;></p>
<table class="cssprop">
<tbody>
<tr>
<td width="50px"><strong> text-shadow:<&#47;strong><&#47;td>
<td width="50px"><strong> #761a62<&#47;strong><&#47;td>
<td width="50px"><strong>  1px<&#47;strong><&#47;td>
<td width="50px"><strong> 1px;<&#47;strong><&#47;td><br />
<&#47;tr></p>
<tr>
<td width="50px">Attribut<&#47;td>
<td width="50px">F&auml;rg<&#47;td>
<td width="50px">x- koordinat<&#47;td>
<td width="50px"> y-koordinat<&#47;td><br />
<&#47;tr><br />
<&#47;tbody><br />
<&#47;table><br />
<img style="border:1px #9c9c9c solid;" src="http:&#47;&#47;webbdesignkurser.se&#47;wp-content&#47;uploads&#47;2012&#47;08&#47;buttons-shadow2.png" alt="" title="" width="245" height="62" class="alignnone size-full wp-image-1799" &#47;><br />
<img style="border:1px #9c9c9c solid;" src="http:&#47;&#47;webbdesignkurser.se&#47;wp-content&#47;uploads&#47;2012&#47;08&#47;text-shadow.png" alt="text-shadow" title="" width="369" height="62" class="alignnone size-full wp-image-1838" &#47;></p>
<p>[css]<br />
.submit{<br />
border-radius:5px;<br />
-moz-border-radius:5px;<br />
-webkit-border-radius:5px;<br />
padding:10px;<br />
background:#971665;<br />
border:1px #771953 solid;<br />
box-shadow: inset 0px 1px 0px #c83890;<br />
-webkit-box-shadow: inset 0px 1px 0px #c83890;<br />
-moz-box-shadow: inset 0px 1px 0px #c83890;</p>
<p>text-shadow:#761a62 1px 1px;<br />
font-weight:bold;<br />
color:#ffeffb;<br />
}<br />
[&#47;css]</p>
<h2>Css-slutsats<&#47;h2><br />
H&auml;r har du den fullst&auml;ndiga stilmallen f&ouml;r din kontaktform. Om du vill att <strong>.submit<&#47;strong> ska ha en annan stil n&auml;r du h&aring;ller &ouml;ver musen&#47;trycker s&aring; duplicerar du classen och byter ut namnet till <strong>.submit:hover<&#47;strong> eller <strong>.submit:active<&#47;strong>.<br />
L&auml;s mer om hover&#47;active i kapitlet <a href="http:&#47;&#47;webbdesignkurser.se&#47;nyborjare-text-lankar&#47;#hover">Nyb&ouml;rjare - Styla text & l&auml;nkar<&#47;a>.<br />
Vi har hoppat &ouml;ver att styla kontakt-rubrikerna, t&auml;nkte att du f&aring;r det som utmaning av oss.<br />
<strong>Lycka till!<&#47;strong></p>
<p>[css]<br />
.info{<br />
border-radius:5px;<br />
-moz-border-radius:5px;<br />
-webkit-border-radius:5px;<br />
padding:5px;<br />
background:#e1e1e1;<br />
border:1px #b0b0b0 solid;<br />
}</p>
<p>.message{<br />
border-radius:5px;<br />
-moz-border-radius:5px;<br />
-webkit-border-radius:5px;<br />
padding:5px;<br />
background:#e1e1e1;<br />
border:1px #b0b0b0 solid;<br />
}</p>
<p>.submit{<br />
border-radius:5px;<br />
-moz-border-radius:5px;<br />
-webkit-border-radius:5px;<br />
padding:10px;<br />
background:#971665;<br />
border:1px #771953 solid;<br />
box-shadow: inset 0px 1px 0px #c83890;<br />
-webkit-box-shadow: inset 0px 1px 0px #c83890;<br />
-moz-box-shadow: inset 0px 1px 0px #c83890;<br />
text-shadow:#761a62 1px 1px;<br />
font-weight:bold;<br />
color:#ffeffb;<br />
}<br />
[&#47;css]</p>
<p><img  style="border:1px #9c9c9c solid;"  src="http:&#47;&#47;webbdesignkurser.se&#47;wp-content&#47;uploads&#47;2012&#47;08&#47;kontaktform_resultat.png" alt="" title="" width="679" height="415" class="alignnone size-full wp-image-1821" &#47;></p>
<h2>Relaterade artiklar (engelska)<&#47;h2><br />
<a href="http:&#47;&#47;inspectelement.com&#47;tutorials&#47;create-a-slick-css3-button-with-box-shadow-and-rgba&#47;" target="_blank">http:&#47;&#47;inspectelement.com&#47;tutorials&#47;create-a-slick-css3-button-with-box-shadow-and-rgba&#47;<&#47;a><br />
<a href="http:&#47;&#47;webdesign.tutsplus.com&#47;tutorials&#47;site-elements&#47;design-a-beautifully-detailed-web-button&#47;" target="_blank">http:&#47;&#47;webdesign.tutsplus.com&#47;tutorials&#47;site-elements&#47;design-a-beautifully-detailed-web-button&#47;<&#47;a><br />
<a href="http:&#47;&#47;www.tutorialspalace.com&#47;2010&#47;05&#47;simple-php-contact-form-tutorial&#47;" target="_blank">http:&#47;&#47;www.tutorialspalace.com&#47;2010&#47;05&#47;simple-php-contact-form-tutorial&#47;<&#47;a></p>
