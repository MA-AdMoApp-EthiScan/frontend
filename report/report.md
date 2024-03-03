Rapport et un manuel d’utilisateur :

- abstract/résumée,
- chapitre « Introduction » expliquant la technologie utilisée,
- chapitre « UX » expliquant les solutions utilisées en lien avec les concepts vus dans le
cours,
- chapitre « Evaluations » explication les évaluations implémentée,
- chapitre(s) techniques expliquant
i. « quoi » et « comment »,
ii. problèmes rencontrés et éventuelles solutions,
iii. conclusion technique,
iv. une auto-critique (+ et -) de votre code.

---

# Rapport et Manuel d'Utilisateur : EthiScan

## Abstract/Résumé

EthiScan est une application mobile innovante destinée à transformer l'expérience de consommation en permettant aux utilisateurs de scanner des produits pour obtenir des informations détaillées alignées avec leurs valeurs personnelles. Elle vise à promouvoir une consommation responsable en fournissant des données sur les labels environnementaux et nutritionnels, l'évolution des prix, l'impact carbone, et d'autres critères pertinents. En intégrant une technologie de pointe et une conception centrée sur l'utilisateur, EthiScan offre une plateforme fiable et intuitive pour faire des choix de consommation éclairés et responsables.

## Chapitre 1: Introduction

### Technologie Utilisée

EthiScan utilise une stack technologique moderne et efficace pour offrir une expérience utilisateur optimale. Le front-end de l'application est développé avec Flutter, permettant une interface utilisateur cohérente et réactive sur iOS, Android et le Web. Le back-end repose sur Firebase, qui fournit une solution robuste pour l'authentification, le stockage des données, et les fonctionnalités backend nécessaires.

Flutter, avec sa capacité de compilation native, offre des performances élevées et une excellente réactivité, essentielles pour les fonctionnalités de scan en temps réel. L'utilisation de Firebase permet une gestion sécurisée des données utilisateurs et facilite l'intégration d'APIs externes pour la récupération des données produits.

## Chapitre 2: UX

### Solutions Utilisées

En termes d'expérience utilisateur (UX), EthiScan met l'accent sur la simplicité et l'efficacité. L'interface utilisateur est conçue pour être intuitive, permettant aux utilisateurs de naviguer facilement entre les différentes fonctionnalités. Le processus de scan de produit est rapide et direct, offrant un retour immédiat et des informations détaillées sur le produit scanné.

La personnalisation de l'application, via la configuration des préférences d'achat, permet aux utilisateurs de recevoir des informations spécifiquement alignées avec leurs valeurs et critères personnels. Cette approche centrée sur l'utilisateur renforce l'engagement et améliore l'expérience globale.

## Chapitre 3: Évaluations

### Évaluations Implémentées

L'évaluation de l'application s'est concentrée sur la performance, l'exactitude des données, et la satisfaction utilisateur. Des tests de performance ont été réalisés pour s'assurer que l'application répond rapidement aux requêtes de scan. L'exactitude des informations fournies a été vérifiée contre des sources externes pour garantir la fiabilité des données. Enfin, des enquêtes de satisfaction utilisateur ont aidé à recueillir des retours sur l'expérience d'utilisation, permettant d'identifier les domaines d'amélioration.

## Chapitre 4: Techniques

### Quoi et Comment

EthiScan implémente un système de scan de code-barres qui identifie les produits et récupère des informations à partir de bases de données externes via des API. L'application traite ces données pour afficher les informations pertinentes aux utilisateurs, telles que les labels, l'évolution des prix, et l'impact carbone.

## Problèmes Rencontrés et Solutions

Un défi a été l'optimisation du temps de réponse pour le scan de produits. Cela a été résolu en optimisant les requêtes de base de données et en utilisant un cache pour stocker les données des produits fréquemment scannés.

## Conclusion Technique

La combinaison de Flutter et Firebase a prouvé son efficacité pour développer une application mobile performante et réactive. L'architecture choisie a permis une mise en œuvre rapide des fonctionnalités tout en maintenant une haute qualité et fiabilité des données.

## Auto-Critique du Code

Points Positifs :

Code bien structuré et commenté, facilitant la maintenance et les mises à jour.
Utilisation efficace des patterns de conception pour une architecture solide.

Points à Améliorer :

Couverture des tests unitaires à augmenter pour assurer une meilleure stabilité.
Optimisation possible de certaines requêtes de données pour accélérer les temps de réponse.
