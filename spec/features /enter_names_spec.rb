require './app'

feature "enter player names" do
  scenario "returns entered names on the screen" do
    sign_in_and_play
    expect(page).to have_content "The next fight is between Ian and Anna"
  end
end 
  
 