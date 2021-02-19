module Api
    module V1
        class InfoammoniaController<ApplicationController
            def index 
            info=DetailAmmonium.order('id DESC')
            render json:{status: 'SUCCESS', message: 'Loaded User', data:info},status: :ok
            end

            def show
                info=DetailAmmonium.find(params[:id])
                render json:{status: 'SUCCESS', message: 'Loaded Data by ID', data:ammonia},status: :ok
            end
            
            def create
                info=DetailAmmonium.create(detail_params)
                if info.save
                    render json:{status: 'SUCCESS', message: 'Save Data', data:info},status: :ok
                else
                    ender json:{status: 'ERROR', message: 'Data  not save', data:info.errors},status: :unprocessable_entity
                end
            end

            def update
                info=DetailAmmonium.find(params[:id])
                if info.update(:level=>params[:level])
                    render json:{status: 'SUCCESS', message: 'Update Data', data:info},status: :ok
                else
                    ender json:{status: 'ERROR', message: 'Update Failed', data:info.errors},status: :unprocessable_entity
                end

            end

            def destroy
                info=DetailAmmonium.find(params[:id])
                if info.destroy
                    render json:{status: 'SUCCESS', message: 'Deleted Data', data:info},status: :ok
                else
                    ender json:{status: 'ERROR', message: 'Delete Failed', data:info.errors},status: :unprocessable_entity
                end


                

            private 
            def detail_params
                params.permit(:level)
            end

        end
    end
end
