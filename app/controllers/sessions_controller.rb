class SessionsController < ApplicationController

  
    
    def create
            # cherche s'il existe un utilisateur en base avec l’e-mail
      user = User.find_by(email: params[:email])
            # on vérifie si l'utilisateur existe bien ET si on arrive à l'authentifier (méthode bcrypt) avec le mot de passe 
            if user && user.authenticate(params[:password])
              session[:user_id] = user.id 
              redirect_to pages_welcome_path, :success => "Connexion réussie"
            else
              redirect_to sessions_path, :danger => "Combinaison email/mot de passe erronée !"
            end
          
    end

end
