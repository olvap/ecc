# -*- encoding : utf-8 -*-
class Participant < ActiveRecord::Base
  include Person
  attr_accessible :children, :couple, :full_name
  validates_presence_of :full_name, :couple
end
