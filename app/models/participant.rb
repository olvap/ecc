# == Schema Information
#
# Table name: participants
#
#  id         :integer          not null, primary key
#  address    :string(255)
#  phone      :string(255)
#  cel_phone  :string(255)
#  email      :string(255)
#  church     :string(255)
#  couple     :string(255)
#  health_obs :text
#  children   :integer
#  name       :string(255)
#  full_name  :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  nickname   :string(255)
#

# -*- encoding : utf-8 -*-
class Participant < ActiveRecord::Base
  include Person
  attr_accessible :children, :couple, :full_name
  validates_presence_of :full_name, :couple, :nickname
  validates_format_of :nickname, with: /[a-zA-Z]+\s{1}da{1}\s{1}[a-zA-Z]+/, message: "verifique o formato, exemplo: Tchuco da Tchuca"

  def full_name

    nickname + " (" + name + ")"
  end

end
