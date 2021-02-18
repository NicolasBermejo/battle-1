require './app'

feature "attacking player 2" do
  scenario "attacks player 2" do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content "Ian attacked Anna"
  end
end

feature "reducing player 2 HP" do
  scenario "attack and reduce player 2 HP by 10" do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content "Anna has 50HP"
  end
end
