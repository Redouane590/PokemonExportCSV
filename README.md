Rails app generated with [lewagon/rails-templates](https://github.com/lewagon/rails-templates), created by the [Le Wagon coding bootcamp](https://www.lewagon.com) team.



Ceci est une application web qui affiche une liste de la première génération de Pokemon via l'API (https://mon-api-pokemon.vercel.app/api/v1/pokemon) et permet à l'utilisateur de sélectionner un ou plusieurs Pokemon, cette sélection de Pokémon est exportable au format CSV.


<h2>Installation</h2>

Installez les dépendances Ruby en utilisant la commande suivante :
<code>bundle install</code>

Installez les dépendances JavaScript en utilisant la commande suivante :
<code>yarn install</code>

Exécutez les migrations et chargez les données avec la commande suivante :
<code>rails db:migrate db:seed</code>
 

<h2>Utilisation</h2>
Pour lancer l'application en mode développement, exécutez la commande suivante :
<code>rails s</code>
<br>si l'erreur: <i>The asset "application.js" is not present in the asset pipeline.</i> se présente,
<br> Soit pour pouvez lancer la commande <code>bin/dev</code>
<br>Soit vous pouvez lancer la commande <code>rails assets:precompile</code> suivi de la commande <code>rails s</code>
<br>
<br>
Ouvrez votre navigateur et allez à l'adresse http://localhost:3000 pour accéder à l'application.
<br><br>
<br><br>
Choisissez le ou les pokemon qui vous interresse.
<br> Vous pouvez avoir plus d'informations sur un pokemon en cliquant sur son bouton "voir plus"<br>
Pour importer un fichier CSV de Pokemon, cliquez sur le bouton "Importer CSV"


<br><br>
<h2>Ressources</h2>
<br>Voici les sites qui ont pu m'aider lors de la création de l'appli :
<br><br>https://www.twilio.com/fr/blog/5-facons-faire-requetes-http-ruby
<br>https://github.com/jnunemaker/httparty
<br>https://dev.to/gervanna/how-to-trim-whitespaces-in-ruby-strings-1o5e
<br>https://stackoverflow.com/questions/36812647/what-does-ampersand-dot-mean-in-ruby
<br>https://guides.rubyonrails.org/getting_started.html#mvc-and-you
<br>https://getbootstrap.com/docs/4.0/components/card/
<br>https://mon-api-pokemon.vercel.app/
<br>https://apidock.com/rails/ActionView/Helpers/FormTagHelper/check_box_tag
<br>https://www.rubyguides.com/2019/11/rails-flash-messages/
<br>https://blog.arkency.com/2017/07/nil-empty-blank-ruby-rails-difference/
<br>https://github.com/Casecommons/pg_search
<br>https://apidock.com/ruby/NilClass/to_a
<br>https://guides.rubyonrails.org/
<br>Les ressources sur Kitt lewagon
<br> et d'autres...
