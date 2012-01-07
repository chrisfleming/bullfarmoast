require 'spec_helper'

describe "enquiries/show.html.erb" do
  before(:each) do
    @enquiry = assign(:enquiry, stub_model(Enquiry,
      :firstname => "Firstname",
      :surname => "Surname",
      :phone => "Phone",
      :email => "Email",
      :night_count => 1,
      :people => 1,
      :rooms => 1,
      :comment => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Firstname/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Surname/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Phone/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Email/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
  end
end
