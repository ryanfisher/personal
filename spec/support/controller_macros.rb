module ControllerMacros
  def login_user
    before do
      @request.env['devise.mapping'] = Devise.mappings[:user]
      user = User.create(email: 'hansolo@example.com',
                         password: 'password',
                         password_confirmation: 'password')
      sign_in user
    end
  end
end
