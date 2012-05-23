class AccomodationEnquiry < ActionMailer::Base
  default from: Rails.configuration.enq_to_address
  # todo: Test e-mail variable Configuration.
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.accomodation_enquiry.acknowledge.subject
  #
  def acknowledge(enquiry)
    @enquiry = enquiry

    mail :to => enquiry.email, :subject => "B&B availability request for Bull Farm Oast"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.accomodation_enquiry.enquiry.subject
  #
  def enquiry(enquiry)
    @enquiry = enquiry

    mail :to => Rails.configuration.enq_to_address, :subject => "B&B availability request for Bull Farm Oast", :bcc => Rails.configuration.enq_bcc_address, :reply_to => enquiry.email 
  end
end
