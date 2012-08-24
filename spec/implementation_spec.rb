require 'spec_helper'
require_relative '../implementation'

describe Implementation do
  it 'can be created'  do
    Implementation.new.should_not be_nil
  end
  
  it 'tests the tested method' do
    implementation = Implementation.new
    implementation.tested.should == 'tested'
  end
end
