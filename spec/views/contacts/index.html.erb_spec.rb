require 'spec_helper'

describe "contacts/index.html.erb" do
  before(:each) do
    assign(:contacts, [
      stub_model(Contact,
        :first_name => "First Name",
        :last_name => "Last Name",
        :title => "Title",
        :work => "Work",
        :mobile => "Mobile",
        :email => "Email",
        :account_id => 1
      ),
      stub_model(Contact,
        :first_name => "First Name",
        :last_name => "Last Name",
        :title => "Title",
        :work => "Work",
        :mobile => "Mobile",
        :email => "Email",
        :account_id => 1
      )
    ])
  end

  it "renders a list of contacts" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Work".to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Mobile".to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
