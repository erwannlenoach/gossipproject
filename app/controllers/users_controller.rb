class UsersController < ApplicationController


    def index
      @users = User.all
    end 

    def show
      @user = User.find(params[:id])
    end

    def new
      @user = User.new
      @cities = City.all
    end
  
    def create_params
      params.permit(:first_name, :last_name, :email, :password)
    end 

   def create

    #1ère étape : on prépapre la nouvelle instance 

    @user = User.new(first_name: create_params[:first_name],
                    last_name: create_params[:last_name],
                    email: create_params[:email],
                    password: create_params[:password])


    #2ème étape: save & redirect

       if @user.save
      helpers.log_in(@user)
      redirect_to gossips_path
      flash[:success] = "Bienvenue #{@user.first_name} !"
        else
       flash.now[:danger] = 'Invalid email/password combination'

       render 'new'
       return 
      end 
    end
  

  end 