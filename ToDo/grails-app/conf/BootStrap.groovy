class BootStrap {

     def init = { servletContext ->
         new Task(subject:"Pranie", dueDate:new Date(), completed:false).save()
     }
     def destroy = {
     }
} 