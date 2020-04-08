require 'date'
class Task < Post
  def initialize
    super

    @due_date = Tine.now
  end

  def read_from_console
    puts "Что надо сделать?"
    @text = STDIN.gets.chomp

    puts "К какому числу? Укажите дату в формате ДД.ЬЬ.ГГГГГ, например 12.05.2003"
    input = STDIN.gets.chomp

    @due_date  =Date.parse(input)
  end

  def to_string
    time_string = "Создано: #{@created_at.strftime(%Y-%m-%d_%H-%M-%S)} \n\r \n\r"

    deadline = "Крайний срок: #{@due_date}"

    return [deadline, @text, time_string]
  end
end
