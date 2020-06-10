# Moja mała piaskownica w której robię _rzeczy_ na Atari 65XE

Repozytorium zawiera moje małe programistyczne przygody z małym Atari, inspiracją to podjęcia się tematu była/jest seria filmów na kanale 
[Jaskinia Prawiczka](https://www.youtube.com/channel/UCfrQOlxLlNGRCekw4kaaTPA) o tytule _Piszemy grę w ASMie (K65) na Atari XL/XE_ (polecam!).

## Wymagane do uruchomienia kodu narzędzia/soft

1. Emulator **Altirra**, dostępny [tutaj](http://www.virtualdub.org/altirra.html). Ja używam wersji _3.20_.
2. **K65 SDK**, dostępne [tutaj](http://devkk.net/wiki/index.php/K65). Używam wersji _0.2.1_.
3. Jakiś _make_, ja używam tego z [MinGW](http://www.mingw.org/) stąd czasem może pojawić się polecenie `mingw32-make` zamiast normalnego `make`, ale nie chciało mi się robić aliasu.
4. Git (ale skoro już pobraliście ten kod to go macie).

## Konfiguracja

Po instalacji wyżej wymienionego oprogramowanie należy dodać kilka zmiennych środowiskowych. Najwygodniej można tego dokonać przy pomocy narzędzia 
[Rapid Environment Editor](https://www.rapidee.com/en/about).

**Obowiązkowe** zmienne środowiskowe do uzupełnienia to:
- `ALTIRRA_PATH`: ścieżka do Altirry, podajemy ścieżkę do folderu gdzie znajduje się plik _Altirra.exe_;
- `K65_PATH`: ścieżka do SDK K65, podajemy ścieżkę do folderu gdzie znajduje się plik _k65.exe_;

Zmienne opcjonalne to:
- `ALTIRRA_ARCHITECTURE`: możliwe wartości tej zmiennej to: `32` lub `64`, zmienna przełącza wersje Altirry na 32bit lub 64bit.

## Struktura

W katalogu `build` znajdują się zbudowane przy pomocy K65 pliki projektów (w odpowiednich podfolderach).
Katalog `projects` zawiera źródła oraz pliki projektów.

## Dostępne komendy

W każdej komendzie należy podać zmienną `PROJECT` zawierającą nazwę folderu z projektem (folder znajduje się w `projects`). 

```
make PROJECT=abc
make clear PROJECT=abc
make create PROJECT=abc
make build PROJECT=abc
make run PROJECT=abc
make debug PROJECT=abc
```
