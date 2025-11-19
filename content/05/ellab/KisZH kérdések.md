# 1. Szűrő, spice
> [!question] Hogyan lehet kiszámítani egy szűrő késleltetési idejét? Válaszát kérem indokolja!
> megvalósító kapuk késleltetési idejének összege, megnézni a lefényképezett lapot (indok)

> [!question] A Spice program segítségével hogyan számolja ki az áramkör Boode karakterisztikáját?
> AC analízis segítségével

> [!question] Hogyan lehet kiszámítani két ismert boode karakterisztikájú kapcsolás sorbakapcsolása után keletkező kapcsolás boode karakterisztikáját? Válaszát kérem indokolja!
> konvolúció: ami FT után szorzás, az FT előtt konvolúció

> [!question] Milyen lépések segítségével határozza meg az áramkör Boode karakterisztikáját?
> súlyfüggvényt számolok(Dirac impulzusra adott válasz), majd ezt Fourier-transzformálom (atviteli fv-ből is megkapható, ha stabil) így megkapom, hogy mely frekvenciákon mekkora az erősítés(vagy csillapítás)(dB) és a fáziseltolás(degree) ->oldalsók alsó mindkettőnél->angular frequency(rad/s)

> [!question] Mit jelent egy jel felfutási ideje, hogyan mérjük?
> Ha a négyszögimpulzus az ideálistól eltér, a felfutási idő az az adat, amely a felfutó vagy lefutó él meredekségét jellemzi. A felfutási idő a felfutó (vagy lefutó) él végértékének 90%-ához és 10%-ához tartozó időpontok közötti időkülönbség. Ideális négyszögimpulzus esetén a felfutási idő zérus.

> [!question]  Írja le és indokolja, hogy a SPICE program DC analizisét mire használja a mérés során!
> nem kell sok OP parancs, ha azt akarom vizsgálno hogy mi hogyan változik ha egy DC generátor értékét megváltoztatva mi történik és nem kell kézzel kielemezni, helyette a program a munkaponti megváltozásokat táblázatban megjeleníti vagy grafikonon

> [!question] Egy logikai áramkör bemenetén a milyen feltétel teljesülését tekintünk logikai "1" szintnek?
> ha elértem a működési feszültséget? 5, 12, 3.3 V a sztenderdek.

> [!question] Írja le és indokolja, hogy a SPICE tranziens analizisét mire használja a mérés során!
> idpfüggvény vizsgálat...t=0 -tól adott lépésközzel megadott léptékkel számolja max-időig a kapcsolásunk csomópontjain mérhető feszültséget és áramot

> [!question] Elfogadható-e, ha egy 3. fokú 1kHz / 5 kHz határfrekvenciájú aluláteresztő szűrő modeljéről a SPICE által készített boode diagramon 10kHz és 100 kHz között 20 dB feszültségesést tapasztalunk? Válaszát indokolja!

> [!question] A SPICE program AC analizisének eredményéből milyen a méréssel kapcsolatos adatokat tudunk leolvasni?
> a kapcsolás kisjelő AC áramu átvitelét határozhatjuk meg(amplitúdó menet, fázisszög, stb), előbb a munkapontot kiszámítja a spice és létrehozza minden nemlin aktív eszköz kisjelű helyettesítő kapcsolását....

> [!question] A SPICE program OP analizisének eredményéből milyen a méréssel kapcsolatos adatokat tud leolvasni?

> [!question] Munkapont fogalma
> Ha az elektronika témakörében akarod értelmezni ezt, pl. egy dióda munkapontja az a pont a diódakarakterisztikán, amelyen fix áramot tudunk beállítani.
> A munkapontot általánosságban úgy fogalmaznám meg, hogy egy eszköz működését leíró diagram azon pontja, amely pontban az eszköz működése helyesen be van állítva, nincsen túlterhelve és alul ütemezve sem.

> [!question] Mi a $V_{IL}$, $V_{OH}$?

> [!question]  Kapu kapcsolási ideje?

