require 'rails_helper'

describe Weapon do
  it { should have_many :inventories }
end
