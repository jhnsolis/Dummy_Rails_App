Capybara.default_driver = :selenium
#Capybara.default_driver = :poltergeist

Capybara.app_host = "https://jsolis-ruby-test.herokuapp.com/"

describe "Countries" do
    describe "visit_root" do
        before { visit '/'}

        it "Displays 'United Arab Emirates' (default)" do
            expect(page).to have_content 'United Arab Emirates'
        end

        it "Displays table with 7 columns" do
            expect(page).to have_selector(:xpath, "//table//tr[count(td)=7]")            
        end

        it "Column 1 should have the flag inside img tag" do
            expect(page).to have_selector(:xpath, "//table//td[1]/img")
        end

        it "Displays the country 'South Africa' when looking for 'africa'" do
            visit "?country=africa"
            expect(page).to have_content 'South Africa'
        end
    end
end
