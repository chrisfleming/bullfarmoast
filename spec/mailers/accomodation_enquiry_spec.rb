require "spec_helper"

describe AccomodationEnquiry do
  describe "acknowledge" do
    let(:mail) { AccomodationEnquiry.acknowledge }

    it "renders the headers" do
      mail.subject.should eq("Acknowledge")
      mail.to.should eq(["to@example.org"])
      mail.from.should eq(["from@example.com"])
    end

    it "renders the body" do
      mail.body.encoded.should match("Hi")
    end
  end

  describe "enquiry" do
    let(:mail) { AccomodationEnquiry.enquiry }

    it "renders the headers" do
      mail.subject.should eq("Enquiry")
      mail.to.should eq(["to@example.org"])
      mail.from.should eq(["from@example.com"])
    end

    it "renders the body" do
      mail.body.encoded.should match("Hi")
    end
  end

end
