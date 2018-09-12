require 'rails_helper'

describe Consumable do
  it { should have_many :inventories }
end
