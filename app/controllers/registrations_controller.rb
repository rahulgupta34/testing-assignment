class RegistrationsController < Devise::RegistrationsController
    def new
        super
    end
    
    def create
       @user = User.new(user_params)
       if @user.save
          redirect_to root_path
       else
         render :new
       end
    end
    private
    def user_params
        params.require(:user).permit(:email, :password, :password_confirmation, :role)
    end
end
