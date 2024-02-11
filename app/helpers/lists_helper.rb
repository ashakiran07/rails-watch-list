module ListsHelper
  def background_image_url(option)
  case option
  when 'Comedy'
    'https://images.unsplash.com/photo-1543584756-8f40a802e14f?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
  when 'Drama'
    'https://images.unsplash.com/photo-1612015888543-a4057b56ac17?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
  when 'Horror'
    'https://images.unsplash.com/photo-1521898461100-618454f89314?q=80&w=2874&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
  ## Add more cases for each option and its corresponding image URL
  else
    'https://images.unsplash.com/photo-1542204165-65bf26472b9b?q=80&w=2874&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
  end
  end
end
