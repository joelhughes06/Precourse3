require 'spec_helper'

describe Category do
	it "saves itself" do
		category = Category.new(genre: "Comedies")
		category.save
		expect(category.first).to eq(category)
	end
	it "has many titles" do
		comedies = Category.create(genre: "Comedies")
		other_woman = Title.create(title: "The Other Woman", description: 'After discovering her boyfriend is married, Carly soon meets the wife he has been cheating on. And when yet another affair is discovered, all three women team up to plot mutual revenge on the three-timing SOB.', category_id: 3)
		dom_hemingway = Title.create(title: "Dom Hemingway", description: 'After spending 12 years in prison for keeping his mouth shut, notorious safe-cracker Dom Hemingway is back on the streets of London looking to collect what he is owed.', category_id: 3)
		expect(Comedies.titles).to include(other_woman, dom_hemingway)
	end
end
