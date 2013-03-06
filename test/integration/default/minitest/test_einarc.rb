require 'minitest/autorun'

class EinarcTest < MiniTest::Unit::TestCase
  def test_smartctl_exists
    assert File.exist?('/usr/sbin/smartctl')
  end

  def test_smartd_exists
    assert File.exist?('/usr/sbin/smartd')
  end

  def test_einarc_exists
    assert File.exist?('/usr/local/bin/einarc')
  end
end
