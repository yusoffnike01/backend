module Api
    module V1
        class InfoCounterController<ApplicationController
            def index 
                info=InformationCounter.order('id DESC')
                render json:{status: 'SUCCESS', message: 'Loaded Detail  Info Counter', data:info},status: :ok
            end

            def show
                info=InformationCounter.find(params[:id])
                render json:{status: 'SUCCESS', message: 'Details By Info Counter', data:info},status: :ok
            end

            def create 
                info=InformationCounter.new(detail_param)
                if info.save
                    render json:{status: 'SUCCESS', message: 'Details By Info Counter', data:info},status: :ok
                else
                    render json:{status:'FAIL', message:'failed', data:info.errors}, status: :ok
                end
            end

            def update
                info=InformationCounter.find(params[:id])
                if info.update(:level_count=>params[level_count],:details=>params[details])
                    render json:{status: 'SUCCESS', message: 'Update By ID', data:info},status: :ok
                else
                    render json:{status:'FAIL', message:'failed', data:info.errors}, status: :ok
                end
            end

            def destroy
                info=InformationCounter.find(params[:id])
                if info.destroy
                    render json:{status: 'SUCCESS', message: 'Success Delete', data:info},status: :ok
                else
                    render json:{status:'FAIL', message:'failed', data:info.errors}, status: :ok
                end
            end


            private
            def detail_param
                params.permit(:level_count, :details)
            end
        end
    end
end