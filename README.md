# Moje _małe_ środowisko do pisania i uruchamiania programów na małe Atari

Repozytorium zawiera skrypt w postaci pliku `makefile`, przy pomocy którego można uruchamiać na emulatorze **Altirra** programy napisane dla małego Atari przy
pomocy Assembler-a **MADS**. Skrypt automatyzuje proces kompilacji MADS-a oraz ustawienia Debugger-a Altirra-y. Przygotowany plik _makefile_ zadziała w obecnej formie wyłącznie na Windows-ie (przez wykorzystanie polecenia `findstr`).

## Wymagane do uruchomienia kodu narzędzia/soft

1. Emulator **Altirra**, dostępny [tutaj](http://www.virtualdub.org/altirra.html). Testowano na wersji _3.20_.
2. **MADS**, dostępny [tutaj](http://mads.atari8.info/). Testowano na wersji _2.1.0_.
3. Działające polecenia `make` i `cut`. Testowano z _MinGW_, tj. `mingw32-make`.

## Konfiguracja

Po instalacji wyżej wymienionego oprogramowanie należy dodać kilka zmiennych środowiskowych. Najwygodniej można tego dokonać przy pomocy narzędzia 
[Rapid Environment Editor](https://www.rapidee.com/en/about).

Zmienne środowiskowe do uzupełnienia to:
- `ALTIRRA_PATH`: ścieżka do Altirra-y, podajemy ścieżkę do folderu gdzie znajduje się plik _Altirra64.exe_;
- `MADS_PATH`: ścieżka do MADS-a, podajemy ścieżkę do folderu gdzie znajduje się plik _mads.exe_;

## Struktura

Katalog `projects` zawiera źródła oraz pliki projektów. W katalogu projektu **musi** znaleźć się główny plik `main.asm`. Dodatkowe pliku _.asm_ projektu można umieścić 
bezpośrednio w katalogu projektu jak również w podfolderze _src_.

## Komendy

W każdej komendzie należy podać zmienną `PROJECT` zawierającą nazwę folderu z projektem. 

```
make PROJECT=project_name
make clear PROJECT=project_name      // czyści katalog projektu z plików kompilacji i wytycznych dla Debugger-a
make create PROJECT=project_name     // tworzy folder dla projektu z przykładowym plikiem
make build PROJECT=project_name      // buduje projekt przy pomocy MADS-a
make run PROJECT=project_name        // uruchamia projekt na Altirra-rze
make debug PROJECT=project_name      // uruchamia projekt na Altirra-rze oraz tworzy wytyczne dla Debugger-a
```

## Debugging

Wytyczne Debugger-a tworzone są na podstawie dwóch specjalnych składni komentarzy:
- `;bp` tworzy w podanej linii _breakpoint_;
- `;wb:$FFFF` podczas emulacji w lewym dolnym rogu wyświetli się zawartość wskazanej komórki pamięci.

Należy stosować się do następujących **ograniczeń**:
- komentarz musi być jedynym komentarzem w linii;
- komentarz musi kończyć linie.
