# -*- encoding : utf-8 -*-
module Person
  extend ActiveSupport::Concern

  included do
    attr_accessible :address, :phone, :cel_phone, :church, :email, :health_obs, :name
    validates_presence_of :name
    default_scope order(:name)
  end

  def wife_name
    arr = name.split(" da ")
    arr[1] + " do " + arr[0]
  end
end