describe Bitmap do
  describe '#clone' do
    subject { Bitmap.new.on(1) }

    it 'should not have the same object id' do
      subject.object_id.should_not eq subject.clone.object_id
    end

    its(:to_s) { should eq subject.clone.to_s }
  end

  describe '#+' do
    before do
      @bmp1 = Bitmap.new.on(0).on(1)
      @bmp2 = Bitmap.new.on(0).on(3)
    end

    it 'should merge the bitmaps' do
      (@bmp1 + @bmp2).to_s.should eq '{1101}'
    end
  end

  describe '#count' do
    describe :on do
      it 'should count only the on bits' do
        Bitmap.new(3).on(0).on(1).count(:on).should eq 2
      end
    end

    describe :off do
      it 'should count only the off bits' do
        Bitmap.new(3).on(0).on(1).count(:off).should eq 1
      end
    end

    it 'should count the bits' do
      Bitmap.new(3).on(0).on(1).count.should eq 3
    end
  end

  describe '#all?' do
    describe 'when all are on' do
      it 'should be true' do
        Bitmap.new.on(0).on(1).all?.should eq true
      end
    end

    describe 'when all are off' do
      it 'should be true' do
        Bitmap.new.off(0).off(1).all?.should eq false
      end
    end

    describe 'when some are on' do
      it 'should be true' do
        Bitmap.new.off(0).on(1).all?.should eq false
      end
    end
  end
end