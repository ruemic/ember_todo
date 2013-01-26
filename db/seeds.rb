list_attributes = [
  {
    name: 'Home'
  },

  {
    name: 'Work'
  },

  {
    name: 'Other'
  }
]

task_attributes = {
  'Home' => [
    {
      name: 'Clean the house',
      minutes_estimated_to_complete: 60
    },

    {
      name: 'Make dinner',
      done: true,
      minutes_estimated_to_complete: 20
    }
  ],

  'Work' => [
    {
      name: 'Write a todo app in Ember',
      minutes_estimated_to_complete: (60 * 2)
    },

    {
      name: 'Make a presentation for the other co-workers',
      minutes_estimated_to_complete: 30
    }
  ]
}




list_attributes.each do |attributes|
  List.where(name: attributes[:name]).first_or_create! attributes
end

task_attributes.each_pair do |list_name, tasks|
  list = List.find_by_name!(list_name)

  tasks.each do |attributes|
    Task.create! attributes.merge(list: list)
  end
end
