class ItemSerializer < ActiveModel::Serializer
  attributes :id, :created_at, :title

  def created_at
    object.created_at.strftime('%B %d, %Y')
  end

  def title
    object.title
  end
end
