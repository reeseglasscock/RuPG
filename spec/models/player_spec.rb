require 'rails_helper'

describe Player do
  it { should have_many :inventories}
  it { should have_many(:weapons).through(:inventories)}
  it { should have_many(:spells).through(:inventories)}
  it { should have_many(:armors).through(:inventories)}
  it { should have_many(:consumables).through(:inventories)}
end
