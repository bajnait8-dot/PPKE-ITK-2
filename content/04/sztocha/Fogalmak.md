# 1. anyag
## Paraméteres próbák
### U-próba
Normális eloszlású sokaságra vonatkozik, szórás ismert, várható érték ismeretlen.
$$H_0:\sigma=x\text{ vagy }\sigma<x$$
### T-próba (Student-féle)
Normális eloszlású sokaságra vonatkozik, szórás ismeretlen, várható érték ismert.
$$H_0:m=x$$
### F-próba (Fisher-féle)
Két sokaság szórását hasonlítja össze. A T-próba előfeltétele.
$$H_0:\sigma_1=\sigma_2$$
## Nem paraméteres próbák
### Illeszkedés vizsgálat
Van egy megfigyelt adatunk, és ehhez feltételezünk egy eloszlást.
Megfigyelt valószínűségi változók eloszlása megegyezik-e az előre meg- adott eloszlással.
### Homogenitás vizsgálat
Két valószínűségi változó egyforma eloszlású e.
### Függetlenség vizsgálat
Két valószínű változó között van e kapcsolat, vagy függetlenek egymástól
## Konfidencia intervallum
# 2. anyag
## Idősor
Idősornak az olyan statisztikai megfigyeléseket nevezzük, amelynek elemeit egymást követő időpontokban regisztrálták, és ez az időbeliség az adatok fontos tulajdonsága. Az idősoros megfigyeléseket tekinthetjük a teljes statisztikai populációnak is, de gyakrabban feltételezzük, hogy a megfigyelések valószínűségi változók (sztochasztikus folyamat) realizációi.
- Determinisztikus idősor: trend, ciklus
- Sztochasztikus idősor: lotto húzás
## Stacionárius idősor
A stacionárius idősorok nem tartalmaznak időtrend-hatást, az idősor értékei egy állandó átlagos szint körül ingadoznak, állandó szórással.  
Az autokorrelációs együtthatói időben állandóak, csak a változók egymás közti távolságától függenek.
## AR (Autoregresszív)
Az autoregresszív (AR) modell az idősor jelenlegi értékét saját előző értékeinek függvényében fejezi ki, véletlen zajjal kiegészülve.
# MA (Mozgóátlag)
A mozgóátlag (MA) modell az idősor aktuális értékét a jelenlegi és múltbeli hibatagok súlyozott kombinációjaként fejezi ki.
## ARMA
Az ARMA modell az AR és MA kombinációja. Ha az idősor első differenciái stacionáriusak, akkor az eredeti sor ARIMA modellként illeszthető.
- Stabil: ha az AR polinom $A(z)$ minden gyöke a komplex sík egységkörén kívül helyezkedik el. Jelentése: az idősor hosszú távon az átlag körül marad
- Invertálható: ha az MA polinom $B(z)$ minden gyöke az egységkörön kívül helyezkedik el. Jelentése: invertálás során megkapjuk a fehérzaj sorozatát. Ezt előrejelzésre tudjuk használni.
## Kovariancia függvény
Segít mérni, hogy mennyire emlékszik önmagára a sor az idő változásával. Minél kisebb, annál erősebb a hasonlóság.
## Spektrális sűrűségfüggvény
A spektrumon mutatja meg, hogy milyen frekvenciájú ingadozások milyen erősen alkotják az idősort.
# 3. anyag
## Markov-lánc
A Markov-lánc olyan valószínűségi változók sorozata, ahol a következő állapot eloszlása csak a jelenlegi állapottól függ, és független attól, hogy hogyan jutottunk oda.
## Irreducibilis
Egy Markov-lánc irreducibilis, ha bármelyik állapotból pozitív eséllyel elérhető bármely másik állapot, legfeljebb több lépés után.
## Periodikus, aperiodikus
Egy állapot periodikus, ha mindig bizonyos, szabályos lépésszámok többszörösében tudsz csak visszatérni oda.
Aperiodikus, ha nem periodikus.
## Stabil / Stacionárius
Egy Markov-lánc stabil, ha hosszú távon mindig ugyanabba az eloszlásba tér vissza – teljesen függetlenül attól, hogy honnan indult.
## Ráta mátrix
A ráta mátrix ($Q$) azt írja le, hogy milyen sebességgel, milyen intenzitással vált át a lánc egyik állapotból a másikba.