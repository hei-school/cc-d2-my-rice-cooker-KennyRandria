# frozen_string_literal: true

def show_menu
  puts 'Bienvenue dans le Rice Cooker !'
  puts 'Choisissez une option :'
  puts '1. Faire cuire le riz'
  puts '2. Maintenir au chaud'
  puts '3. Arrêt automatique après cuisson'
  puts '4. Quitter'
end

def user_choice
  print 'Entrez le numéro de votre choix : '
  gets.to_i
end

def execute_action(choice)
  case choice
  when 1
    cook_rice
  when 2
    keep_warm
  when 3
    auto_stop
  else
    puts 'Option non valide. Veuillez sélectionner une option valide.'
  end
end

def main
  show_menu
  choice = get_user_choice
  while choice != 4
    execute_action(choice)
    show_menu
    choice = get_user_choice
  end
  quit
end

main
