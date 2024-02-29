# Cahier des Charges : EthiScan
## 1. Introduction

**EthiScan** est une application mobile conçue pour permettre aux utilisateurs de scanner des produits et de recevoir des informations détaillées alignées avec leurs valeurs personnelles de consommation. Elle vise à promouvoir une consommation responsable en fournissant des données telles que l'évolution du prix, les labels environnementaux et nutritionnels, l'impact carbone, et plus encore.

## 2. Objectifs du Projet

L'application a pour but de :

- Aider les utilisateurs à faire des choix de consommation éclairés et responsables.
- Fournir des informations détaillées et fiables sur les produits scannés.
- Promouvoir les achats alignés avec les valeurs personnelles des utilisateurs, comme le bio, le local, la qualité, le prix, l'impact carbone, la durabilité de l'emballage, et la possibilité de livraison par la poste.

## 3. Fonctionnalités Principales

### 3.1 Scan de Produit

- Permettre le scan de codes-barres pour identifier rapidement les produits.

### 3.2 Liste des Produits Favoris

- Possibilité d'ajouter des produits à une liste de favoris pour un accès rapide.

### 3.3 Préférences d'Achat

- Configuration de préférences d'achat personnalisées : Local, Bio, Qualité, Prix, Impact carbone, Durabilité de l'emballage, Livrable par la poste.

### 3.4 Sections Détaillées des Métadonnées

- **Labels** : Affichage des labels et certifications (éco-labels, bio, etc.).
- **Évolution du Prix** : Visualisation de l'évolution du prix chez différents fournisseurs.
- **Impact Carbone** : Information sur l'empreinte carbone du produit.
- **Certifications** : Détail des certifications obtenues par le produit.
- **Metadata** : Informations générales (nom du produit, lien vers plus d'infos).
- **Score Nutritionnel** : Score basé sur des données fiables comme Yuca.

## 4. Stack Technologique

- **Front-end** : Flutter pour une expérience utilisateur cohérente sur iOS, Android et le Web.
- **Back-end** : Firebase pour l'authentification, le stockage des données, et les fonctions backend.

## 5. Méthode de Travail

Le développement suivra une méthode Agile/Scrum avec des sprints bi-hebdomadaires, permettant une adaptation rapide aux retours des utilisateurs et aux évolutions du marché. Les pratiques de CI/CD seront implémentées pour assurer une intégration et un déploiement continus de l'application.

## 6. Spécifications Techniques

### 6.1 Exigences Fonctionnelles

- Authentification sécurisée des utilisateurs.
- Interface intuitive pour le scan de produits et l'affichage des informations.
- Système de favoris et de préférences personnalisables.
- Intégration d'APIs externes pour la récupération des données produits.

### 6.2 Exigences Non-Fonctionnelles

- Performances : Temps de réponse rapide pour le scan et l'affichage des données.
- Sécurité : Protection des données utilisateurs et des informations de connexion.
- Accessibilité : Conception inclusive pour une utilisation facile par tous.

## 7. Plan de Développement

Le développement sera découpé en plusieurs phases :

1. **Phase 1** : Conception de l'interface utilisateur et du parcours utilisateur.
2. **Phase 2** : Implémentation de la fonctionnalité de scan et de la base de données produits.
3. **Phase 3** : Développement des sections détaillées des métadonnées des produits.
4. **Phase 4** : Test utilisateur et ajustement en fonction des retours.
5. **Phase 5** : Lancement de la version bêta et collecte de feedback pour itérations futures.

## 8. Conclusion

**EthiScan** ambitionne de devenir une référence pour les consommateurs souhaitant aligner leurs achats avec leurs valeurs personnelles. Par la transparence et la fourniture d'informations détaillées, l'application vise à promouvoir une consommation plus responsable et éclairée.