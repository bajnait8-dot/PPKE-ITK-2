# Lineáris adatszerkezetek
## Verem (LIFO, stack)
[^verem]

<iframe width="100%" height="400px"  src="https://www.youtube.com/embed/D6gu-_tmEpQ" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

Műveletei
- `empty`: verem kiürítése
- `is_empty`: üres e a verem
- `push`: elem a verembe helyezése
- `pop`: legfelső elem kivétele
- `top`: mi a legfelső elem
Tulajdonságok
- Maximum fix számú elemet tud tárolni
Hibakezelés
- `push`: megnézzük belefér a még a listába az új elem
- `pop`: megnézzük lenne e mit törölni
- `top`: megnézzük lenne e mit kiírni
Megvalósítás
```cpp
class Stack {
private:
	const max = 6; // Hány elemes a verem
	int index;   // Hány elem van a veremben
	int[max] elements;
public:
	Stack() : index(0)
	void empty() { index = 0; }
	bool is_empty() { return index == 0; }
	void push(int element) {
		if (index == max) { return; } // Nem fér már bele
		elements[index++] = element;
	}
	void pop() {
		if (is_empty()) { return; } // Nincs mit kivenni
		index--;
	}
	int top() {
		if (is_empty()) { return; } // Nincs mit visszaadni
		return elements[index-1];
	}
}
```
## Sor (FIFO, Queue)
[^sor]

<iframe width="100%" height="400px"  src="https://www.youtube.com/embed/D6gu-_tmEpQ" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
Műveletei
- `empty`: sor kiürítése
- `is_empty`: üres e a sor
- `in`: adat a sor végére helyezése
- `out`: legelső adat kivétele
- `first`:  első elem lekérdezése
Hibakezelés
- `in`: megnézzük bele fér e még a listába
- `out`: megnézzük van e benne már egyáltalán valami
Megvalósítás
```cpp
class Queue {
private:
	const int max = 6;   // Hány férőhelyes a sorunk
	int front;           // A lista első elemének indexe
	int back;            // A lista utolsó elemének indexe
	int[max] elements;
	bool has_elements;
public:
	Queue() : front(0), back(0), has_elements(false)
	void empty() {
		front = back = 0;
		has_elements = false;
	}
	bool is_empty() { return !has_elements; }
	void in(int element) {
		if (front == back && has_elements) { return; } // Ha nincs benne hely
		                                               // ne csináljunk semmit
		elements[back++] = element;
		back = back % max;
		has_elements = true;
	}
	void out() {
		if (is_empty()) { return; } // Ha nincs benne semmi nincs mit kivenni
		front = ++front % max;
		if (front == back) { has_elements = false; }
	}
	int first() {
		if (is_empty()) { return; } // Ha nincs benne semmi nincs mit visszaadni
		return elements[front];
	}
}
```

# Hierarchikus adatszerkezetek
## Bináris keresőfa (BST, binary search tree)
![[bst.png]]
- [[04_2_E_Binaris_fa.pdf]]
- [[04_O_E_Binaris_keresofa.pdf]]
- [[04_4_E_Binaris_keresofa.pdf]]
Tulajdonságaik
> [!info] Fontos tulajdonság
> [[Gráfok#Inorder bejárás|Inorder bejárással]] a kulcsok rendezett sorozatát kapjuk

- Nem tartalmazhat azonos elemeket
- Két gyereke lehet
- A bal oldali gyerek értéke kisebb, mint a szülőé
- A jobb oldali gyerek értéke nagyobb, mint a szülőé
- Magassága $\log(n)\leq x\leq n$, ahol $x$ a magasság, $n$ az elemek száma
Megvalósítás
```cpp
class BinarySearchTree {
private:
	// Node struct ent van Moodle-ön: https://moodle.ppke.hu/mod/page/view.php?id=34814
	struct Node {
	private:
		int value;
		Node* left;
		Node* right;
	public:
		Node(int value) : value(value), left(nullptr), right(nullptr)
	}
	Node* root = nullptr;
public:
	void add(int value) {
		if (contains(value)) { return; } // Ha már benne van nem csinálunk semmit
		
		if (!root) { root = Node(value); }
		Node* node = root;
		while (node->value != value) {
			if ((node->left)->value <)
		}
	}
	bool contains(int value) {
		if (!root) { return false; }
		Node* node = root;
		while (node) {
			if (node->value == value) { return true; }
			if (node->value < value) { node = node->right; }
			else { node = node->left; }
		}
		return false;
	}
}
```
## AVL fa
Egyszerűen fogalmazva optimalizált [[#Bináris keresőfa (BST, binary search tree)|bináris fa]], mozgó root elemmel, és forgó al fákkal.

Tulajdonságok
- Akár $O(\log n)$ forgatásra van szükség beillesztés, vagy törlés után
- A balance factor csak $[-1, 1]$ lehet
---
<iframe width="100%" height="380" src="https://www.youtube.com/embed/jDM6_TnYIqE?si=0qU2kZwEAr2zqHIq" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
<iframe width="100%" height="400px" src="https://www.youtube.com/embed/DB1HFCEdLxA" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

<iframe width="100%" height="400px" src="https://www.youtube.com/embed/JPI-DPizQYk" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

<iframe width="100%" height="400px" src="https://www.youtube.com/embed/PBkXmhiCP1M" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

Bevezetett definíciók:
> [!info] Magasság (height)
> A fa egy adott csúcsából kiinduló, azon a csúcson keresztül elérhető legmélyebb levél-csúcsig vezető úton található élek száma.

> [!info] Balance factor
> $$\text{balance factor}=\text{bal magasság}-\text{jobb magasság;}\quad\text{balance factor}\in[-1, 1]$$

Tulajdonságaik:
- Önkiegyensúlyozó [[#Bináris keresőfa (BST, binary search tree)|bináris fa]]
- Feltalálói Adelson-Velsky és Landis
Megvalósítás
```cpp
template <class T> class AvlTree {
private:
```
## Piros-Fekete fa
<iframe width="100%" height="400px" src="https://www.youtube.com/embed/qvZGUFHWChY" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

<iframe width="100%" height="400px" src="https://www.youtube.com/embed/95s3ndZRGbk" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

<iframe width="100%" height="400px" src="https://www.youtube.com/embed/5IBxA-bZZH8" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

<iframe width="100%" height="400px" src="https://www.youtube.com/embed/A3JZinzkMpk" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

Kritériumok:
- Minden elem piros, vagy fekete
- A gyökér elem fekete
- Ha egy elem piros, a gyerekeinek feketének kell lennie
- Minden levélnek vannak fekete referencia elemei (ezek a gyakorlatban ugyan azok a Node pointerek)
Idő komplexitás: $\mathcal{O}(\log n)$
Tulajdonságok:
- Maximum 2 forgatásra van szükség beillesztés, vagy törlés után
- A balance factor csak $[-2,2]$ lehet

<iframe width="100%" height="380" src="https://www.youtube.com/embed/V5Rh70XKjSE" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
<iframe width="100%" height="380" src="https://www.youtube.com/embed/EmxWC18iuSc" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
<iframe width="100%" height="380" src="https://www.youtube.com/embed/mRVMrVACjKk" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>


[^verem]: [[01_3_E_LIFO_FIFO.pdf]]
[^sor]: [[01_3_E_LIFO_FIFO.pdf]]