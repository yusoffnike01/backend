module Api
    module V1
        class DetailCounterController<ApplicationController
            def index
                detail=DetailCounter.order('id DESC')
                render json:{status: 'SUCCESS', message: 'Loaded Detail Counter', data:detail},status: :ok
            end
            def show
                detail=DetailCounter.find(params[:id])
                render json:{status: 'SUCCESS', message: 'Details By ID', data:detail},status: :ok
            end

            def create
                detail=DetailCounter.new(detail_param)
                if detail.save
                    render json:{status: 'SUCCESS', message: 'Save Data detail Count', data:detail},status: :ok
                else
                    render json:{status: 'FAIL', message: 'Failed detail Count', data:detail.errors},status: :unprocessable_entity
                end

            end

            def update
                detail=DetailCounter.find(params[:id])
                if detail.update(:count=>params[:count])
                    render json:{status:'SUCCESS', message:'update sucessful', data:detail}, status: :ok
                else
                    render json:{status:'FAIL', message:'failed', data:counter.errors}, status: :ok
                end
            end

            def destroy
                detail=DetailCounter.find(params[:id])
                if detail.destroy
                    render json:{status:'SUCCESS', message:'Delete sucessful', data:detail}, status: :ok
                else
                    render json:{status:'FAIL', message:'failed', data:counter.detail}, status: :ok
                end
            end


            private
            def detail_param
                params.permit(:ID_Device, :count)
            end

        end
    end
end
