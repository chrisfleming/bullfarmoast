class AccomodationEnquiry < ActionMailer::Base
  default from: "login@chrisfleming.org"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.accomodation_enquiry.acknowledge.subject
  #
  def acknowledge(enquiry)
    @enquiry = enquiry
    #nights = @enquiry.night_count
              
    #@rooms = @enquiry.rooms
    #@date = @enquiry.arrival_date
    #@people = @enquiry.people

    mail to: "me@chrisfleming.org"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.accomodation_enquiry.enquiry.subject
  #
  def enquiry(enquiry)
    @enquiry = enquiry

    mail to: "me@chrisfleming.org"
  end
end
