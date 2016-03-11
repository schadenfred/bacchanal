class CreatePlanService
  def call
    p1 = Plan.where(name: 'Bacchanalien').first_or_initialize do |p|
      p.amount = 2000
      p.interval = 'month'
      p.stripe_id = 'bacchanalien'
    end
    p1.save!(:validate => false)
    p2 = Plan.where(name: 'Maenad').first_or_initialize do |p|
      p.amount = 5000
      p.interval = 'month'
      p.stripe_id = 'maenad'
    end
    p2.save!(:validate => false)
    p3 = Plan.where(name: 'Satyr').first_or_initialize do |p|
      p.amount = 13000
      p.interval = 'month'
      p.stripe_id = 'Satyr'
    end
    p3.save!(:validate => false)
  end
end