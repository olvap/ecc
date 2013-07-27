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
#

require 'spec_helper'

describe Participant do

  subject { build(:participant) }

  describe "validations" do
    [:name, :full_name, :couple].each do |attr|
      it { should validate_presence_of(attr) }
    end
  end

end
