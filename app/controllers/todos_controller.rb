class TodosController < ApplicationController
  def index
    render "viewbro/index"
  end

  def create
    task_name = params[:todo_text]
    due_date = params[:due_date]
    Todo.create!(    
      task_name: task_name,
      due_date: due_date,
      status: false,
    )
    redirect_to "/"
  end
  def complete
    com_id = params[:id]
    com_record = Todo.find(com_id)
    com_record[:status] = true
    com_record.save
    redirect_to "/"
  end
  def delete
    dlt_id = params[:id]
    dlt_id = Todo.find(dlt_id)
    dlt_id.destroy
    dlt_id.save
    redirect_to "/"
  end
end
