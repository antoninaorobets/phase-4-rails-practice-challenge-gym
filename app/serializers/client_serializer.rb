class ClientSerializer < ActiveModel::Serializer
  attributes :id,:name, :age, :total

  def total
    client =
    number = self.object.memberships.count
    number
  end
  has_many :memberships


end
