require 'test_helper'
class EnquiryTest < ActiveSupport::TestCase 
  test "Should Register Spam Words" do
    enquiry = Enquiry.new
    
    enquiry.comment = "Test Text, no spam"
    assert !enquiry.IsCommentSpam, "No spam phrases in text"
    
    enquiry.comment = "drug Test Text"
    assert enquiry.IsCommentSpam, "Spam at start of comment"
    
    enquiry.comment = "DRUG"
    assert enquiry.IsCommentSpam, "Is check case insensitive"

    enquiry.comment = "Test Text drug"
    assert enquiry.IsCommentSpam, "Spam at end of comment"
    
    enquiry.comment = "Test drug Text"
    assert enquiry.IsCommentSpam, "Spam in middle of comment"

    enquiry.comment = "TestdrugText"
    assert enquiry.IsCommentSpam, "Spam in middle of comment, run together"

    enquiry.comment = '<a href="http://example.com">Something</a>'
    assert enquiry.IsCommentSpam, "Spam as hyperlink"
    
    enquiry.comment = "casino Text"
    assert enquiry.IsCommentSpam, "Different spam word"
    

    
    
  end
end