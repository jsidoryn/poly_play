module TodosHelper
  def associate_project(project, todo)
    if todo.projects.empty?
      link_to 'Add to project', add_to_resource_project_todo_path(project, todo)
    else
      link_to 'Remove from project', remove_from_resource_project_todo_path(project, todo)
    end
  end

  def associate_weekly_plan(weekly_plan, todo)
    if todo.weekly_plans.empty?
      link_to 'Add to weekly plan', add_to_resource_weekly_plan_todo_path(weekly_plan, todo)
    else
      link_to 'Remove from weekly plan', remove_from_resource_weekly_plan_todo_path(weekly_plan, todo)
    end
  end

  def associate_daily_plan(daily_plan, todo)
    if todo.daily_plans.empty?
      link_to 'Add to daily plan', add_to_resource_daily_plan_todo_path(daily_plan, todo)
    else
      link_to 'Remove from daily plan', remove_from_resource_daily_plan_todo_path(daily_plan, todo)
    end
  end

  def associate_resource
    # abstract above
  end
end
