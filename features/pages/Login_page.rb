class Login_page < SitePrism::Page

    element :username_input, "input[name='username']"
    element :password_input, "input[name='password']"

    def register(username, password)
        username_input.set username
        password_input.set password
        click_button 'Login'
    end

end