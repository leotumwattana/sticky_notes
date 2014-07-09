class Notes < ActiveRecord::Base

  validates :content, presence: true

  before_save :default_blank_title_to_note

  def default_blank_title_to_note
    self.title = 'note' if self.title.blank?
  end

end
