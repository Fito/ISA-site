module ControllerMacros
  def login_admin
    before(:each) do
      @request.env["devise.mapping"] = Devise.mappings[:admin]
      sign_in Admin.create(:email => 'my@email.com', :password => 'password')
    end
  end
end