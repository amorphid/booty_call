require "spec_helper"

describe BootyAddress do
  it { should validate_presence_of(:street1) }
  it { should validate_presence_of(:city)    }
  it { should validate_presence_of(:state)   }
  it { should validate_presence_of(:zip)     }
end
