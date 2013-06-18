require 'test_helper'

class GrievanceTest < ActiveSupport::TestCase
  test "should not save a post without content" do
    grievance = Grievance.new
    assert !grievance.save, "Saved without content"
  end

  test "should not save a post with more than 300 characters" do
    grievance = Grievance.new
    grievance.content = "1234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890
                         1234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890
                         1234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890"
    assert !grievance.save, "Saved with more than 300 characters"
  end
end
