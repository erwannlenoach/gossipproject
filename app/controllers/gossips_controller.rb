class GossipsController < ApplicationController



    def index
        # Méthode qui récupère tous les potins et les envoie à la view index (index.html.erb) pour affichage
        @gossips = Gossip.all
    end
    
    def show
        # Méthode qui récupère le potin concerné et l'envoie à la view show (show.html.erb) pour affichage
        @gossip = Gossip.find(params[:id])
    end


    def edit
    
        @gossip = Gossip.find(params[:id])
        
        # Méthode qui récupère le potin concerné et l'envoie à la view edit (edit.html.erb) pour affichage dans un formulaire d'édition
    end

    def update
     @gossip = Gossip.find(params[:id])
     @gossip.update(post_params)
     redirect_to gossip_path
    end

    def new
        @gossip = Gossip.new
        end
    
    def create
        @gossip = Gossip.create(
            user: current_user,
            title: post_params[:title],
            content: post_params[:content])

            redirect_to gossips_path
    end
    
    def post_params 
        post_params = params.require(:gossip).permit(:title, :content)
    end 

    def destroy
       @gossip = Gossip.find(params[:id])
       @gossip.destroy
       redirect_to gossips_path
    end

end 