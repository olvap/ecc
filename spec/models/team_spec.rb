require 'spec_helper'

describe Team do
  subject { build(:team) }

  describe "validations" do
    it { should validate_presence_of(:name) }
  end
end
