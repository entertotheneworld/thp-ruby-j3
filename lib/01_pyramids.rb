def main 
    puts "-----------------"
    tab = ["Half pyramid", "Full pyramid", "WTF pyramid"]
    tab.each_with_index {|op,i| puts "#{i+1}. #{op}"}
    puts "-----------------"
    choice = 0
    while choice < 1 || choice > 3
        puts "Entrez votre choix"
        choice = gets.chomp.to_i
    end
    return choice
end

def instruction
    puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
    user_number = gets.chomp.to_i
    while user_number < 1 || user_number > 25
        puts "ERREUR, ton nombre n'est pas compris entre 1 et 25\n Essaye encore:"
        user_number = gets.chomp.to_i
    end
    return user_number
end

def half_pyramid(user_number)
    spaces_number = user_number - 1
    puts "Voici la pyramide"
    for i in 1..user_number do
        print " " * spaces_number
        puts "#" * i
        spaces_number -= 1
    end
end

def full_pyramid(user_number)
    block_number = 1
    spaces_number = user_number - 1
    puts "Voici la pyramide"
    for i in 1..user_number do
        print " " * spaces_number
        puts "#" * block_number
        block_number += 2
        spaces_number -= 1
    end
end

def wtf_pyramid
    puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
    user_number = gets.chomp.to_i
    while user_number < 1 || user_number > 25 || user_number.even?
        puts "ERREUR, ton nombre n'est pas compris entre 1 et 25 ou n'est pas impair\n Essaye encore:"
        user_number = gets.chomp.to_i
    end
    


    first_part = user_number.to_f/2 

    block_number = 1
    spaces_number = user_number - 1
    puts "Voici la pyramide"

    for i in 1..first_part.round(half: :down) do
        print " " * spaces_number
        puts "#" * block_number
        block_number += 2
        spaces_number -= 1
    end


    for i in first_part.round(half: :up)..user_number do
        print " " * spaces_number
        puts "#" * block_number
        block_number -= 2
        spaces_number += 1
    end

end

def perform
    choice = main
    if choice == 1   
        user_number = instruction
        half_pyramid(user_number)
    elsif choice == 2
        user_number = instruction
        full_pyramid(user_number)
    elsif choice == 3
        wtf_pyramid
    end
end

perform