require 'rails_helper'

describe Enemy do
  it { should belong_to :weapon }
  it { should belong_to :spell }
  it { should belong_to :armor }
  it { should belong_to :location }
end
