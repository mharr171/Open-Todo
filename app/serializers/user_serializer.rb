class UserSerializer < ActiveModel::Serializer
  attributes :id, :created_at, :full_name, :email

  def created_at
    object.created_at.strftime('%B %d, %Y')
  end

  def full_name
    object.first_name.capitalize + " " + object.last_name.capitalize
  end

  def email
    object.email
  end
end
