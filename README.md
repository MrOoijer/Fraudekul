# Fraudekul

_**De problemen met de Rotterdamse Fraude software**_

Leiderdorp, 6 Januari 2022

Geachte geadresserden. Veel mensen in Nederland maken zich zorgen over het gebruik van AI algoritmes door de Nederlandse landelijke en lokale overheid. Er is een roep om een "waakhond" in deze, of een protocol om de buregers te beschermen. 

Dit alles is te abstract gebleven, want niemand weet eigenlijk waar het precies om gaat en wat alle indrukwekkende maar lege woorden in de rapporten van Binnenlandse zaken nu eigenlijk betekenen. 

Tot 18 december 2021, toen het VPRO-programma Argos de code publiceerde van het Rotterdamse Bijstandfraude-detectie systeem. Ik keek daar eens naar en zag dat het het soort software is dat ik de afgelopen 10 jaar heb gemaakt en bestudeerd. Voor verdere credentails verwijs ik naar bijlage 4.  

**A.** De software bevat een serieuze blunder die een ervaren data scientist nooit gemaakt zou hebben. Belangrijk is om te beseffen dat dit soort software "leert" van data uite het verleden (jargon: training data") om een prognose te maken van het heden en de toekomst. De training data moet een zo goed mogelijke afspiegeling zijn van de huidige gegevns, en dat is waar het fout gaat. Er wordt getrained op data met 60% fraudeaurs terwijl dat in werkelijkheid minder dan pakweg 10% is. 

Daardoor "leert" de software niet genoeg over niet-faudeurs en worden er dus heel veel niet-fraudeurs aangewezen als potentiële fraudeurs.
In een simulatie (bijlage 3) laat ik zien hoe groot de omvang van deze fout is. 

**B.** Uit deze casus blijkt ook nogmaals dat het beoordelen van alleen de algoritmes volstrekt  onvoldoende zekerheid biedt, omdat de uiteindelijke modellen ook worden vormgegeven door de data. Een protocol is dus niet geneog, er moet een actieve audit-dienst komen. 

**C.** De Rotterdamse software is gemaakt door een externe partij (Accenture). Dat is logisch, want het is zo'n gespecialiseerde materie dat je niet kunt verwachten dat (zelfs een grote) gemeente die kennis zelf in huis heeft. Maar daarmee zien we het gevaar dat een externe partij deze markt gaat domineren. Wie beoordeelt hun vakmanschap?

Mijn oordeel over deze software is dat Accenture nog veel te weinig ervaring had om dit goed uit te voeren: behalve de in A. genoemde blunder kwam ik nog diverse andere beginnersfouten tegen.  Zie bijlage 2.

**D. Overige informatie.**

De e-mail bevat met opzet geen .pdf's maar verwijst naar een Github repository. Github wordt gebruikt door een community van professionele software-ontwikkelaars die hun Open Source code delen en samen ontwikkelen. Er is geen veiliger plek te vinden op Internet om gegevens te delen.

Rapporten en code bevinden zich op:  https://github.com/MrOoijer/Fraudekul

Bijlages zijn ofwel direct te downloaden of in te zien door op deze repository te scrollen naar het betreffend document dat dan in een veilige omgeving wordt getoond.

De bijlagen zijn: 

*1. Deze brief in pdf-vorm (volgt)*

*2. Audit van de code van Accenture.*

Directe download van de code-audit:bepaald door de gegevens die je er in stopt. 

https://github.com/MrOoijer/Fraudekul/raw/main/code-audit.pdf

*3. Een simulatie die laat zien wat het probleem is van de ongebalanceerde training data.*

Directe download van het simulatie-verslag: 

https://github.com/MrOoijer/Fraudekul/raw/main/simulatie-verslag.pdf

*4. CV van ondergetende (volgt).*

Jan van Rongen 2022-01-06