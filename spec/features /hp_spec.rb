require './app'

feature "enter player names" do
  scenario "returns entered names on the screen" do
    sign_in_and_play
    expect(page).to have_content "Anna has 60HP"
  end
end