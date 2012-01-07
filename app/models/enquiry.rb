class Enquiry < ActiveRecord::Base
  
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
