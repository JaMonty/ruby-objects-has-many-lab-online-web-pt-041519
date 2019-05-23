
class Author
  
  
  attr_accessor :name , :posts
  
  @@all = []
  
  def initialize(name)
    @name = name
    @posts = []
  end
  
  def add_post(post)
    self.posts << post
    post.author = self
  end
  
  def posts
    @posts
  end 
  
  def add_post_by_title(title)
    add_post(Post.new(title))
    # post = Post.new(title)
    # @posts << post
    # @@all << post 
    # post.author = self
  end 
  

def self.post_count
    Post.all.length
  end
end
  # def self.post_count
  #   @@all.length
  # end
  

