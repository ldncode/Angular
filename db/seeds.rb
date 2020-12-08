seed_file = File.join(Rails.root, 'db', 'seeds.yml')
config = YAML.load_file(seed_file)
conf = HashWithIndifferentAccess.new(config)
conf[:projects].each do |project|
  @project = Project.create({title: project[:title]})
  puts project[:title]
  project[:todos].each do |todo|
    @project.todos.create ({text: todo[:text], isCompleted: todo[:isCompleted]})
    puts todo[:text]
  end
  @todos = @project.todos.all
  puts "\n"
end