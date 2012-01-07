class Enquiry < ActiveRecord::Base
  
  def IsCommentSpam()
    # $bannedlist = array("phentermine", "xenical", "paxil", "xanax", "meridia","<a href", "drug", "diazepam", "casino", "pussy", "fuck", "lesbian", "Hello, nice site look this", "Erotic", "anal", "tit", "http\:\/\/", "Hydrocodone", "prescription", "Good site, admin."  );
    #foreach ($bannedlist as $word) {
    #if ( preg_match("/.*$word.*/",  $_REQUEST['comments'] ) ) {
    #  $notspam = 0;
    #}
    #}

    spam = false
    
    banned_words = ["phentermine", "xenical", "paxil", "xanax", "meridia","<a href", "drug", "diazepam", "casino", "pussy", "fuck", "lesbian", "Hello, nice site look this", "Erotic", "anal", "tit", "http\:\/\/", "Hydrocodone", "prescription", "Good site, admin." ]

    banned_words.each { |banned_word|
      if self.comment =~ /#{banned_word}/  
        spam = true
      end
        
    }
      
    return spam
    
  end
end
