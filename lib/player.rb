class Player
  attr_accessor :name, :life_points

  def initialize(name)
    @name = name
    @life_points = 10  # Par défaut, tous les joueurs commencent avec 10 points de vie
  end

  def show_state
    "#{@name} a #{@life_points} points de vie"
  end

  def gets_damage(damage)
    @life_points -= damage
    if @life_points <= 0
      puts "Le joueur #{@name} a été tué !"
    end
  end

  def attacks(player)
    puts "#{@name} attaque #{player.name}"
    damage = compute_damage
    player.gets_damage(damage)
    puts "Il lui inflige #{damage} points de dommages"
  end

  private

  def compute_damage
    rand(1..6)  # Calcul des dommages aléatoires entre 1 et 6
  end
end
