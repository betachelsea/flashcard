require 'rails_helper'

describe Card, type: :model do
  let(:card) { FactoryGirl.create(:card) }

  describe 'with validation' do
    describe '登録wordが既にあった場合' do
      it 'validationが通らない' do
        expect(FactoryGirl.build(:card, word: card.word)).to_not be_valid
      end
    end
  end

  describe 'with DB' do
    describe 'unique制限について、' do # テストする対象
      context '既に対象wordが登録されていた場合' do # テストする時の状況
        it '例外が発生する' do
          expect do
            new_card = FactoryGirl.build(:card, word: card.word)
            new_card.save validate: false
          end.to raise_error( ActiveRecord::RecordNotUnique )
        end
      end

    end
  end
end
