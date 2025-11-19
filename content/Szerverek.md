##### [users.itk.ppke.hu](https://users.itk.ppke.hu)
Hallgatóknak is elérhető webszerver. Minden hallgató hosztolhatja rajta a saját oldalát. PHP képes.
# Csatlakozás a szerverekhez
A szerverekhez legkönnyebben SSH-val csatlakozhatunk, terminálon, vagy egyéb ilyen képességekkel rendelkező programokkal. Ezen kívül a szerverek támogatják az SFTP standardot is.
Ajánlott programok:
- [Termius](https://www.termius.com) (macOS, iOS, iPadOS)
- OpenSSH (Linux)
- PuTTY (Windows)
- WinSCP (Windows)
# Kulcsszó keresés fájlnév alapján
```shell
find / -type f -iname "*KULCSSZÓ*" 2>/dev/null
```
---
[[SSH segédlet.pdf]]