# [[2025-02 Statisztika EA.pdf|2. előadás - Statisztika]]
## Fonéma
A beszélt nyelvben a fonéma a hangok elemi, elvont egysége, amely egy adott nyelvben önálló egységet alkot, mivel más fonémákkal szemben jelentés-megkülönböztető szerepe van.
## IPA
Az angol fonetikus ábécén alapuló táblázat, amikben a fonémákat rendszerezzük.
## Karakter
Absztrakt objektum, a számítógépen tárolt szövegek legkisebb, tovább nem bontható egysége. Egy karakter egy betű, szám, írásjel, speciális jel, illetve egyetlen egyszerűbb szövegformázó parancs ábrázolására alkalmas.
## Karakterkód
A karakternek mint absztrakt objektumnak megfeleltetett számkód, amely számítógépen közvetlenül ábrázolható.
## Karakterkészlet
Karaktereket és számkódjaikat összerendelő táblázat. Meghatározza, hogy milyen karakterek használhatók, és azt is, hogy az egyes karakterkódokat miképpen kell értelmezni. A karakterkészlet megjeleníthető karaktereket és speciális műveleteket előíró vezérlőkaraktereket tartalmaz.
## Kódlap
Több [[#Karakterkészlet|karakterkészletet]] is kezelő számítógéprendszerben egy saját számkódjával azonosított karakterkészlet.
## Betűkészlet
Olyan táblázat, amely adott karakterkészlet(ek) megjeleníthető karaktereihez karakterképeket rendel, amelyek a számítógép képernyőjén vagy nyomtatásban jelennek meg. Az alkalmazott betűkészlet a szöveg számítógépbeli értelmezésére – például a szöveget nyelvi szempontból feldolgozó programokra – nincs befolyással, csak annak megjelenítésekor használatos.
## UCS (Universal Character Set)
## Unicode
16 biten tárolt síkokra osztja (a szabvány legutóbbi változatában rögzített) kb. 100 ezer karaktert.
## UTF-8 (Unicode Transformation Format)
Változó hosszúságú kódolással (1–6 bájt) képezi le a Unicode karaktertáblát, pl. 1 bájton tárolt kódjai az ASCII-nak felelnek meg, így a latin betűs UTF-8 kódolású szövegek a régi ASCII környezetben is olvashatóak maradnak.
## N-gram
Egymás után következő n db karakter egy szövegben.
## Shannon (1949)
Ha elég sok üzenet áll rendelkezésre, akkor mérni tudjuk azt a $p(x)$ valószínűséget, hogy adott $x\in X$ elem milyen gyakran fordul elő várhatóan egy üzenetben.
## Zipf törvény
G. K. Zipf az 1930-as években vette észre: ha egy szövegben összeszámoljuk az egyes szavak előfordulási gyakoriságát, majd sorba rendezzük őket gyakoriságuk alapján, és ábrázoljuk a gyakoriságot rang szerint (azaz annak a függvényében, hogy az illető szó hányadik a sorban), akkor (közelítéssel) egy hatványfüggvény szerint lecsengő görbét kapunk -1-hez közeli kitevővel.
$$R_i=\frac{1}{i_\alpha}$$
## Heaps-törvény
Egy $N$ szóból álló korpusz esetén a különböző szavak száma:
$$V\approx K\cdot N^\beta,$$
ahol:
- $K$: a szövegtől függő konstans ($10\leq K\leq100$),
- $\beta$: a nyelvtől függő konstans.
## Távirati kódolás
Nincs ékezet.
## Repülő ékezetes kódolás
Az ékezeteket aposztrofokkal jelöljük. Például:
- Betű $\Rightarrow$ Betu''
## Számkódos kódolás
- 1: Például: á, é
- 2: Például: ö, ü
- 3: Például: ő, ű
# [[2025-03 Morfológia EA.pdf|3. előadás - Morfológia]]
## Szófa
A szófa (Fredkin 1960) egy olyan, a szavak rákövetkező karaktereivel címkézett élsorozatokat tartalmazó fa, amelyben egy szót úgy találunk meg, hogy végigjárjuk karakterenként.
## Formális nyelv
Egy formális nyelvtan által leírt füzérek halmaza.
## Véges állapotú automata
Egy gép ami bemeneti jeleket olvas és állapotokat tart fent. Ezek alapján döntéseket hoz (elfogad / elutasít).
$$A=(S, \Sigma, s, F, T),$$
ahol:
- $S$: állapotok véges halmaza
- $\Sigma$: egy ábécének nevezett véges halmaz
- $s\in S$: kiinduló állapot
- $F\in S$: a végállapotok halmaza
- $T:S\times(\Sigma\cup{\varepsilon})$: átmenetfüggvény.
Az $X=x_0x_1…x_n$ ábécéből alkotott füzért $A$ véges állapotú automata elfogadja, ha létezik $S$-ben az átmenetek $r_0,r_1,…,r_n$ sorrendje a következő feltételekkel:
1. $r_0=s$
2. $r_i+1=T(r_i,x_i)\qquad i=0,…,n-1$
3. $r_n\in F$
## Reguláris nyelv
A véges állapotú automata által elfogadott füzérek halmaza.
## Reguláris kifejezés
Olyan formula, mely [[#konkatenáció]], [[#unió]] és [[#iteráció]] használatával meghatároz egy reguláris nyelvet.
## Véges átalakító
Bemeneti karakterláncot egy másik karakterlánccá alakítja. Ezt vagy lexikális, vagy felszíni formán.
$$T=(S,\Sigma,\Gamma,s,F,\delta),$$
ahol:
- $S$: az állapotok véges halmaza
- $\Sigma$: a bemenő ábécének nevezett véges halmaz
- $\Gamma$: a kimenő ábécének nevezett véges halmaz
- $s\in S$: a kezdő állapot
- $F\in S$: az elfogadható állapotok halmaza
- $T:S\times(\Sigma\cup\{\varepsilon\})\times(\Gamma\cup\{\varepsilon\})\rightarrow S$ átmenetfüggvény
## Konkatenáció
$$w[T]y\quad\text{és}\quad x[S]z\quad\Rightarrow\quad wx(TS)yz$$
## Unió
$$x[T]y\quad\text{és}\quad x[S]y\quad\Rightarrow\quad x(T\cup S)y$$
## Iteráció
$$w[T^*]y\quad\text{és}\quad x[T]z\quad\Rightarrow\quad wx(T^*)yz\quad\text{és}\quad\varepsilon[T^*]\varepsilon$$
## Metszet
$$x[T]y\quad\text{és}\quad x[S]y\quad\Rightarrow\quad x(T\times S)yz$$
## Kompozíció
$$x[T]y\quad\text{és}\quad y[S]z\quad\Rightarrow\quad x(T\circ S)z$$
## Kétszintes morfológia
Részei:
- megfeleltetett párok
- környezet
- szabályoperátor
### Szabályoperátorok:
- $t\rightarrow c/\_\_i$: t c-vé alakul, ha i előtt áll.
- $t:c/\_\_i$: a t megfelel a c-nek, ha i előtt áll.
- $t\Rightarrow c/\_\_i$: t csak i előtt változik c-vé.
- $t\Leftarrow c/\_\_i$: t mindig c-vé változik i előtt.
- $t\Leftrightarrow c/\_\_i$: ha $t\Rightarrow c/\_\_i$ és $t\Leftarrow c/\_\_i$
- $t\nLeftrightarrow c/\_\_i$: t soha nem lesz c i előtt.
## Morfológiai elemzés
A számítógépes morfológia olyan számítógépes technológiák és algoritmusok kialakításával foglalkozik, melyek segítségével különféle nyelvű toldalékolt szóalakok elemzése és generálása megoldható.

Lépései:
1. tövesítés
2. szófaj
3. morfoszintaktikai jegyek
4. szóképzés
5. összetettszó-elemzés
# [[2025-04 Morfológiai alkalmazások EA.pdf|4. előadás - Morfológiai alkalmazások]]
## Unifikálhatóság
Az unifikáció olyan művelet, mely egyedül akkor nem hajtható végre, ha a tagokban egyazon jegy különböző értékekkel szerepel.

Az unifikáció lehet:
- destruktív: az egyik megszűnik
- nem-destruktív: harmadik létrehozása
# [[2025-05 Szintaxis EA.pdf|5. előadás - Szintaxis]]
## Jobbrekurzió
„az agyag ölelő karjai közül kibontakozni akaró kocsikerék rettentő nyikorgásától megriadt juhászkutya bundájába kapaszkodó kullancs kidülledt félszeméből alácseppenő könnycseppben visszatükröződő holdvilág fényétől illuminált rablólovagvár felvonóhídjából kiálló vasszegek kohéziós erejének hatása”
## Balrekurzió
A fiú, akit a barátom, akiről a kollégám, akivel egy iskolába jártam, mesélt, meghívott, elment. 
# [[1. Anyag.pdf|1. Gyakorlat]]
## DTD
XXX tag-ban egy AAA, majd egy BBB tag szerepelhet.
```DTD
<!ELEMENT XXX (AAA , BBB)>
```
XXX tag-ban nulla vagy több AAA szerepelhet.
```DTD
<!ELEMENT XXX (AAA*)>
```
XXX tag-ban egy vagy több AAA szerepelhet.
```DTD
<!ELEMENT XXX (AAA+)>
```
XXX tag-ban AAA megléte nem kötelező, de BBB igen.
```DTD
<!ELEMENT XXX (AAA?, BBB)>
```
XXX tag-ban vagy AAA-t vagy BBB-t tartalmazhat.
```DTD
<!ELEMENT XXX (AAA | BBB)>
```
A TAGNAME nevű tag aaa mezője kötelező, bbb mezője opcionális.
```DTD
<!ATTLIST TAGNAME   
      aaa CDATA #REQUIRED  
      bbb CDATA #IMPLIED>
```
# [[7. Anyag.pdf|7. Gyakorlat]]
## Tokenizálás
Szöveg egyedi azonosítókra való bontása.
## Byte-Pair Encoding (BPE)
1. Szöveget szavakra előtokenizáljuk
2. A bpe szótár elemei kezdetben a karakterek
3. A szóstatisztikában megjelenő leggyakoribb két szót összevonjuk, és hozzáadjuk a szótárhoz.
4. Ezt addig ismételjük amíg el nem érjük a kívánt számú szótárméretet (tokenek száma).
# [[8. Anyag.pdf|8. Gyakorlat]]
## Szerializáció
A folyamat amivel az adatot átalakítom, hogy az tárolható, felhasználható, cserélhető vagy visszaállítható legyen.
## Stand-off annotáció
A stand‑off annotáció** egy **adat‑jelölési technika**, ahol az **annotációk** (pl. címkék, nyelvi jellemzők, kategóriák) nem közvetlenül az eredeti szövegbe vannak beágyazva,  
hanem külön állományban vagy külön szerkezeti részben tároljuk őket, és pozicionális hivatkozásokkal (indexekkel vagy byte‑tartományokkal) kapcsoljuk vissza az eredeti szövegre.

> [!example] Példa
> ```JSON
> {"text": "Idén minden korábbinál több autó vett részt év végi játékunkban, közel hét tucat
kocsira lehetett szavazni négy héten át.", "entities": [{"text": "Idén", "start_pos": 0,
"end_pos": 4, "label": "DATE"}, {"text": "év végi", "start_pos": 44, "end_pos": 51, "label":
"DATE"}, {"text": "közel hét tucat", "start_pos": 66, "end_pos": 81, "labels": "CARDINAL"},
{"text": "négy héten át", "start_pos": 108, "end_pos": 121, "labels": "DATE"},
> ```

# [[9. Anyag.pdf|9. Gyakorlat]]
## Pontosság
A találatokból hány volt eredetileg jó.
$$|\text{metszet}|/|\text{eredmény}|$$
Fontos például [[ZH 1. 2021.pdf|spam szűrés feladatban]], hogy a fontos üzeneteket nehogy törölje.
## Fedés
Az eredeti jók közül hányat találtunk meg.
$$|\text{metszet}|/|\text{cél}|$$
Fontos például az [[ZH 1. 2023.pdf|elválasztási feladatban]], hogy kisebb nagyobb hibával, de minden helyet megtaláljunk.