require 'rails_helper'

RSpec.describe User do

  it { should have_many(:places) }
  
end
