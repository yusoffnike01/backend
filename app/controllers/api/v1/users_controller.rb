 module Api
    module V1
        class UsersController<ApplicationController
            def index
                users= User.order('id DESC');
                render json:{status: 'SUCCESS', message: 'Loaded User', data:users},status: :ok
            end
            def show
                users=User.find(params[:id])
                render json:{status: 'SUCCESS', message: 'User By ID', data:users},status: :ok
            end
            def create
                users=User.new(user_param)
                if users.save
                    render json:{status: 'SUCCESS', message: 'Save Data User', data:users},status: :ok
                else
                    render json:{status: 'ERROR', message: 'Data User not save', data:users.errors},status: :unprocessable_entity
                
                end
            end

            def destroy
                users=User.find(params[:id])
                users.destroy
                render json:{status: 'SUCCESS', message: 'Delete Data User'},status: :ok


            end
            def update
                users=User.find(params[:id])
                if users.update(:username=> params[:username], :name=> params[:name], :email=>[:email], :password=>[:password], :role_id=>[:role_id])
                    render json:{status: 'SUCCESS', message: 'Update Data User', data:users},status: :ok
                else
                    render json:{status: 'ERROR', message: 'Data User not save', data:users.errors},status: :unprocessable_entity
              
                end
            end

            private 
            def user_param
                params.permit(:username, :name, :email, :password, :role_id )
            end
        end

    end 
end