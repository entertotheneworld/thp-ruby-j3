def signup
    puts "---------SIGNUP--------"
    puts "Entrez un mot de passe :"
    return password = gets.chomp
end

def login(password)
    puts "---------LOGIN--------"
    puts "Entrez votre mot de passe"
    login = gets.chomp
    while login != password
        puts "Le mot de passe saisie n'est pas le bon, reesayé:"
        login = gets.chomp
    end
end


def welcome_screen
    puts "---------DASHBOARD--------"
    puts "Welcome in your dashboard"
end


def perform
    password = signup
    login(password)
    welcome_screen
end


perform