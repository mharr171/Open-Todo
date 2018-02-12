class ListSerializer < ActiveModel::Serializer
  attributes :id, :created_at, :title, :private

  def created_at
    object.created_at.strftime('%B %d, %Y')
  end

  def title
    object.title
  end

  def private
    object.private
  end
end
