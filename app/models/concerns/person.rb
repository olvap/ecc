# -*- encoding : utf-8 -*-
module Person
  extend ActiveSupport::Concern

  included do
    attr_accessible :address, :phone, :cel_phone, :church, :email, :health_obs, :name, :nickname
    validates_presence_of :name
    validates_format_of :name, with: /.*\s{1}da{1}\s{1}.*/, message: "verifique o formato, exemplo: Carlos da Clotilde"
    default_scope order(:name)
  end

  def wife_full_name
    wife_name + " do " + husband_name
  end

  def husband_full_name
    husband_name + " da " + wife_name
  end

  def wife_name
    nickname.blank? ? wife(name) : wife(nickname) + " (" + wife(name) + ")"
  end

  def husband_name
    nickname.blank? ? husband(name) : husband(nickname) + " (" + husband(name) + ")"
  end

  def husband(naming)
    naming.split(" da ")[0]
  end

  def wife(naming)
    naming.split(" da ")[1]
  end
end
