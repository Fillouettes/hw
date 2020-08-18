class UserMailer < ApplicationMailer
    default from: 'sean@99cats.local'

    def welcome_email(user)
        @user = user
        @url = session_url
        mail(to: user.username, from: "everybody@appacademy.io", subject: "Welcome to 99 Cats")
    end
end
