module Api
    module V1
        class DetailAmmoniumController<ApplicationController
            def index
                details=DetailAmmonium.order('id DESC')
                render json:{status: 'SUCCESS', message: 'Loaded Detail Ammonia', data:details},status: :ok
            end

            def show
                details=DetailAmmonium.find(params[:id])
                render json:{status: 'SUCCESS', message: 'Details By ID', data:detail},status: :ok
            end
        end
    end
end

