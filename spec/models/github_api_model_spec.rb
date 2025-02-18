require 'rails_helper'

RSpec.describe GithubApiModel, type: :model do
  # this is a flaky test, 'cause it depends of an external api call
  context "when api is available" do
    let(:github_response) { GithubApiModel.retrieve_language_repo('javascript') }
    it "should return a hash with data from an repository" do
      expect(github_response).to be_kind_of(Hash)
      expect(github_response).to have_key("id")
      expect(github_response).to have_key("name")
      expect(github_response).to have_key("full_name")
    end
  end
end
