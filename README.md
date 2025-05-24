# .gitworkflow

## Description

`.gitworkflow` est un outil d'automatisation GitHub qui synchronise un ensemble standardisé d'étiquettes (labels) sur vos repositories GitHub. Il est conçu pour maintenir une cohérence visuelle et fonctionnelle à travers tous vos projets en appliquant automatiquement un ensemble prédéfini d'étiquettes au dernier repository créé.

## Fonctionnalités

- **Synchronisation automatique des étiquettes** : Applique automatiquement un ensemble standardisé d'étiquettes au dernier repository GitHub créé.
- **Exécution programmée** : S'exécute automatiquement chaque jour à 19h15 ou peut être déclenché manuellement.
- **Optimisation des performances** : Ne traite que le repository le plus récemment créé et ignore ceux qui ont déjà toutes les étiquettes requises.
- **Gestion intelligente des étiquettes** : Supprime les étiquettes obsolètes et ajoute uniquement les nouvelles étiquettes manquantes.
- **Personnalisation facile** : Configuration simple via un fichier JSON pour définir vos propres étiquettes.

## Étiquettes prédéfinies

Le workflow inclut un ensemble complet d'étiquettes prédéfinies pour différents types de contributions :

- 🛠️ Chore : Maintenance ou tâches techniques
- ✨ Feature : Nouvelle fonctionnalité ou amélioration
- 🐛 Fix : Correction de bugs ou d'erreurs
- 🚑 Hotfix : Corrections urgentes en production
- ♻️ Refactor : Réorganisation ou optimisation du code
- 🚀 Release : Livraison d'une version stable
- 📦 Update : Mises à jour ou modifications générales
- ⚙️ CI/CD : Changements liés à l'intégration continue et au déploiement
- Et bien d'autres...

## Installation

1. **Cloner ce repository** :
   ```bash
   git clone https://github.com/votre-username/.gitworkflow.git
   ```

2. **Configurer le token GitHub** :
   - Créez un token GitHub avec les permissions `repo` complètes
   - Ajoutez ce token comme secret dans votre repository sous le nom `LABELGITHUB_TOKEN`

3. **Personnaliser les étiquettes (optionnel)** :
   - Modifiez le fichier `.github/config/labels.json` selon vos besoins

## Utilisation

### Exécution automatique

Le workflow s'exécute automatiquement chaque jour à 19h15 pour synchroniser les étiquettes sur votre repository le plus récemment créé.

### Exécution manuelle

Vous pouvez également déclencher le workflow manuellement :

1. Accédez à l'onglet "Actions" de votre repository GitHub
2. Sélectionnez le workflow "Synchronisation des Labels sur le Dernier Repo Créé"
3. Cliquez sur "Run workflow"

## Configuration

Vous pouvez personnaliser les étiquettes en modifiant le fichier `.github/config/labels.json`. Chaque étiquette est définie avec les propriétés suivantes :

```json
{
  "name": "Nom de l'étiquette",
  "description": "Description de l'étiquette",
  "color": "code couleur hexadécimal sans #"
}
```

## Exemple de configuration

```json
[
  { "name": "🐛 Bug", "description": "Quelque chose ne fonctionne pas", "color": "d73a4a" },
  { "name": "📚 Documentation", "description": "Améliorations ou ajouts à la documentation", "color": "0075ca" }
]
```

## Contribution

Les contributions sont les bienvenues ! N'hésitez pas à ouvrir une issue ou à soumettre une pull request pour améliorer ce projet.

## Licence

Ce projet est libre d'utilisation.
