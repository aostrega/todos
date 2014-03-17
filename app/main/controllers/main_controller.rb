class MainController < ModelController
  # Change to :store and run mongod to store
  # model self.local_store
  model :store

  def todos
    # @model = $page.local_store

    page._current_todo = _todos[params._index.to_i]

    # Add controller setup code here
    page._all_completed.on('changed') do
      set_all(page._all_completed.cur)
    end

    # page._todos << {_label: 'Yep'}
    page._look_for = true
  end

  def escape(html)
    puts html.inspect

    html.gsub('<', '&lt;').gsub('>', '&gt;')
  end

  def completed
    _todos.count do |v|
      v._completed
      # v._completed.or(false) == page._look_for
    end
  end

  def add_todo
    puts "ADD TODO"
    # flash._notices << "todo '#{page._new_todos._label.to_s}' added"

    self._todos << page._new_todos.to_h.cur
    page._new_todos = {}
  end

  def remove_todo(index)
    self._todos.delete_at(index)
  end

  def set_index(index)
    params._index = index
  end

  def set_all(completed)
    _todos.each do |todo|
      todo._completed = completed
    end
  end
end
