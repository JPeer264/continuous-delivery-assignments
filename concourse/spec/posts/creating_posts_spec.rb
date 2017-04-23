require 'rails_helper.rb'

feature 'Creating post' do
  scenario 'can create a post' do
    # 1. Go to root path (there will be a button to add a new article)
    visit '/posts'
    # 2. Click on the "New article" button
    click_link 'New Post'
    # 3. Fill out the form - add a title  with at least 5 characters and a text with at least 100 characters
    fill_in 'Title', :with => 'Lorem'
    fill_in 'Body', :with => 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut l'
    # 4. Submit the form
    click_button 'Create Post'
    # 5. See the 'show' page of created article
    expect(page).to have_content('Lorem ipsum dolor sit amet')
  end
end
