class Place < ApplicationRecord
  def self.search(term, page)
    if term
      where('name LIKE ?', "%#{term}%").paginate(page: page, per_page: 5).order('id DESC')
    else
      paginate(page: page, per_page: 5).order('id DESC')
    end
  end

  belongs_to :user
  validates :name, presence: true
end
