```XML
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE vers SYSTEM "vers.dtd">
<mu>
	<meta>
		<iro>
			<vezeteknev>Petőfi</vezeteknev>
			<keresztnev>Sándor</keresztnev>
		</iro>
		<cim>Anyám tyúkja</cim>
		<datum iso="1848-02">1848. február</datum>
		<helyszin orszag="hungary" latitude="0" longitude="0">Vác</helyszin>
	</meta>
	
	<vers forras="https://users.itk.ppke.hu/~novat/nytech2025/gyak/02_XML/aty/petofi_anyam_tyukja.u8.txt" nyelv="hu">
		<versszak>
			<sor>Ej mi a kő! tyúkanyó, kend</sor>
			<sor>A szobában lakik itt bent?</sor>
			<sor>Lám, csak jó az isten, jót ád,</sor>
			<sor>Hogy fölvitte a kend dolgát!</sor>
		</versszak>
		<versszak>
			<sor>Itt szaladgál föl és alá,</sor>
			<sor>Még a ládára is fölszáll,</sor>
			<sor>Eszébe jut, kotkodácsol,</sor>
			<sor>S nem verik ki a szobából.</sor>
		</versszak>
		<versszak>
			<sor>Dehogy verik, dehogy verik!</sor>
			<sor>Mint a galambot etetik,</sor>
			<sor>Válogat a kendermagban,</sor>
			<sor>A kiskirály sem él jobban.</sor>
		</versszak>
		<versszak>
			<sor>Ezért aztán, tyúkanyó, hát</sor>
			<sor>Jól megbecsűlje kend magát,</sor>
			<sor>Iparkodjék, ne legyen ám</sor>
			<sor>Tojás szűkében az anyám. --</sor>
		</versszak>
		<versszak>
			<sor>Morzsa kutyánk, hegyezd füled,</sor>
			<sor>Hadd beszéljek mostan veled,</sor>
			<sor>Régi cseléd vagy a háznál,</sor>
			<sor>Mindig emberül szolgáltál.</sor>
		</versszak>
		<versszak>
			<sor>Ezután is jó légy, Morzsa,</sor>
			<sor>Kedvet ne kapj a tyúkhúsra,</sor>
			<sor>Élj a tyúkkal barátságba'...</sor>
			<sor>Anyám egyetlen jószága.</sor>
		</versszak>
	</vers>
</mu>
```

```DTD
<!ELEMENT mu (meta, vers)>
<!ELEMENT meta (iro, cim, datum, helyszin)>
<!ELEMENT iro (vezeteknev, keresztnev)>
<!ELEMENT vezeteknev (#PCDATA)>
<!ELEMENT keresztnev (#PCDATA)>
<!ELEMENT cim (#PCDATA)>

<!ELEMENT datum (#PCDATA)>
<!ATTLIST datum
	iso CDATA #IMPLIED>

<!ELEMENT helyszin (#PCDATA)>
<!ATTLIST helyszin
	orszag CDATA #IMPLIED
	longitude CDATA #IMPLIED
	latitude CDATA #IMPLIED>

<!ELEMENT vers (versszak+)>
<!ATTLIST vers
	forras CDATA #REQUIRED
	nyelv CDATA #IMPLIED>

<!ELEMENT versszak (sor+)>
<!ELEMENT sor (#PCDATA)>
```