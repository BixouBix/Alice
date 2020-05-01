require 'rails_helper'

Rails.application.load_tasks

RSpec.describe 'fetch_db.rake' do
  it "loads the list of institutions" do
    Rake::Task['fetch_db'].invoke
    expect(Institution.count).not_to eq(0)
  end
end
