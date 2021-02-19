#  module Api
#     module V1
#         class  InformationAmmoniumController<ApplicationController
#             def index
#                 ammonia= InformationAmmonium.order('id DESC')
#                 render json:{status: 'SUCCESS', message: 'Loaded information Ammonia', data:ammonia},status: :ok
#             end
            
#         end
#     end
#  end