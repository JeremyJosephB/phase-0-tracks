schedule = {
    monday: {
        main_task: 'Do min. one assignment',
        task_stats: {
            total_complete: 6,
            tasks_left: 12
        },
        chores: [
            "Dust room", 
            "walk dogs"
        ]
    },
    tuesday: {
        main_task: 'Clean room',
        task_stats: {
            total_complete: 8,
            tasks_left: 10
        },
        chores: [
            "vaccum rug", 
            "walk dogs", 
            "excerise"
        ]
    },
    wednesday: {
        main_task: 'GPS at 3pm',
        task_stats: {
            total_complete: 12,
            tasks_left: 6
        },
        chores: [
            "Clean bathroom too", 
            "give dogs bath",
            "cook for tomorrow"
        ]
    }
}

puts schedule[:monday][:chores][-1]

puts schedule[:monday][:chores].push('wash car')

puts schedule[:monday][:chores].each {|key, value| puts "#{key} is done" }

puts schedule[:wednesday][:task_stats].delete_if {|key, value| :tasks_left <= :total_complete }