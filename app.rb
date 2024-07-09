# # app.rb
# require 'bundler'
# Bundler.require

# require_relative 'lib/game'
# require_relative 'lib/player'

# binding.pry  # Démarre une session de débogage ici

require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

# Création des joueurs
player1 = Player.new("Josiane")
player2 = Player.new("José")

puts "Voici l'état de nos joueurs :"
puts player1.show_state
puts player2.show_state

puts "\nPassons à la phase d'attaque :"

# Boucle de combat
while player1.life_points > 0 || player2.life_points > 0
  player1.attacks(player2)

  # Vérification si player2 est mort après l'attaque de player1
  if player2.life_points <= 0
    break
  end

  player2.attacks(player1)

  # Vérification si player1 est mort après l'attaque de player2
  if player1.life_points <= 0
    break
  end

  # Affichage de l'état des joueurs après chaque tour d'attaques
  puts "\nVoici l'état de nos joueurs :"
  puts player1.show_state
  puts player2.show_state

  puts "\nPassons à la phase d'attaque :"
end
