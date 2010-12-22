require File.join(File.dirname(__FILE__), '../../test_helper.rb')

class ContactTest < Test::Unit::TestCase
  include TestHelper
  
  def setup
    @client = Xeroizer::PublicApplication.new(CONSUMER_KEY, CONSUMER_SECRET)
    @contact = @client.Contact.build
  end
  
  context "contact validators" do
    
    should "have a name" do
      assert_equal(false, @contact.valid?)
      blank_error = @contact.errors_for(:name).first
      assert_not_nil(blank_error)
      assert_equal("can't be blank", blank_error[1])
      
      @contact.name = "SOMETHING"
      assert_equal(true, @contact.valid?)
      assert_equal(0, @contact.errors.size)
    end
    
  end
  
end