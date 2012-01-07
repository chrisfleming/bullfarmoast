require 'spec_helper'

describe "enquiries/index.html.erb" do
  before(:each) do
    assign(:enquiries, [
      stub_model(Enquiry,
        :firstname => "Firstname",
        :surname => "Surname",
        :phone => "Phone",
        :email => "Email",
        :night_count => 1,
        :people => 1,
        :rooms => 1,
        :comment => "MyText"
      ),
      stub_model(Enquiry,
        :firstname => "Firstname",
        :surname => "Surname",
        :phone => "Phone",
        :email => "Email",
        :night_count => 1,
        :people => 1,
        :rooms => 1,
        :comment => "MyText"
      )
    ])
  end

  it "renders a list of enquiries" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Firstname".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Surname".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
