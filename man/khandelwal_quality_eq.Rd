% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Khandelwal_quality_eq.R
\name{khandelwal_quality_eq}
\alias{khandelwal_quality_eq}
\title{Estimation de la qualité d'un produit à partir d'une équation à la
Khandelwal et al (2013)}
\source{
\href{https://www.aeaweb.org/articles?id=10.1257/aer.103.6.2169}{Khandelwal, A. K., Schott, P. K., & Wei, S. J. (2013). Trade liberalization and embedded institutional reform: Evidence from Chinese exporters. American Economic Review, 103(6), 2169-2195.}

\href{https://www.cairn.info/revue-notes-du-conseil-d-analyse-economique-2015-4-page-1.htm}{Bas, M., Fontagné, L., Martin, P., & Mayer, T. (2015). À la recherche des parts de marché perdues (Research Report No. 2015–23). Conseil d’Analyse Economique.}
}
\usage{
khandelwal_quality_eq(
  data_reg,
  reg_formula = NULL,
  y_var = NULL,
  x_var = NULL,
  fe_var = NULL,
  path_latex_output = NULL,
  title_latex = NULL,
  label_latex = NULL,
  print_reg_output = TRUE,
  return_output = TRUE
)
}
\arguments{
\item{data_reg}{Les données à utiliser pour l'estimation. Peut être un
chemin vers un dossier parquet, un dataframe ou un objet arrow. Il est
recommandé d'utiliser la fonction \link{create_quality_df} pour obtenir
les données nécessaires.}

\item{reg_formula}{Objet formula indiquant la formule à utiliser pour
l'équation de régression. Si ce paramètre est renseigné, les paramètres
\verb{y_var, }x_var  et \code{fe_var} ne seront pas pris en compte.}

\item{y_var}{La variable dépendante de l'équation de régression.}

\item{x_var}{Les variables indépendantes de l'équation de régression.}

\item{fe_var}{Les variables pour les effets fixes de l'équation de régression.}

\item{path_latex_output}{Le chemin où sauvegarder le tableau en format LaTeX.
Par défaut, NULL.}

\item{title_latex}{Le titre du tableau en format LaTeX. Par défaut, NULL.}

\item{label_latex}{Le label du tableau en format LaTeX. Par défaut, NULL.}

\item{print_reg_output}{Afficher les résultats de la régression si TRUE.}

\item{return_output}{Retourner les résultats de la régression ainsi que
les données contenant la qualité si TRUE. Les résultats sont retorunés
sous forme de liste avec lm contenant la régression et data_reg contenant
les données.}
}
\value{
Les résultats de la régression ainsi que les données contenant la
compétitivité hors-prix si return_output = TRUE.
Les données de la compétitivité hors-prix renvoyées sont les données en
niveau (mise à l'exponentielle).
}
\description{
Estimation de la qualité d'un produit à partir d'une équation à la
Khandelwal et al (2013).
}
\details{
\subsection{Equation estimée}{

Cette fonction permet d'estimer économétriquement la 'qualité', où plus
précisément la compétitivité hors prix d'un produit en se basant sur une
modélisation proposée par Khandelwal et al (2013) et modifiée par
Bas et al (2015) afin de pouvoir être utilisée avec les données de BACI.

Cette modélisation se base sur une fonction de demande qui dépend du prix,
de la qualité, du niveau général des prix et de la richesse du pays de
destination. La "qualité" d'un produit va être définie comme étant toutes
les caractéristiques qui vont faire augmenter la demande d'un produit pour
un même prix.

Econométriquement, elle est estimée de la façon suivante :

\eqn{X_{ijkt} + \sigma_{k} p_{ijkt} = \beta PIB_{it} + \lambda D_{ij} + \alpha_{kjt} + \epsilon_{ijkt}}

Cette équation met en relation la quantité échangée d'un produit k, une
année t entre l'exportateur i et l'importateur j multipliée par le prix
de ce produit (flux) lequel est multiplié par son élasticité prix (la
demande décroit en fonction du prix) avec le PIB du pays d'origine, des
variables de gravité et un effet fixe produit-importateur-année.

Le logarithme de la compétitivité hors-prix est défini comme le résidu de
cette relation normalisé par l'élasticité prix du produit correspondant
\eqn{\frac{\epsilon_{ijkt}}{\sigma_{k} - 1}}. Le niveau de la compétitivité
hors prix est obtenu en prenant l'exponentielle. Le résultat en niveau est
le résultat renvoyé par cette fonction.
}

\subsection{Utilisation des variables}{

Cette fonction utilise la fonction \code{\link[fixest]{feols}} du du package
\pkg{fixest} afin d'estimer la régression.

Pour indiquer les variables utilisées pour la régression, l'utilisateur
peut simplement indiquer les noms des variables dans un vecteur de chaînes de
caractères. Il est
également possible de simplement passer une chaîne de caractères
contenant les relations entre les variables. Si un vecteur de chaînes de
caractères est passé, les relations entre les variables seront simplement
additionnées. Par exemple : \code{x_var = c("var1", "var2")} est équivalent à
\code{x_var = "var1 + var2"}. Pour des formes fonctionnelles plus complexes,
il faut utiliser la deuxième option. Par exemple pour ajouter un terme
d'interaction : \code{x_var = "var1 * var2"}.

Comme dans le package \pkg{fixest}, il est possible d'ajouter des effets
fixes combinés en utilisant le symbole \code{^} entre les noms des variables
à effet fixes. Par exemple : \code{fe_var = c("var1", "var2")} est équivalent à
\code{fe_var = "var1 + var2"}. Ce qui donne deux effets fixes. Pour avoir un seul
effet fixe combiné, il faut faire : \code{fe_var = "var1 ^ var2"}.

Enfin il est possible d'estimer plusieurs régression simultanément. Pour
cela ilf aut utiliser les fonctions stepwise (voir documentation de
\code{\link[fixest]{feols}}). Par exemple :
\code{var_x = "var1 + sw(var2, var3)"} permet d'estimer deux régressions, une
avec \code{var1} et \code{var2} et une autre avec \code{var1} et \code{var3}.
}
}
\examples{
# Pas d'exemple
}
