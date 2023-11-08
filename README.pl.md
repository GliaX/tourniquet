
# NALEŻY ZACHOWAĆ OSTROŻNOŚĆ PODCZAS UŻYWANIA KLINICZNEGO Opaska Zaciskowa / Krępulec / Staza Taktyczna

[![en](https://img.shields.io/badge/lang-en-blue.svg)](README.md)

Konstrukcja tej opaski jest ciągle udoskonalna na podstawie informacji z użytkowania. Nie uznajemy tego projektu za skończony mimo naszych ciężkich prac w przystosowaniu opaski do użytku kliniczznego. Nie należy wdrażać naszych opasek do użytku, o ile nie jesteście w sytuacji kryzysowej i wiecie dokładnie co robicie. Opaska zaciskowa wykorzystującą technologie druku 3D służąca do zatrzymywania krwawienia, szczególnie w przypadku urazów penetrujących.

Ta opaska uciskowa jest wykorzystywana [w Gazie](https://trklou.medium.com/3d-printed-open-source-tourniquet-rationale-failure-analysis-and-proposed-next-steps-of-the-glia-97e8441b4c5a) i jest produkowana na rzecz [sytuacji zagrożenia życia w Ukraine](https://trklou.medium.com/glias-gaza-tourniquet-is-ready-for-emergency-use-in-ukraine-make-some-if-you-can-ef5f83260b7c).

## Kontakt
Osoba do kontaktu: Tarek Loubani <tarek@tarek.org> lub Glia <info@glia.org>
Osoba odpowiedzialna za repozytorium: Tarek Loubani

## Ustawienia wydruku 3d
Wydrukuj plik z rozszerzeniem 3MF, z pozmienianymi ustawieniami pod wasze potrzeby. Nie rekomendujemy edycji siatek modeli - nie spłaszczaj drążka, nie skaluj go w celu łatwiejszego drukowania.

* Materiał: ABS
* Wysokość warstwy: 0.2 mm
* Wypełnienie: 100%
* Temperatura podłoża: 100°C na pierwszej warstwie żeby uniknąć zniekształceń

### Ustawienia dla modeli:
* backing_support: płytka
  * z podporami
  * 4 warstwy ścian
  * 2 warstwy sufit / podłoga
* buckle: sprzączka
  * z podporami
  * 2 warstwy ścian
  * 2 warstwy sufit / podłoga
* clip: klips
  * z podporami
  * 4 warstwy ścian
  * 4 warstwy sufit / podłoga
* windlass: drążek
  * z podporami
  * 4 warstwy ścian
  * 4 warstwy sufit / podłoga

## Instrukcja montażu
Instrukcje w następujących językach:
* [arabski](assembly_instructions/INSTRUCTIONS_AR.md)
* [angielski](assembly_instructions/INSTRUCTIONS_EN.md)
* [ukraiński](assembly_instructions/INSTRUCTIONS_UA.md)
* [polski](assembly_instructions/INSTRUCTIONS_PL.md)
* [francuski](assembly_instructions/INSTRUCTIONS_FR.md)
* [rosyjski](assembly_instructions/INSTRUCTIONS_RU.md)

## Składanie i przygotowanie opaski zaciskowej
Jest kilka technik składania CAT-opodobnej opaski zaciskowej. Rekomendujemy następującą, którą używamy w Gazie: https://www.youtube.com/watch?v=CSECJQPJmLw

## Instrukcja pakowania
Opaska powinna być zapakowana w przezroczystą folię, przykładowo z PVC, żeby zabezpieczyć ją przed uszkodzeniem przez zawilgocenie lub inne czynniki środowiskowe. Opakowanie nie może wymagać narzędzi i musi być łatwe do rozerwania.

## Wtryskiwanie plastiku - UWAGA
W folderze [`injection_molding`](injection_molding) znajdują się pliki związane z wytwarzaniem opasek za pomocą wtryskiwarek plastiku. Opaski z wtryskiwanymi elementami nie zostały wdrożone i są w fazie testów. Postępuj zgodnie z najlepszymi praktykami i składaj części jak w instrukcji wyżej.

W folderze "desktop_injection" znajduje się wysoce eksperymentalny sposób na tworzenie plastikowych części. Ten proces nie został jeszcze wdrożony. Nie dajemy żadnych gwarancji na poprawne działanie form wykonanych na podstawie tego projektu.  


## Licencja
Po więcej detali odnośnie GPLv3, spójrz na [plik licencji](LICENSE). Nasze pliki są także dostępne pod [Creative Commons By Attribution ShareAlike](https://creativecommons.org/licenses/by-sa/4.0/) jeśli jest taka potrzeba.
