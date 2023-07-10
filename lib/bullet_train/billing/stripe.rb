require "bullet_train/billing/stripe/version"
require "bullet_train/billing/stripe/engine"

module BulletTrain
  module Billing
    module Stripe
      module Teams
        module Base
          extend ActiveSupport::Concern

          included do
            has_many :billing_stripe_subscriptions, class_name: "Billing::Stripe::Subscription", dependent: :destroy, foreign_key: :team_id
          end
        end
      end
    end
  end
end

def stripe_billing_enabled?
  ENV["STRIPE_SECRET_KEY"].present?
end

ActiveSupport.on_load(:bullet_train_teams_base) { include BulletTrain::Billing::Stripe::Teams::Base }
