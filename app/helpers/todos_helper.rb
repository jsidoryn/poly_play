module TodosHelper
  def associate_project(project, todo)
    if todo.projects.empty?
      link_to 'Add to last project', add_to_resource_project_todo_path(project, todo)
    else
      link_to 'Remove from last project', remove_from_resource_project_todo_path(project, todo)
    end
  end
end
