require 'spec_helper'

describe "accounts/edit.html.erb" do
  before(:each) do
    @account = assign(:account, stub_model(Account,
      :new_record? => false,
      :name => "MyString",
      :address => "MyString",
      :city => "MyString",
      :state => "MyString",
      :zip_code => "MyString"
    ))
  end

  it "renders the edit account form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => account_path(@account), :method => "post" do
      assert_select "input#account_name", :name => "account[name]"
      assert_select "input#account_address", :name => "account[address]"
      assert_select "input#account_city", :name => "account[city]"
      assert_select "input#account_state", :name => "account[state]"
      assert_select "input#account_zip_code", :name => "account[zip_code]"
    end
  end
end
