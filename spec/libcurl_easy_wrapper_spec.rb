require 'rubygems'
require 'spec'
require File.dirname(__FILE__) + '/../lib/curb_ffi/libcurl_easy_wrapper'

Easy = CurbFfi::Curl::Easy

describe "CurbFfi::Curl::Easy" do
  it "should respond to global init" do
    Easy.should respond_to(:global_init)
  end

  it "should respond to init" do
    Easy.should respond_to(:init)
  end

  it "should respond to cleanup" do
    Easy.should respond_to(:cleanup)
  end

  it "should respond to setopt" do
    Easy.should respond_to(:setopt)
  end

  it "should respond to perform" do
    Easy.should respond_to(:perform)
  end

  it "should respond to strerror" do
    Easy.should respond_to(:strerror)
  end
end
