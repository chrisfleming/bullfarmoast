class Enquiry < ActiveRecord::Base
  validate :some_contact_details
  validate :some_name_fields
  
  def some_contact_details
    if self.phone == "" && self.email == ""
      errors.add(:phone, "Please Supply a Phone Number or E-mail address") 
    end
  end

  def some_name_fields
    if self.firstname == "" && self.surname == ""
      errors.add(:firstname, "Please Supply a Phone Number or E-mail address") 
    end
  end
  
  
  def IsCommentSpam()
    # Original PHP code
    # $bannedlist = array("phentermine", "xenical", "paxil", "xanax", "meridia","<a href", "drug", "diazepam", "casino", "pussy", "fuck", "lesbian", "Hello, nice site look this", "Erotic", "anal", "tit", "http\:\/\/", "Hydrocodone", "prescription", "Good site, admin."  );
    #foreach ($bannedlist as $word) {
    #if ( preg_match("/.*$word.*/",  $_REQUEST['comments'] ) ) {
    #  $notspam = 0;
    #}
    #}
    
    banned_words = ["phentermine", "xenical", "paxil", "xanax", "meridia","<a href", "drug", "diazepam", "casino", "pussy", "fuck", "lesbian", "Hello, nice site look this", "Erotic", "anal", "tit", "http\:\/\/", "Hydrocodone", "prescription", "Good site, admin." ]
    r =  banned_words.join('|') 
    
    return self.comment =~ /#{r}/i  
  
  end
end
