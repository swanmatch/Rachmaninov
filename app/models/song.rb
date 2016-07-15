class Song < ActiveRecord::Base
  belongs_to :composer
  has_one :midi_file, as: :parent

  enum key: %w(C C# D D# E F F# G G# A A# B)
  enum scale: {maj: true, min: false}

  def key_scale
    "#{self.key}#{scale}"
  end
end
