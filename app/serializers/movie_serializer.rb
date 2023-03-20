class MovieSerializer < ActiveModel::Serializer
  attributes :id, :title, :year, :length, :director, :description, :female_director, :summary

  def summary
    "#{self.object.title} - #{self.object.description[0..49]}..."
  end

end
