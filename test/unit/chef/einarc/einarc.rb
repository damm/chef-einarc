require 'minitest/spec'
require 'minitest/autorun'

describe_recipe 'chef-einarc::default' do
  include MiniTest::Chef::Assertions
  include MiniTest::Chef::Context
  include MiniTest::Chef::Resources

  describe "it should have smartmontools installed" do
    it "should have smartmon tools" do
      file("/usr/sbin/smartctl").must_exist
    end
  end
end
