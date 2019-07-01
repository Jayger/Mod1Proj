# using a global variable to keep track of the current user
$current_user = nil
# $current_char = nil

################# WELCOME ###################
def welcome_menu
    prompt = TTY::Prompt.new
    puts"( ﾉ ﾟｰﾟ)ﾉ☀️  Welcome to Weeb Favorites! ☀️ヽ(ﾟｰﾟヽ)"
    new = prompt.select("Before making modifications, please create a name:", ["Create", "View Duo List", "Modifications", "Exit"])

    case new

    when 'Create'
        create
        chosen_char

    when 'View Duo List'
        find_all_duo

    when 'Modifications'
        mods

    when 'Exit'
        close_app  
    end 
end

def mods
    prompt = TTY::Prompt.new
    new_s = prompt.select("To modify or find make a selection, or exit:", ["Find Duo", "Delete Duo", "Update Duo", "Exit"])

    case new_s

    when 'Find Duo'
        find_duo

    when 'Delete Duo'
        delete_menu

    when 'Update Duo'
        update_favor

    when 'Exit'
        close_app  
    end 

end


# def sign_in
#     prompt = TTY::Prompt.new
#     user_name = prompt.ask("Enter Username to log in:") do |q|
#         q.required true
#         q.validate /\A\w+\Z/
#     end
    
############## FIND & UPDATE #################

def update_favor
    puts "What would you like to change your Duo team name to:"
    team_n = gets.chomp
    new_up = find_i(team_n)
    if (new_up != nil)
        puts "What would you like to change the name to?"
        new_n = gets.chomp
        new_up.update(name: new_n)
        puts "Name: #{new_up.name}"
        
    else 
        puts "Sorry, this team no longer exists!"
    end
    mods
end

def find_duo
    puts "\nTo find your favorite please enter your Duo team name:"
    find_duon = gets.chomp
    findn = find_i(find_duon) 
    if (findn != nil)
        puts "Name: #{findn.name}
              User: #{findn.user.name}
              AnimeChar: #{findn.anime_char.name} \n"
    else
    puts "Sorry, that team doesn't Exist!"
    end
    mods
end

def find_i(input)
    Duo.find_by(name: input)
end

def find_all_duo
    Duo.all.each do |d|
        puts d.name
    end
    welcome_menu
end




############# CREATE & CHOOSE #################
def create
    puts "Please create a username:\n"
    user_name = gets.chomp
    $current_user = create_username(user_name)
    puts "Congrats #{$current_user.name}! Welcome to Weeb Favorites!\n"
end


def create_username(name)
    User.create(name: name) 
end


def create_new_char(name, anime)
    AnimeChar.create(name: name, anime: anime)   
end 

def chosen_char
    puts "Please enter your a favorite anime character: "
    enter_char = gets.chomp

    puts "Very nice choice! What anime are they from?"
    enter_anime = gets.chomp

    puts "OMG I love that anime also! 10 points for you!\n"
    new_char = create_new_char(enter_char, enter_anime)

    puts "Choose a name for your Duo team:"
    new_name = gets.chomp
    $current_user.create_new_duo(new_name, new_char)

    puts "Your Duo's Team name is #{new_name}, and it has been saved to our database."
    mods
end

############### DELETE ###############
def delete_menu
    deletesuccessful = nil
    while (deletesuccessful.nil?)
        puts "Which Duo would you like to delete?(enter your Duo name)"
        delete_name = gets.chomp
        deletesuccessful = delete_d(delete_name)
        if deletesuccessful.nil?
            puts "There's no duo by that name to delete"
        end
    end
    puts "Sorry to see them go D:"
   mods
end


def delete_d(deleted_name)
    char = Duo.find_by(name: deleted_name)
    if (char != nil)
        char.delete
    else
        return nil
    end

end


############ CLOSE ###############
def close_app
    abort("See ya later!")
end

############ RUN #################
def run 
    welcome_menu
end
