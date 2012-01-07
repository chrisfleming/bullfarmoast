require 'spec_helper'

describe "enquiries/edit.html.erb" do
  before(:each) do
    @enquiry = assign(:enquiry, stub_model(Enquiry,
      :firstname => "MyString",
      :surname => "MyString",
      :phone => "MyString",
      :email => "MyString",
      :night_count => 1,
      :people => 1,
      :rooms => 1,
      :comment => "MyText"
    ))
  end

  it "renders the edit enquiry form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => enquiries_path(@enquiry), :method => "post" do
      assert_select "input#enquiry_firstname", :name => "enquiry[firstname]"
      assert_select "input#enquiry_surname", :name => "enquiry[surname]"
      assert_select "input#enquiry_phone", :name => "enquiry[phone]"
      assert_select "input#enquiry_email", :name => "enquiry[email]"
      assert_select "input#enquiry_night_count", :name => "enquiry[night_count]"
      assert_select "input#enquiry_people", :name => "enquiry[people]"
      assert_select "input#enquiry_rooms", :name => "enquiry[rooms]"
      assert_select "textarea#enquiry_comment", :name => "enquiry[comment]"
    end
  end
end
