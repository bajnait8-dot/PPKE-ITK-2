# Ágens
# Search Strategies
### Optimal
Optimal search strategies finds the most optimal solutions first.
### Complete
Complete search strategies guarantees to find a solution if exists.
## Non-informed search strategies
$d$: depth of shallowest solution
$b$: branching factor
$m$: maximum depth of search tree
$l$: depth limit

effective branching rate:
$$f(b)=1+b+b^2+...+b^d-N$$
### Breadth-first (BFS, szélességi)
- Time: $\mathcal{O}(b^d)$
- Space: $\mathcal{O}(b^d)$
- is [[#Optimal]]: true
- is [[#Complete]]: true

<iframe width="560" height="315" src="https://www.youtube.com/embed/xlVX7dXLS64?si=CMm26d-8c_W8UvpV" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
### Depth-first (DFS, mélységi)
- Time: $\mathcal{O}(b^m)$
- Space: $\mathcal{O}(b\cdot m)$
- is [[#Optimal]]: false
- is [[#Complete]]: false

Takes up small space. Can find the goal quickly. (shallow tree)
### Uniform-cost (UCS, egyenletes költségű)
Uniform-cost search strategy appends the node with a cost field. This cost is computed for each node based on the cost of it's parent's cost.

The cheapest node is searched first.
- Time: $\mathcal{O}(b^d)$
- Space: $\mathcal{O}(b^d)$
- is [[#Optimal]]: true
- is [[#Complete]]: true

<iframe width="560" height="315" src="https://www.youtube.com/embed/dRMvK76xQJI?si=rp5gMsKPldCCY9d1" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

[[01 Problem Solving.pdf#page=22|Example]]
### Depth limited (DLS,  mélységi limitált)
- Time: $\mathcal{O}(b^l)$
- Space: $\mathcal{O}(b\cdot l)$
- is [[#Optimal]]: false
- is [[#Complete]]: false
### Iterative deepening depth-first (IDS, iteratívan mélyülő)
- Time: $\mathcal{O}(b^d)$
- Space: $\mathcal{O}(b\cdot d)$
- is [[#Optimal]]: true
- is [[#Complete]]: true

<iframe width="560" height="315" src="https://www.youtube.com/embed/Y85ECk_H3h4?si=ksNkEdciwyMVsOaP" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
### Bidirectional (BS, kétirányú)
- Time: $\mathcal{O}(b^{d/2})$
- Space: $\mathcal{O}()$ ==TODO==
- is [[#Optimal]]: ==TODO==
- is [[#Complete]]: ==TODO==
## Informed search strategies
### Offline
### Online
### Heuristics
- admissible (elfogadható): if never overestimates.
- consistent (monoton): legalább a lépés árával csökkeni kell (ha monoton, akkor elfogadható is)
- dominates: ha közelebb van a valósághoz
### A* search
<iframe width="560" height="315" src="https://www.youtube.com/embed/6TsL96NAZCo?si=X5cIxmenjUCkbqp3" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
### RBFS (Recursive Best First Search)
<iframe width="560" height="315" src="https://www.youtube.com/embed/_NFk2YTsv_0?si=Gswo4Gvm0Uw5Mp0o" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

### Hill Climbing search
### Beam search
### MINMAX
Példa: két játékos van. Értékeljük a lépéseket, a nagy számok fehérnek, a kicsik feketének kedveznek. Ezért fehér maximalizálni akarja a számokat (MAX), fekete pedig minimalizálni (MIN).

- $\alpha$: a legnagyobb érték, amit MAX elérhet eddig.
- $\beta$: a legkisebb érték, amit MIN elérhet eddig.
<iframe width="560" height="315" src="https://www.youtube.com/embed/l-hh51ncgDI?si=Rb0WunUjofWg38RV" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
<iframe width="560" height="315" src="https://www.youtube.com/embed/zp3VMe0Jpf8?si=0NrlEMtWqEMuxVpf" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
# Logic / Logika
- Valid or Not valid
- Unsatisfiable or Satisfiable

- Deduction (következtetés): minden tehén ad tejet, ez itt egy tehén $\implies$ ez itt ad tejet
- Abduction (magyarázat): nedves a fű $\implies$ esett az eső
- Induction (általánosítás): csak fekete tehenet láttam $\implies$ Minden tehén fekete

### Rezolúció
1. CNF alakra hozás
2. Eredmény negálása
3. Klózok összehúzása ($A$ és $\neg A$ kiütik egymást)
4. Akkor igaz az eredeti állítás, ha marad egy üres klóz
<iframe width="560" height="315" src="https://www.youtube.com/embed/PW9vadATxW8?si=ZmQabeODk3ZGiPMX" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

### Unifikáció
Két logikai kifejezés akkor unifikálható, ha van olyan változóhelyettesítés, ami után teljesen megegyeznek.
1. Két kifejezés akkor unifikálható, ha a neve és az argumentumainak a száma megegyezik
2. $a=b \Rightarrow \{a/b\}$ 
> [!example] 1\.Példa
> ```p(x, y, g(x, y), h(B, y)) ¬p(A, B, g(C, y), x)```
> - $\{x/A\}$
> - $\{y/B\}$
> - $\{x/C\}$ Nem unifikálható, mert $C≠A$

