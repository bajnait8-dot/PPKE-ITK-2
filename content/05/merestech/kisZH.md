# Ellenállás mérés
![[46508293_738530496510071_653424423059062784_n.jpg]]
![[46518983_1992801574134600_2150654008174313472_n.jpg]]
# Belső ellenállás mérés
![[44674121_911724645695192_928830271678054400_n.jpg]]
![[43629497_181224356090566_3195965609691054080_n.jpg]]
![[44862300_436262690236241_5470553828359143424_n.jpg]]
![[46262686_1892714464159643_4427515179370020864_n.jpg]]
![[46273114_319047782246667_4805349559842635776_n.jpg]]
![[46353034_1439530656183413_1248356481082851328_n.jpg]]
# Műveleti erősítő
![[47161063_340320593432532_1689414334930747392_n.jpg]]
![[46991086_1988247004597070_1882065569734197248_n.jpg]]
![[46973028_954612411392274_8791065281951694848_n.jpg]]
![[46956255_753803814983381_2604769662113677312_n.jpg]]
![[44077237_932356426955437_5462276953933348864_n.jpg]]
![[44102163_2166620783552146_8788352537657868288_n.jpg]]
![[44104197_2069325593398048_6455482725179588608_n.jpg]]
![[44115783_2271779866386056_1270414655726026752_n.jpg]]
![[44119750_294940134447045_9005289965684260864_n.jpg]]
![[44171312_469842326869675_2026489213771317248_n.jpg]]
![[44249055_308673959720634_7040046667726323712_n.jpg]]
# Impedancia mérés
> [!question] Milyen körülmények között és hogyan lehet használni a váltakozó áramú impedancia modellt?
> A frekvenciatartományban helyettesíthetjük a passzív elemeket az impedanciájukkal. A kondenzátor $Z_C=\frac{1}{j\omega C}$, a tekercsé $Z_L=j\omega L$, az ellenálláse pedig $Z_R=R$.

> [!question] Az impedancia általános fogalma a $-\alpha\pm j\omega$. Hogyan és miért lehet ezt a mérés folyamán használni?
> Az impedancia $Z(-\alpha\pm j\omega)$ alakja a komplex frekvenciát fejezi ki, ahol
> - $\alpha$ a csillapítás
> - $\omega$ a körfrekvencia
> A mérésben szinuszos állapotban $\alpha = 0$, így az impedanciát
> $$Z(j\omega)=\frac{\tilde{V}}{\tilde{I}}$$
> alakban használjuk.
>
> \- GPT 5

> [!question] Mi különbözteti meg az ellenállás és az impedancia fogalmát?
> Impedanciát váltakozó áram alkalmazásakor értelmezzük, egyenáram esetén ellenállást.

> [!question] Milyen matematikai modellel ábrázolja az impedanciát?
> $$\text{Kondenzátor}\qquad Z_C=\frac{1}{j\omega C}$$
> $$\text{Tekercs}\qquad Z_L=j\omega L$$
> $$\text{Ellenállás}\qquad Z_R=R$$
> - mértékegysége $\Omega$
> - $\omega$ a körfrekvenciát jelöli.
> [!question] Impedanciák alkalmazása esetén hogyan számolható a teljesítmény?
> $P=U\cdot I$ impedancia esetén 
> $$P=U_\text{effektív}\cdot I_\text{effektív}=P=U_\text{max}\sqrt2\cdot I_\text{max}\sqrt2$$
> [!question] Miért lehet komplex számokkal megjeleníteni az impedancia fogalmát?
> A komplex impedancia abszolút értéke a látszólagos ellenállás.
> $$Z=\frac{U}{I}=\frac{U_s}{I_s}\cdot e^{i(\alpha-\beta)}$$

![[46654501_288658995105755_8693698197257715712_n.jpg]]
![[46519941_360493317851497_4457248872888008704_n.jpg]]
![[46816807_512548699263147_325649548573671424_n.jpg]]
![[46381734_304998400226854_4188794106715045888_n.jpg]]
![[46391171_305297770076102_3151055735131996160_n.jpg]]
![[46414962_1933401623445562_9195511073631895552_n.jpg]]
![[46480570_1899199956853485_8270040016135127040_n.jpg]]
![[46502039_512541545898138_1676865243650719744_n.jpg]]
![[46507308_760181307650247_6173461909665218560_n.jpg]]
# Nemlineáris karakterisztika
> [!question] Mi a munkapont?
> A munkapontok az eszköz karakterisztikájának azon pontja, ahol ideálisan működik. Beállításához konstans DC feszültség szükséges.

> [!question] Hogyan határozható meg egy bipolár tranzisztor $h_{21e}$ paramétere?
> A kollektor áram és a bázisáram arányát határozza meg. Ezt a paramétert a hivatalos datasheetben meghatározzák.
> $$h_{21e}=\frac{I_c}{I_b}$$

> [!question] Hogyan valósítja meg a differenciális ellenállás mérését?
> A lineáris tartományban két különböző feszültség hatásár mérem az áramot.

> [!question] **Mire és hogyan használható egy Zener-dióda?**  
A Zener-dióda elsősorban **feszültségstabilizálásra** (referenciafeszültség előállítására) használható.  
Fordított irányban üzemeltetve, amikor a feszültség eléri a **Zener-feszültséget** \(U_Z\), a dióda **áttörési tartományba**kerül, és a rajta eső feszültség közel állandó marad, függetlenül a rajta átfolyó áram (egy bizonyos tartományon belüli) változásától.
> **Alkalmazás:**
> - Feszültségstabilizátor vagy referenciafeszültség generátor kapcsolásokban.
> - Túlfeszültség-védelem: a Zener „levágja” a feszültségcsúcsokat, és megvédi a bekerülő áramköröket.

> [!question] Hogyan valósítja meg a $h_{21e}$ paraméter mérését?
> $R_1$, $R_2$ elég nagy ellenállások $R_{1\text{ belső}}$-köz képest.
> $$h_{21e}=\frac{I_c}{I_b}$$
> Mivel áteresztő tartományban folyik az áram, más esetben nem lesz erősítés.

> [!question] Mire és hogyan használható egy normál kisjelű dióda?
> - jelcsúcsdetektálásra: a dióda egy kondenzátort tölt fel, amikor a bemeneti jel magasabb, mint a kondenzátor aktuális feszültsége. Amikor a jel csökken, a dióda lezár, és a kondenzátor megőrzi a maximumot, így a kondenzátoron a jel csúcsa tárolódik.
> - túlfeszültség-védelemre: a dióda normál esetben lezárt állapotban van. Amikor a feszültség meghaladja a dióda nyitófeszültségét, vezetni kezd, és így elvezeti a felesleges energiát a föld felé.

![[46936111_211769989714836_2622303363588423680_n.jpg]]
![[47254471_302408300445954_3350928137104916480_n.jpg]]
![[47128040_332608277563145_169746401847148544_n.jpg]]
![[46999094_501471246929167_3375329027429498880_n.jpg]]