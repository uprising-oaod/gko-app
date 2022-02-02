# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

def yaml_seed(model, caption)
  seed_file = Rails.root.join('db', 'seeds', "#{caption}.yml")
  list = YAML::load_file(seed_file)
  created_items = list[caption].map do |values|
    model.find_or_create_by!(values)
  end
  puts "Created #{created_items.size} #{model} values"
end

yaml_seed(Medal, 'medals')
yaml_seed(Indicator, 'indicators')
yaml_seed(AgeGroup, 'age_groups')
