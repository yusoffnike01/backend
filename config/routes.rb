Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace 'api' do
    namespace 'v1' do
      resources:users
      resources:role
      resources:information_ammonia
      resources:ammonia
      resources:counter
      resources:detail_counter
      resources:info_counter
      resource:detail_ammonia
  
    end
  end 
end
