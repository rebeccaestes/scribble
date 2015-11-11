class BlogsController < ApplicationController
	def index
		@blogs = Blog.all
	end

	def new
		@blog = Blog.new
	end

	def show
		@blog = Blog.find(params[:id])
		@comments = @blog.comments
	end

	def edit
		@blog = Blog.find(params[:id])
	end

	def create
    	@blog = Blog.create!(blog_params)
    	redirect_to blog_path(@blog)
	end

	def update
   	 	@blog = Blog.find(params[:id])
   		@blog.update(blog_params)
		redirect_to blog_path(@blog)
	end

	def destroy
	    @blog = Blog.find(params[:id])
	    @blog.destroy
	    redirect_to blogs_path
  	end

	private
 	def blog_params
    	params.require(:blog).permit(:author_name, :subject, :content)
 	end
end
