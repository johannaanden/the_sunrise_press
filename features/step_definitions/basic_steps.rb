Given("the following article exists:") do |table|
    table.hashes.each do |article|
        FactoryBot.create(:article, article)
    end
end

Given("the following category exists:") do |table|
    table.hashes.each do |category|
        FactoryBot.create(:category, category)
    end
end


Given("I visit the landing page") do
    visit root_path
end

Given("I click on {string}") do |link|
    click_on link
end

Given("I click {string} within {string}") do |element, card|
    selected_card = card.split.first
    article = Article.find_by(title: selected_card)
    dom_section = "#article_#{article.id}"
    within(dom_section) do
        click_on element
    end
end

Given("I fill in {string} field with {string}") do |element, value|
    fill_in element,with: value
end

Given("I select {string} from Category") do |option|
    select option, from: 'article[category_id]'
end