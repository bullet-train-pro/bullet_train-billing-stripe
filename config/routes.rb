Rails.application.routes.draw do
  # TODO: The linter complains about a useless assignment. Do we actually need this for anything?
  collection_actions = [:index, :new, :create] # standard:disable Lint/UselessAssignment

  namespace :webhooks do
    namespace :incoming do
      resources :stripe_webhooks
    end
  end

  namespace :account do
    shallow do
      resources :teams, only: [] do
        namespace :billing do
          resources :subscriptions, only: [] do
            namespace :stripe do
              resources :subscriptions do
                member do
                  post :checkout
                  get :checkout
                  post :portal
                  get :refresh
                end
              end
            end
          end
        end
      end
    end
  end
end
