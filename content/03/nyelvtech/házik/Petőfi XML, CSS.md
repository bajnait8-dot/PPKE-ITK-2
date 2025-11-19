```xml
<?xml version="1.0" encoding="UTF-8"?>
<?xml-stylesheet type="text/css" href="petofi.css" ?>
<vers id="1001">
	<fejlec>
		<forras url="http://magyar-irodalom.elte.hu/sulinet/igyjo/setup/portrek/petofi/anyamtyu.htm"></forras>
		<szerzo>
			<nev>
				<vezeteknev>Petőfi</vezeteknev>
				<keresztnev>Sándor</keresztnev>
			</nev>
		</szerzo>
		<cim>Anyám tyúkja</cim>
		<hely>Vác</hely>
		<ido>1848-02-01</ido>
		<nyelv>magyar</nyelv>
	</fejlec>
	<torzs>
		<versszak id="1">
			<sor>Ej mi a kő! tyúkanyó, kend</sor>
			<sor>A szobában lakik itt bent?</sor>
			<sor class="kek">Lám, csak jó az isten, jót ád,</sor>
			<sor class="elrejt">Hogy fölvitte a kend dolgát!</sor>
		</versszak>
		<versszak id="2">
			<sor>Itt szaladgál föl és alá,</sor>
			<sor id="zold" class="kek">Még a ládára is fölszáll,</sor>
			<sor>Eszébe jut, kotkodácsol,</sor>
			<sor>S nem verik ki a szobából.</sor>
		</versszak>
		<versszak id="3">
			<sor>Dehogy verik, dehogy verik!</sor>
			<sor>Mint a galambot etetik,</sor>
			<sor>Válogat a kendermagban,</sor>
			<sor class="kek">A kiskirály sem él jobban.</sor>
		</versszak>
		<versszak id="4">
			<sor>Ezért aztán, tyúkanyó, hát</sor>
			<sor>Jól megbecsűlje kend magát,</sor>
			<sor>Iparkodjék, ne legyen ám</sor>
			<sor>Tojás szűkében az anyám.</sor>
		</versszak>
		<versszak id="5">
			<sor class="kek">Morzsa kutyánk, hegyezd füled,</sor>
			<sor>Hadd beszéljek mostan veled,</sor>
			<sor>Régi cseléd vagy a háznál,</sor>
			<sor>Mindig emberül szolgáltál.</sor>
		</versszak>
		<versszak id="6">
			<sor>Ezután is jó légy, Morzsa,</sor>
			<sor class="kek piros">Kedvet ne kapj a tyúkhúsra,</sor>
			<sor class="kek">Élj a tyúkkal barátságba'...</sor>
			<sor>Anyám egyetlen jószága.</sor>
		</versszak>
	</torzs>
</vers>
```

```css
vers{
	margin: auto;
	border: 1px dotted green;
	width: 50%;
	padding: 20px 30px;
	position: relative;
}

szerzo nev{
	font-size: 15pt;
	font-weight: bold;
}

szerzo nev vezeteknev
{
	text-transform: uppercase;
}

versszak
{
	display: block;
	margin-top: 10pt;
}

versszak[id="1"]
{
	text-transform:uppercase;
}

sor[id="zold"]
{
	color: green !important;
}

sor[class~="piros"]
{
	color: red !important;
}

sor[class*="ke"]{
	color: blue;
}

/*
#zold{
	color: green;
}

.piros{
	color: red !important;
}

.kek{
	color: blue;
}

*/
cim
{
	display: block;
	font-size: 30pt;
	font-weight: bold;
	color: #504f4f;
	text-shadow: 5px 5px 0px #eee, 7px 7px 0px #707070;
}

sor
{
	display: block;
	font-size: 12pt;
	font-weight: normal;
}

versszak:nth-child(odd){
	font-style: italic;
}

versszak > sor:not(:first-of-type) {
	display: none;
}

versszak > sor:first-of-type:hover ~ sor {
	display: block;
}

hely, nyelv{
	font-style: italic;
}

keresztnev:hover{
	cursor: pointer;
	color: pink;
	text-decoration: underline;
}

.elrejt{
	/*visibility: hidden;*/
}

sor:nth-child(3n) {
	font-weight: bold;
	display: inline;
}
```