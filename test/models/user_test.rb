require "test_helper"

class UserTest < ActiveSupport::TestCase
  test "reproduce bug" do
    # This signed_id is the one of the user with id 1 generated with rails 7.2.2
    signed_id = "eyJfcmFpbHMiOnsiZGF0YSI6MSwicHVyIjoidXNlciJ9fQ--f877715bc18e7cb6168425fdbefa81a3eb5eb6940b0c6a73e9a6bec952c9ab50"

    assert_nothing_raised do
      User.find_signed!(signed_id)
    end
  end
end
