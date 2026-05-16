class TaskHandler
  @task_condition_logic : Proc(Int32, Bool) = -> (x : Int32) { x >= 0 }

  def initialize(@tasks : Array(String))
  end

  def update_task_condition_logic(&block : Int32 -> Bool)
    @task_condition_logic = block
  end

  def execute(priority : Int32)
    if @task_condition_logic.call(priority)
      t = @tasks.delete_at(0)
      "Completed #{t}"
    else
      "Could not complete #{@tasks.first}"
    end
  end
end
