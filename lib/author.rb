class Author
  attr_accessor :name
  
  @@post_count = 1
  
  def initialize(name)
    @name = name
  end
  
  def posts
    Post.all.select {|post| post.author == self}
  end
  
  def add_post(post)
    self.posts << post
    post.author = self
    @@post_count += 1
  end
  
  def add_post_by_title(post)
    post = Post.new(post)
   self.posts << post
  # post.author = self 
    @@post_count += 1
  end
  
  def self.post_count
    @@post_count
  end

  
end