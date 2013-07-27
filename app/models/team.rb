# == Schema Information
#
# Table name: teams
#
#  id         :integer          not null, primary key
#  address    :string(255)
#  phone      :string(255)
#  cel_phone  :string(255)
#  email      :string(255)
#  church     :string(255)
#  health_obs :text
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

# -*- encoding : utf-8 -*-
class Team < ActiveRecord::Base
  include Person
end
