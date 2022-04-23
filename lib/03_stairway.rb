def game
    win = 0
    number_turns = 0
    while win < 10
        roll_dice = rand(1..6)
        if roll_dice == 5 || roll_dice == 6
            win += 1
            puts "Tu est à la marche numéro #{win}"
        elsif roll_dice == 1
            win -= 1 if win > 0
            puts "Tu est à la marche numéro #{win}"
        else
            puts "Tu est à la marche numéro #{win}"
        end

        # Incrémente le nombre de tour
        number_turns += 1
    end
    
    puts "Félécitation, tu as gagné !!"
    return number_turns
end

def average_finish_time
    # Stock le nb de tour par jeux dans le tableau tab
    tab = []
    for i in 1..100
        tab << game
    end

    # Calcule du nombre total de tour
    total_turns = 0
    tab.each {|i| total_turns += i}

    # Calcule de la moyenne
    average_turns = total_turns / 100
    puts "Le nombre moyen de tour est de #{average_turns}"
end

average_finish_time

