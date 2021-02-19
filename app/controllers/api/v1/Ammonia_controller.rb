module Api::V1
        class AmmoniaController<ApplicationController
            def index
                ammonia= Ammonium.order('id DESC');
                
                render json:{status: 'SUCCESS', message: 'Loaded User', data:ammonia},status: :ok
            end
            def show 
                ammonia=Ammonium.find(params[:id])
                render json:{status: 'SUCCESS', message: 'Loaded Data Ammonia', data:ammonia},status: :ok
            end
            def create 
                ammonia=Ammonium.new(ammonia_params)
                if ammonia.save
                    render json:{status:'SUCCESS', message:'Save Data', data:ammonia},status: :ok
                else
                    render json:{status:'Fail', message:'Save Data', data:ammonia.errors},status: :unprocessable_entity
                end
            end

            def update
                ammonia=Ammonium.find(params[:id])
                if ammonia.update(:location=>params[:location])
                    render json:{status:'SUCCESS', message:'Update Data', data:ammonia},status: :ok
                else
                    render json:{status:'Fail', message:'Fail Data', data:ammonia.errors},status: :unprocessable_entity
                end
            end

            def destroy
                ammonia=Ammonium.find(params[:id])
                if ammonia.destroy
                    render json:{status:'SUCCESS', message:'Delete Data', data:ammonia},status: :ok
                else
                    render json:{status:'Fail', message:'Fail Data', data:ammonia.errors},status: :unprocessable_entity
                end
            end  


            private
            def ammonia_params
                params.permit(:role_id, :ID_device,:location)
            end
        end  
end