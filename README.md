Rails app generated with [lewagon/rails-templates](https://github.com/lewagon/rails-templates), created by the [Le Wagon coding bootcamp](https://www.lewagon.com) team.



Ceci est une application web qui affiche une liste de la première génération de Pokemon via l'API (https://mon-api-pokemon.vercel.app/api/v1/pokemon) et permet à l'utilisateur de sélectionner un ou plusieurs Pokemon, cette sélection de Pokémon sera exportable au format CSV.


<h2>Installation</h2>

Installez les dépendances Ruby en utilisant la commande suivante :
<code>bundle install</code>

Installez les dépendances JavaScript en utilisant la commande suivante :
<code>yarn install</code>

Créez la base de données, exécutez les migrations et chargez les données avec la commande suivante :
<code>rails db:create db:migrate db:seed</code>
 

<h2>Utilisation</h2>
Pour lancer l'application en mode développement, exécutez la commande suivante :
<code>rails s</code>
<br>ou <code>dev</code> si une erreur s'affiche

Ouvrez votre navigateur et allez à l'adresse http://localhost:3000 pour accéder à l'application.

Pour importer un fichier CSV de Pokemon, cliquez sur le bouton "Importer CSV"
