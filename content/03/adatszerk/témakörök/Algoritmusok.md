# Hash
<iframe width="100%" height="400px"  src="https://www.youtube.com/embed/knV86FlSXJ8" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
# Buborék rendező (Bubble sort)
Idő komplexitás: $\mathcal{O}(n^2)$
Lépések:
1. Ciklussal (index: `i`) végig megyünk minden elemen
2. Egy második ciklussal az első elemtől indulva mindig a legnagyobb találtat visszük hátrafelé, az `n-i-1`-ig, mivel minden iterációval a legnagyobbat rakjuk hátra ezeknek a pozíciója fix.

<iframe width="100%" height="400px"  src="https://www.youtube.com/embed/xli_FI7CuzA" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

Megvalósítás:
```cpp
// Fent volt Moodle-ön https://moodle.ppke.hu/pluginfile.php/108646/mod_book/chapter/1110/sorts.hpp
void bubbleSort(int *a, int n) {
    for (int j = n - 1; j >= 1; --j) {
        for (int i = 0; i <= j - 1; ++i) { // Végigjárja előről hátra a tömböt
            if (a[i] <= a[i + 1]) { // Ha az aktuális elem kisebb, mint a következő
                // skip               // akkor nem történik semmi
            } else { // Ha az aktuális elem nagyobb, mint a következő
                swap(a[i], a[i + 1]); // akkor megcseréljük a két elemet
            }
        }
    }
}
```

# Beszúró rendező (Insertion sort)
Idő komplexitás: $\mathcal{O}(n^2)$
<iframe width="100%" height="400px"  src="https://www.youtube.com/embed/JU767SDMDvA" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
> [!warning] Nincs fent kész kód rá Moodle-ön

Megvalósítás:
```cpp
void insertionSort(int *a, int n) {
	for (int i=1; i<n; i++) {
		if (a[i]<a[i-1]) {
			for (int j=i; j>0 && a[j-1]>a[j]; j--) {
				if (a[j] >= a[i]) std::swap(a[j], a[i]);
				else continue;
			}
		}
	}
}
```
# Maximum kiválasztásos rendezés (Max sort)
Függvények:
- MaxSel(`int* array, int n`)
	1. Maximum keresés
	2. Visszaadja a maximum érték indexét
- MaxSort
	1. Ciklussal bejárjuk a tömböt ciklusonként jobbról egyre kisebb tartományban
	2. A `MaxSel` által kapott index-edik elemet kicseréljük az elsővel

> [!warning] Nincs fent kész kód rá Moodle-ön

Megvalósítás:
```cpp
int maxSel(const int *a, int j) {
	int max_index = 0;
	for(int i=0; i<j; i++) {
		if (a[max_index]<a[i]) max_index = i;
	}

	return max_index;
}

void maxSort(int *a, int n) {
	for (int i=0; i<n; i++) {
		int max = maxSel(a, n-i+1);
		int temp = a[max];
		a[max] = a[n-i+1];
		a[n-i+1] = temp;
	}
}
```
# Gyors rendező (Quick sort)
Idő komplexitás: $\mathcal{O}(n\log n)$
Függvények:
- Divide(`int* array, n`)
	1. Visszaad egy középső elemet
- QuickSort
	1. A megadott tömböt két részre bontjuk, a pivot-nál (`Divide`-ból kapjuk) nagyobb, és kisebb elemek
	2. A bal és jobb oldali tömbökre is meghívjuk a `QuickSort`-ot

<iframe width="100%" height="400px"  src="https://www.youtube.com/embed/Hoixgm4-P4M" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
> [!warning] Nincs fent az egész kész kód rá Moodle-ön

```cpp
int divide(int *a, int down, int up) {
	int pivot = (up-down)/2;
}

void quickSort(int *A, int down, int up) {
  if (down < up) {
    int q = divide(A, down, up);
    quickSort(A, down, q - 1);
    quickSort(A, q + 1, up);
  }
}

void quickSort(int *A, int len) { quickSort(A, 0, len - 1); }
```
# Heap
LiftUp Lift
Down main

<iframe width="100%" height="400px"  src="https://www.youtube.com/embed/0wPlzMU-k00" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

<iframe width="100%" height="400px"  src="https://www.youtube.com/embed/2DmK_H7IdTo" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
# Összefésülő rendező (Merge sort)
Idő komplexitás: $\mathcal{O}(n\log n)$
Függvények:
- MergeArrays(`int* array, int left, int mid, int right)
	Feltételezzük, hogy a megadott két tömb már sorrendben van.
	1. Egy új tömbbe helyezem az elemeket mindig onnan ahol a kisebb van.
	2. Ha kifogy valamelyik akkor a másikból rakom bele az elemeket.
- MergeSort
	1. Ha a megadott 
	2. Két egyenlő részre osztom a megadott tömböt
	3. Meghívom erre a `MergeSort`-ot mindkét részre
	4. Meghívom a MergeArrays-t

<iframe width="100%" height="400px"  src="https://www.youtube.com/embed/4VqmGXwpLqc" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
# Edény rendező (Bucket sort)
Idő komplexitás: $\mathcal{O}(n^2)$ (legrosszabb)
Lépések:
1. Minimum és maximum keresés a tömbben
2. Új `max-min+1` elemű tömb létrehozása
3. Végig megyünk az összes eredeti elemen, a `szám-min`-edik helyen lévő számot az új tömbben megnöveljük.
5. A számláló tömbből alkotunk egy eredmény tömböt.
# Radix rendező
Meghívjuk a BucketSortot többször, visszafelé.
Például dátum esetén:
1. nap
2. hónap
3. év