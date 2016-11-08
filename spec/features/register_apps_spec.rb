require 'rails_helper'

RSpec.feature "RegisterApps", type: :feature do


  context 'Registering as a user' do

  #Story: As an internet user, I can go to a web site where I am presented with a registration form
    Steps 'Visiting the landing page' do
      Given 'Im on the landing page' do
        visit '/'
      end

      Then 'I see a registration form' do
        expect(page).to have_content("Please fill out this registration form")
        expect(page).to have_content("Full Name")
        expect(page).to have_content("Street Address")
        expect(page).to have_content("User ID")
      end
    end #end of steps

    #As an internet user, I can go to a web site where I am presented with a registration form where user ID and password are required
    Steps 'Registering as user' do
      Given 'Im on the landing page' do
        visit '/'
      end
      Then 'I can fill out the registration form' do
        fill_in 'full_name', with: 'Doctor Proctor'
        fill_in 'email_address', with: 'tim@proc.com'
      end

        And 'I am unable to register without a user id and password' do
          click_button 'Register'
          visit '/'
        end

        Then 'I type in a user ID and password' do
          fill_in 'user_id', with: 'timproc87'
          fill_in 'password', with: 'jayden22'
        end

        #Story: As an internet user, I can go to the registration form and register, which will take me to a confirmation page.
        And 'I am able to click on the register button' do
          click_button 'Register'
          expect(page).to have_content("Registration successful!")
        end

    end #end of steps

  end #end of context

end
