% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/graph_bar_comp_year.R
\name{graph_bar_comp_year}
\alias{graph_bar_comp_year}
\title{Graphique de comparaison en barres}
\usage{
graph_bar_comp_year(
  baci,
  x,
  y,
  stack = TRUE,
  double_bar = FALSE,
  var_t = NULL,
  year_1 = NULL,
  year_2 = NULL,
  color_1 = FALSE,
  color_2 = FALSE,
  alpha = 0.7,
  var_fill = NULL,
  palette_fill = NULL,
  manual_fill = NULL,
  shape = 22,
  size_shape = 5,
  var_fill_shape = NULL,
  fill_shape = "black",
  na.rm = TRUE,
  x_title = "",
  y_title = "",
  title = "",
  subtitle = "",
  caption = "",
  fill_legend = "",
  type_theme = "bw",
  var_facet = NULL,
  path_output = NULL,
  width = 15,
  height = 8,
  print = TRUE,
  return_output = TRUE
)
}
\arguments{
\item{baci}{Chemin d'accès, dataframe ou format parquet des données de baci
à utiliser.}

\item{x}{Variable x du graphique}

\item{y}{Variable y du graphique}

\item{stack}{Booléen indiquant si les barres doivent être empilées ou non.
Si TRUE, alors la comparaison ne peut se faire qu'entre deux années et les
paramètres \code{year_1} et \code{year_2} doivent être définis.}

\item{double_bar}{Booléen indiquant si dans le cas où \code{stack = TRUE}, les
deux barres doivent êtres représentées, ou bien si une seule année doit être
représentée sous forme de barre et la deuxième sous forme de point sur la
barre.}

\item{var_t}{Variable temporelle à utiliser pour la comparaison des années.}

\item{year_1}{Année 1 à comparer.}

\item{year_2}{Année 2 à comparer.}

\item{color_1}{Couleur de la barre de l'année 1. Si FALSE la barre 1
(correspondant à l'année 1) n'aura pas de couleurs de bordure. Dans le cas
où \code{stack = FALSE}, ce sera cette couleur qui sera utilisée pour la couleur
des bordures des différentes barres.}

\item{color_2}{Couleur de la barre de l'année 2. Si FALSE la barre 2
(correspondant à l'année 2) n'aura pas de couleurs de bordure.}

\item{alpha}{Transparence de la barre de l'année 2. Cette transparence
permet de voir la barre de l'année 1 à travers la barre de l'année 2.}

\item{var_fill}{Variable à utiliser pour le remplissage des barres.}

\item{palette_fill}{Palette de couleur à utiliser pour le remplissage des
barres.}

\item{manual_fill}{Les couleurs à utliser définies manuellement.}

\item{shape}{Numéros correspond à la formevoulue dans le cas où
\code{stack = TRUE} et \code{double_bar = FALSE}}

\item{size_shape}{= la taille de la forme utilisée.}

\item{var_fill_shape}{Variable sous forme de chaîne de caractère, servant
à donner la couleurs aux points si \code{double_bar = TRUE}. Si ce paramètre est
\code{FALSE}, alors la couleur sera la même pour tous}

\item{fill_shape}{= la couleur de la forme à utiliser. Couleur indentique
pour toutes les formes.}

\item{na.rm}{Booléen indiquant si les valeurs manquantes doivent être
retirée.}

\item{x_title}{Titre de l'axe des X.}

\item{y_title}{Titre de l'axe des Y.}

\item{title}{Titre du graphique.}

\item{subtitle}{Sous-titre du graphique.}

\item{caption}{Légende du graphique.}

\item{fill_legend}{Légende du remplissage des barres.}

\item{type_theme}{Thème du graphique. Peut être "bw" (noir et blanc),
"classic" (classique) ou "minimal" (minimaliste).}

\item{var_facet}{Variable à utiliser pour les facettes.}

\item{path_output}{Chemin d'accès pour enregistrer le graphique.}

\item{width}{Largeur du graphique.}

\item{height}{Hauteur du graphique.}

\item{print}{Booléen indiquant si le graphique doit être affiché.}

\item{return_output}{Booléen indiquant si le graphique doit être retourné.}
}
\value{
Un graphique en barre comparant deux années.
}
\description{
Représentation d'un graphique en barre permettant de comparer le niveau et
l'évolution d'une variable sur deux (ou plus) années différentes.
}
\details{
Ce graphique permet de comparer le niveau et l'évolution d'une variable
sur deux années différentes. Il est possible de représenter les données
d'une façon telle qu'une barre représente une année. Il est également
possible (ne fonctionne que pour deux années) de représenter les données
sur une seule barre. La partie "foncée" indique le niveau à l'année 1, tandis
que la différence avec l'année 2 est représenté par la partie "claire".

CEtte deuxième représentation fonctionne particlièrement bien pour les
données qui ne sont que croissantes ou décroissantes (dans ce dernier cas,
il faut intervertir l'année 1 et 2). En effet, si les données ne sont pas
uniquement croissantes ou décroissantes, la partie "foncée" causera un
overlap avec la partie "claire" et la lecture des données sera difficile.
Cela peut être compensé par l'ajout des couleurs dans le paramètre \code{color}
qui permettent de délimiter chaque barre.

Grâce au paramètre \code{return_output = TRUE}, il est possible de retourner le
graphique afin de pouvoir le modifier manuellement par la suite.
}
\examples{
# Pas d'exemples.
}
