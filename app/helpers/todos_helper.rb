module TodosHelper
  def associate_project(project, todo)
    if todo.projects.empty?
      return link_to "Add to last project", add_to_resource_project_todo_path(Project.last, todo)
    else 
      return link_to "Remove from last project", remove_from_resource_project_todo_path(Project.last, todo)
    end
  end

end
