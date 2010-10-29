require 'spec_helper'

describe "contacts/edit.html.erb" do
  before(:each) do
    @contact = assign(:contact, stub_model(Contact,
      :new_record? => false,
      :first_name => "MyString",
      :last_name => "MyString",
      :title => "MyString",
      :work => "MyString",
      :mobile => "MyString",
      :email => "MyString",
      :account_id => 1
    ))
  end

  it "renders the edit contact form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => contact_path(@contact), :method => "post" do
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
