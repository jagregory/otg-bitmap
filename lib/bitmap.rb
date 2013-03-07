class Bitmap
  VERSION = '1.0.0'
  
  def initialize(size=0)
    @map = {}

    size.times do |i|
      @map[i] = false
    end
  end

  def clone
    bmp = Bitmap.new @map.size
    self.each do |index,value|
      bmp[index] = value
    end
    bmp
  end

  def [] index
    !!@map[index]
  end

  def []= index, value
    @map[index] = !!value
    self
  end

  def each(&block)
    @map.each(&block)
    self
  end

  def count(which=nil)
    case which
    when :on, true
      @map.values.select { |x| !!x }.size
    when :off, false
      @map.values.select { |x| !x }.size
    else
      @map.values.size
    end
  end
  alias_method :size, :count

  def on(index)
    @map[index] = true
    self
  end

  def off(index)
    @map[index] = false
    self
  end

  def +(other)
    bmp = clone

    other.each do |index,value|
      bmp.on index if value
    end

    bmp
  end

  def all?
    @map.values.all? { |value| !!value }
  end

  def to_s
    values = []
    self.each do |index,value|
      values[index] = value
    end
    values = values.map { |x| x ? 1 : 0 }.join('')
    "{#{values}}"
  end
end