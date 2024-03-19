require 'rails_helper'

RSpec.describe Place do

  it { should have_one_attached(:preview_img) }
  it { should belong_to(:author).class_name('User') }
  
end
