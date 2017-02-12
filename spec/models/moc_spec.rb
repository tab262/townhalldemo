require 'rails_helper'

describe Moc do
  before { @user = FactoryGirl.build(:moc) }

  subject { @user }

  it { should respond_to(:name) }
  it { should respond_to(:party) }

  it { should be_valid }
end
