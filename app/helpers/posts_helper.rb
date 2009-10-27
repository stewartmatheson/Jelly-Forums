module PostsHelper
  def format_body(post)    
    if post.body.length > 200
      link = link_to("more", post)
      return "#{post.body[0..600]}... #{link}"
    else
      return post.body
    end
  end
  
  def owner(post)
    if current_user == nil
      return false
    elsif post.user == nil
      return false
    elsif current_user == post.user
      return true
    end
  end
end
