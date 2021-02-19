module Api
    module V1
        class RoleController<ApplicationController
            def index
                roles= Role.order('id DESC');
                render json:{status: 'SUCCESS', message: 'Loaded Role', data:roles},status: :ok
            end
            def show
                roles=Role.find(params[:id])
                render json:{status: 'SUCCESS', message: 'User By ID', data:roles},status: :ok
            end
            def create
                roles=Role.new(user_param)
                if roles.save
                    render json:{status: 'SUCCESS', message: 'Save Data roles', data:roles},status: :ok
                else
                    render json:{status: 'ERROR', message: 'Data Role not save', data:roles.errors},status: :unprocessable_entity
                
                end
            end

            def destroy
                roles=Role.find(params[:id])
                roles.destroy
                render json:{status: 'SUCCESS', message: 'Delete Data roles'},status: :ok

            end

            private 
            def user_param
                params.permit(:role_id)
            end
        end

    end 
end