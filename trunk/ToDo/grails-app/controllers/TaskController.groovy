class TaskController {
    static defaultAction = "list"

    def list = {
        [tasks:Task.findAll()]
    }

    def edit = {
        if (params.id) {
            [task:Task.get(params.id)]
        }
    }

    def save = {
        def task
        if (params.id) {
            task = Task.get(params.id)
            task.properties = params
        } else {
            task = new Task(params)
        }
        task.save()
        redirect(action:"list")
    }

    def delete = {
        def task = Task.get(params.id)
        task.delete()
        redirect(action:"list")
    }
}
