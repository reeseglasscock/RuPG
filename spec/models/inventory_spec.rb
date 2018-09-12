require 'rails_helper'

describe Inventory do
  it { should belong_to :player }
  it { should belong_to :armor }
  it { should belong_to :weapon }
  it { should belong_to :spell }
  it { should belong_to :consumable }
end
