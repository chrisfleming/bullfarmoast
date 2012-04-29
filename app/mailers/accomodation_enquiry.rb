class AccomodationEnquiry < ActionMailer::Base
  default from: config.enq_to_address
  # todo: Test e-mail variable Configuration.
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.accomodation_enquiry.acknowledge.subject
  #
  def acknowledge(enquiry)
    @enquiry = enquiry

    mail to: enquiry.email
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.accomodation_enquiry.enquiry.subject
  #
  def enquiry(enquiry)
    @enquiry = enquiry

    mail to: config.enq_to_address
  end
end
