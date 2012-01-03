require 'spec_helper'

describe "pages/new.html.erb" do
  before(:each) do
    assign(:page, stub_model(Page,
      :name => "MyString",
      :title => "MyString",
      :keywords => "MyText",
      :content => "MyText",
      :sub_content => "MyText",
      :parent_id => 1,
      :position => 1
    ).as_new_record)
  end

  it "renders new page form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => pages_path, :method => "post" do
      assert_select "input#page_name", :name => "page[name]"
      assert_select "input#page_title", :name => "page[title]"
      assert_select "textarea#page_keywords", :name => "page[keywords]"
      assert_select "textarea#page_content", :name => "page[content]"
      assert_select "textarea#page_sub_content", :name => "page[sub_content]"
      assert_select "input#page_parent_id", :name => "page[parent_id]"
      assert_select "input#page_position", :name => "page[position]"
    end
  end
end
