

class Seed

  def self.begin

    @seed = Seed.new
    @seed.generate_mhps
    @seed.generate_articles
    @seed.generate_reviews
  end

  def generate_mhps
    20.times do |i|
      mhp = Mhp.create!(
        name: Faker::Creature::Dog.name,
        occupation: Faker::Creature::Dog.name,
        address: Faker::Creature::Dog.name,
        insurance: Faker::Creature::Dog.name,
        accepting: Faker::Creature::Dog.name,
        email: Faker::Creature::Dog.name,
        phone: Faker::Creature::Dog.name,
        bio: Faker::Creature::Dog.name,
        link: Faker::Creature::Dog.name,
      )
    end
  def generate_articles
    20.times do |i|
      article = Article.create!(
        name: Faker::Creature::Cat.name,
        link: Faker::Creature::Cat.name,
        description: Faker::Creature::Cat.name,
      )
    end
  def generate_reviews
    20.times do |i|
      review = Review.create!(
        name: Faker::Creature::Cat.name,
        subject: Faker::Creature::Cat.name,
        rating: Faker::Creature::Cat.name,
        content: Faker::Creature::Cat.name,
      )
    end
  end
  end
  end
end
  Seed.begin
  p "created #{Mhp.count} mental health practitioners"
  p "created #{Article.count} Articles"
  p "created #{Review.count} Reviews"
