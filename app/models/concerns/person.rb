# -*- encoding : utf-8 -*-
module Person
  extend ActiveSupport::Concern

  included do
    attr_accessible :address, :phone, :cel_phone, :church, :email, :health_obs, :name
    validates_presence_of :name
    validates_format_of :name, with: /[a-zA-Z]+\s{1}da{1}\s{1}[a-zA-Z]+/, message: "verifique o formato, exemplo: Carlos da Clotilde"
    default_scope order(:name)
  end

  def wife_name
    arr = name.split(" da ")
    arr[1] + " do " + arr[0]
  end
end