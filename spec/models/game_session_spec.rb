require 'rails_helper'

describe GameSession do
  it { should belong_to :user }
  it { should belong_to :player }
  it { should belong_to :location }
end
