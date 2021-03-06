require 'rails_helper'

RSpec.describe SessionsHelper, type: :helper do
  let(:user) { create(:user) }

  describe '#current_user' do
    context 'ログイン中のユーザーがいない時' do
      it 'nilを返す' do
        expect(current_user).to be_nil
      end
    end

    context 'ログイン中のユーザーがいる時' do
      it '正しいユーザーを返す' do
        log_in(user)
        expect(current_user).to eq user
      end
    end
  end
end
