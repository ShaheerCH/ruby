require_relative 'app'
require_relative 'choice'

def options(_app)
  puts 'Choose and option'
  comands = [
    '[1] List all books',
    '[7] Exit'
  ]

  comands.each do |cmd|
    puts cmd
  end
end

def main
  app = App.new
  exit = false
  puts 'Welcome to Ruby Hell!'
  while exit == false
    options(app)
    exit = user_choice(app)
  end
  puts 'Ruby will find you..'
end

main
