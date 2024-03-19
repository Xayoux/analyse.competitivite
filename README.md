
<!-- README.md is generated from README.Rmd. Please edit that file -->

# analyse.competitivite

<!-- badges: start -->
<!-- badges: end -->

Le but de ce package est de fournir toutes les fonctions nécessaires à
l’analyse de la compétitivité des pays sur un ensemble de produits HS6
donné.

## Installation

Vous pouvez installer le package depuis
[GitHub](https://github.com/Xayoux/analyse.competitivite.git) avec :

``` r
# install.packages("devtools")
devtools::install_github("Xayoux/analyse.competitivite")
```

## Prérequis

Pour utiliser ce package, vous aurez besoin de télécharger les données
de la base de donnée BACI (Base pour l’Analyse du Commerce
International) du
[CEPII](http://www.cepii.fr/CEPII/en/bdd_modele/bdd_modele_item.asp?id=37)

Afin de pouvoir faire correspondre les codes HS de la nomenclature la
plus récente à une autre nomenclature, vous aurez également besoin de
télécharger le package
[concordance](https://github.com/insongkim/concordance.git) depuis
[GitHub](https://github.com/insongkim/concordance.git) avec :

``` r
# install.packages("devtools")
devtools::install_github("insongkim/concordance")
```

## Fonctions

- `extract_product` : Cette fonction permet à partir de codes HS
  complets, des numéros de chapitres ou de section d’une nomenclature
  donnée, de créer la liste des codes HS utilisés, ainsi que d’afficher
  leur description. Il est possible d’établir la correspondance entre
  ces codes et ceux d’une autre nomenclature. Cette fonctionnalité
  utilise la fonction `concord_hs` du package
  [concordance](https://github.com/insongkim/concordance.git).