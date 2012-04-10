# encoding: UTF-8
require 'spec_helper'

describe Makenewsmail::Client do
  it "should get not authenticated" do
    make = Makenewsmail::Client.new("test","test")
    response = make.get_lists()
    
    response.body.should match(/Not authenticated/)
  end
end