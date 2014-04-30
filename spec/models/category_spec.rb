require 'spec_helper'

describe Category do
#	it "saves itself" do
#		category = Category.new(genre: "Comedies")
#		category.save
#		expect(Category.first).to eq(category)
#	end



#	it "has many videos" do
#		comedies = Category.create(genre: "Comedies")
#		the_other_woman = Title.create(title: "The Other Woman", description: "After discovering her boyfriend is married, Carly soon meets the wife he has been cheating on. And when yet another affair is discovered, all three women team up to plot mutual revenge.", category: comedies)
#		dom_hemingway = Title.create(title: "Dom Hemingway", description: "After spending 12 years in prison for keeping his mouth shut, notorious safe-cracker Dom Hemingway is back on the streets of London looking to collect what he is owed.", category: comedies)
#		expect(comedies.titles).to eq([dom_hemingway, the_other_woman])
#	end

	it { should have_many(:titles)}
	
end
