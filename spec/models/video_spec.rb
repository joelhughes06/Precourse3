require 'spec_helper'

describe Title do
	it "saves itself" do
		video = Title.new(title: "Monk", description: "A great TV show!")
		video.save
		expect(Title.first).to eq(video)
	end
end