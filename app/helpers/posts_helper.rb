# frozen_string_literal: true

# Sessions helper
module PostsHelper
  def prevent_edit(message)
    flash[:danger] = message
    redirect_to posts_url
  end

  def timeline_post?
    params[:post][:wall_id].nil? || params[:post][:wall_id].empty?
  end

  def timeline_post_edited?
    @post.wall_id.nil?
  end

  def wall_url
    "/#{params[:post][:wall_id]}"
  end

  def edit_wall_url
    "/#{@post.wall_id}"
  end

  def post_redirect
    timeline_post? ? redirect_to(posts_url) : redirect_to(wall_url)
  end

  def post_updated
    @post.update(message: post_params[:message])
  end
end
