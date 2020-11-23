require 'rails_helper'

RSpec.describe Group, type: :model do
  describe '#create' do
    before do
      @group = FactoryBot.build(:group)
    end
  
    it "nameが存在すれば登録できること" do
      expect(@group).to be_valid
    end
      
    it "nameが空では登録できないこと" do
      @group.name = ""
      @group.valid?
      expect(@group.errors.full_messages).to include("Name can't be blank")
    end

    it "重複したnameが存在する場合登録できないこと" do
      @group.save
      another_group = FactoryBot.build(:group, name: @group.name)
      another_group.valid?
      expect(another_group.errors.full_messages).to include("Name has already been taken")
    end
  
    it "contentが空でも登録できること" do
      @group.content = ""
      expect(@group). to be_valid
    end
  end
end