> [!question] Mi a műveleti egység?
Olyan nagy erősítésű, több fokozatból felépített, jellemzően integrált elektronikus áramkör, amely alkalmas matematikai műveletek (összegzés, kivonás, integrálás, deriválás stb.) elvégzésére analóg jeleken. Ideális modellben végtelen bemeneti ellenállással, nulla kimeneti ellenállással, valamint végtelen erősítéssel rendelkezik. Az input differenciálfeszültséget alakítja át kimeneti feszültséggé a táp- és visszacsatoló viszonyoknak megfelelően. - GPT 5

> [!question] Mit jelent a szűrő fokszáma?
> Az a szám, amely megadja a szűrő átviteli függvényében előforduló független energiatároló elemek (kondenzátorok és induktivitások) számát. Matematikailag a fokszám a szűrő átviteli függvényének nevező polinomjának foka. A fokszám növekedésével a szűrő átmeneti tartománya meredekebbé válik (jobb a frekvencia-szelektivitás). - GPT 5

> [!question] Pontosan hogyan határozza meg egy impulzus felfutási idejét?
> Az az időtartam, amely alatt egy jel (pl. négyszögjel vagy átmeneti függvény) amplitúdója az alsó referenciaértékről (jellemzően a végső érték 10%-a) a felső referenciaértékre (jellemzően a végső érték 90%-a) megnövekszik. Matematikailag:
> $$t_r=t_{90\%}-t_{10\%}$$
> A felfutási idő a rendszer sávszélességével szoros összefüggésben áll; kisebb felfutási idő gyorsabb rendszerátvitelt jelez. - GPT 5

> [!question] Mit jelent a $V_{OL_{max}}=0.8V$ érték?
> (maximum Low-level output voltage)
> 
>A digitális logikai áramkör adatlapján megadott legnagyobb kimeneti feszültség érték, amelynél a kimenet még megbízhatóan logikai 0-nak tekinthető.  
Ha $V_{OL_{\text{max}}} = 0{.}8 \,\text{V}$, az azt jelenti, hogy a digitális áramkör kimenetén megjelenő logikai 0 szint legfeljebb 0,8 V lehet; ennél magasabb feszültséget már a fogadó logika bizonytalannak vagy 1-nek értelmezhet. Ez biztosítja a logikai szintek közötti zajtűrést. - GPT 5

# 2. Logikai kapuk
> [!question] Mi a késleltetés?

> [!question] Mi az igazságtábla?

> [!question] Mit nevezünk felfutási időnek?

> [!question] Mit nevezünk lefutási időnek?
# 3. Fading
# 4. PRCB, CRC
Mit jelent a PRBS jel és hogyan kell ilyet előállítani?
Mi a különbség a •között?
Hogyan kell LFSR segítségével PRBS-t előállítani?
Hogyan kell CDMA-t létrehozni?
# 5. Bithibaarány
Hogyan tudunk álvéletlen jelet előállítani?
Mi a Scrambler és CDMA közötti különbség?
Autodescrambler működése

>Minimum milyen rövid bitsorozatból tudom kiszámítani a szinkront ha ismerem a polinomot.
> n számú bit

# 6. Moduláció (AM/FM)
![[Screenshot 2025-11-13 at 1.58.18 PM.png]]
![[Screenshot 2025-11-13 at 1.58.35 PM.png]]

![[Screenshot 2025-11-13 at 1.58.29 PM.png]]

Rajzolja le az AM-DSB/SC és az AM-SSB jel jelalakját, ha a vivő frekvencia 16kHz és a moduláló jel pedig 1kHz a méretek bemutatásával.

> [!question] Milyen az FM jel spektruma általános esetben?

> [!question] Milyen a technikailag használható FM jel spektruma?
> Carson-szabály alapján a hasznos sávszélesség:
> $$B = 2(\Delta f + f_m)$$

Milyen a technikailag használható FM jel spektruma általános esetben?
Rajzolja le a 8kHz vivő és 1kHz AM-SSB/SC jel jelalakját méretek jelölésével
> [!question] Mit nevezünk kis löketnek?
> $$\Delta f \ll f_m$$

---

![[Spice1.png]]
![[Spice2.png]]![[Spice2_tg.png]]![[WinIQSIM.png]]![[Fading.png]]![[Fading_tg.png]]
![[Forgószínpad 1.png]]
![[Forgószínpad 2.png]]

![[Forgószínpad 3.png]]
![[Forgószínpad 4.png]]![[Forgószínpad 5.png]]