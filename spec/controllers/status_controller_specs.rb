require 'spec_helper'

describe StatusController do
  describe '#index' do
    it 'render text ok' do
      get :index
      # expect(page).to have_content('OK')
    end
  end
end
