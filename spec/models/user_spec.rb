require 'spec_helper'
require_relative '../../models/user'

describe User do
  let(:first_name) { 'Fred'}
  let(:last_name) { 'Flintstone'}
  let(:email) { 'fred@example.com'}

  subject { User.new(first_name, last_name, :email => email) }

  it "#new" do
    subject.should be_an_instance_of User
  end

  it "should have an id " do
    subject.id.should =~ /User_\d/
  end

  it "should have a name" do
    subject.name.should == "#{first_name} #{last_name}"
  end

  it "#create" do
    user = User.create('Barack', 'Obama', :email => 'barack@example.com')
    user.name.should eq 'Barack Obama'
  end

  it "#all" do

  end
  
  it "#count" do
    User.delete_all
    
    5.times do |i|
      User.create("First_#{i}","Last_#{i}",:email => "tom_#{i}@example.com")
      # User.show_store
    end
    User.count.should eq 5
  end

  it '#find' do
    user = User.create('Barack', 'Obama', :email => 'barack@example.com')
    found_user = User.find(user.id)
    found_user.name.should eq 'Barack Obama'
  end

end
