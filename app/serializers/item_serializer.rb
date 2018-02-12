class ItemSerializer < ActiveModel::Serializer
  attributes :id, :created_at, :title, :completed

  def created_at
    object.created_at.strftime('%B %d, %Y')
  end

  def title
    object.title
  end

  def completed
    object.completed
  end
end
