require 'spec_helper'

describe "contacts/new.html.erb" do
  before(:each) do
    assign(:contact, stub_model(Contact,
      :first_name => "MyString",
      :last_name => "MyString",
      :title => "MyString",
      :work => "MyString",
      :mobile => "MyString",
      :email => "MyString",
      :account_id => 1
    ).as_new_record)
  end

  it "renders new contact form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => contacts_path, :method => "post" do
      assert_select "input#contact_first_name", :name => "contact[first_name]"
      assert_select "input#contact_last_name", :name => "contact[last_name]"
      assert_select "input#contact_title", :name => "contact[title]"
      assert_select "input#contact_work", :name => "contact[work]"
      assert_select "input#contact_mobile", :name => "contact[mobile]"
      assert_select "input#contact_email", :name => "contact[email]"
      assert_select "input#contact_account_id", :name => "contact[account_id]"
    end
  end
end
