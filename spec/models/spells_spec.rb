require 'rails_helper'

describe Spell do
  it { should have_many :inventories }
end
