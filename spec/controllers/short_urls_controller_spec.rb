require 'rails_helper'

# Include Batchable for testing actions
class ShortUrlsController < ApplicationController
  include Batchable
end

RSpec.describe ShortUrlsController, type: :controller do

  # This passes even if the include declaration above is removed, promise.
  # This is to test that the concern is included in the application, not in the spec suite.
  describe 'includes Batchable' do
    it { expect(ShortUrlsController.ancestors.include? Batchable).to eq(true) }
  end

  describe '#batch' do
    it 'responds successfully' do
      get :batch
      expect(response).to be_success
    end
  end

  describe '#batch_edit_and_new' do
    it 'responds successfully'

    context 'when a valid CSV is uploaded' do
      it 'identifies the right short URLS to update'
      it 'identifies the right short URLs to create'
      it 'displays short URLs to update and create'
    end

    context 'when a bad CSV is uploaded' do
      it 'prompts for upload again'
      it 'gives a useful message about bad CSVs'
    end
  end

  describe '#batch_update_and_create' do
    describe
  end

  describe '#identify_action_for_record(records)' do
  end

  describe '#read_batch_csv' do
  end

  describe '#short_urls_csv_params' do
    pending
  end

  describe '#short_urls_batch_params' do
    pending
  end

  describe '#upload' do

  end
end