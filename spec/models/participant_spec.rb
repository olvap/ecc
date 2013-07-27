require 'spec_helper'

describe Participant do

  subject { build(:participant) }

  describe "validations" do
    [:name, :full_name, :couple].each do |attr|
      it { should validate_presence_of(attr) }
    end
  end

end
