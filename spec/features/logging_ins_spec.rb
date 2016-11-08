require 'rails_helper'

RSpec.feature "LoggingIns", type: :feature do
  # Story: As a registered user, I can login into the web site by providing user ID and password. If log in is successful, I am taken to a page saying "Hello <user ID>".
  context 'Logging in' do
    Steps 'I can log into the website' do

      Given 'I am on the landing page' do
        visit '/'
      end

      And 'I see a login section' do
        expect(page).to have_content("Log In")
        expect(page).to have_content("Enter your UserID")
        expect(page).to have_content("Enter your Password")
      end

      Then 'I can fill in a login id and password' do
        fill_in 'login_id', with: 'poopytim'
        fill_in 'login_password', with: 'jayden22'
      end

      And 'I can click the log in button' do
        click_button 'Log In'
      end

      Then 'I see an error message' do
        expect(page).to have_content("Log In failed. Please try again")
      end

      Then 'I can fill in my valid login id and password' do
        fill_in 'login_id', with: 'timproc87'
        fill_in 'login_password', with: 'jayden22'
      end

      And 'I can click the log in button' do
        click_button 'Log In'
      end

      And 'I am taken to the hello page' do
        expect(page).to have_content("Hello timproc87")
      end

    end #end of steps

  end #end of context

end #end of rspec
