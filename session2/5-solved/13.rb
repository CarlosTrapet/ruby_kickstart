require 'date'

class User
  attr_accessor :username, :blogs

  def initialize(username)
    self.username = username
    self.blogs    = []
  end

  def add_blog(date, text)
    added_blog = Blog.new(date, self, text)
    blogs << added_blog
    self.blogs = blogs.sort_by { |blog| blog.date }.reverse
    added_blog
  end
end



class Blog
  attr_accessor :date, :user, :text

  def initialize(date, user, text)
    self.date = date
    self.user = user
    self.text = text
  end

  def summary
    text.split[0..9].join(' ')
  end

  def entry
    "#{user.username} #{date}\n#{text}"
  end

  def ==(other)
    date   == other.date &&
      user == other.user &&
      text == other.text
  end
end

#Jordan
class User
  attr_accessor :username, :blogs

  def initialize(username)
    @username = username
    @blogs = []

  end

  def add_blog(date, text)
    blog = Blog.new(date, self, text)
    @blogs << blog
    blog
  end

  def blogs
    @blogs.sort_by { |blog| blog.date }.reverse
  end

end

class Blog
  attr_accessor :date, :user, :text
  def initialize(date, user, text)
    @date, @user, @text = date, user, text
  end

  def summary
    text.split[0..9].join(' ')
  end

  def entry
    "#{user.username} #{date}\n#{text}"
  end

  def ==(second_blog)
    date == second_blog.date &&
    user == second_blog.user &&
    text == second_blog.text
  end
end


#Sebastien
class User
  attr_accessor :username, :blogs

  def initialize(username)
    self.username, self.blogs = username, Array.new
  end

  def add_blog(date, text)
    Blog.new date, self, text
  end

  def blogs
     @blogs.sort! { |blog1, blog2| blog2.date <=> blog1.date }
  end

end

class Blog
  attr_accessor :date, :user, :text

  def initialize(date, user, text)
    self.date, self.user, self.text = date, user, text
    user.blogs << self
  end

  def summary
    summary = ""
    get = @text.split(/ /)
    get.each_index do |word|
      summary << get[word] << " " if word < 10
    end
    summary.strip
  end

  def display_entry
    puts user.username + " " + date.to_s
    puts text
  end
  def ==(other)
    self.date == other.date &&
    self.user == other.user &&
    self.text == other.text
  end
end


# Gabe
class User

  def initialize(username)
    @username = username
    @blogs = []
  end

  attr_accessor :username
  attr_accessor :blogs

  def add_blog(date, text)
    blog = Blog.new(date, self, text)
    @blogs << blog
    blog
  end

  def blogs
    sorted_blogs = @blogs.sort_by { |element| element.date }
    sorted_blogs.reverse
  end

end

class Blog
  
  def initialize(date, user, text)
    @user = user
    @date = date
    @text = text
  end

  attr_accessor :date
  attr_accessor :user
  attr_accessor :text

  def summary
    text.split[0...10].join(' ')
  end

  def entry
    "#{@user.username} #{@date}\n#{@text}"
  end

  def == other
    date == other.date && user == other.user && text == other.text
  end

end


# Tom Coakes
require 'date'

class User
  attr_accessor :username, :blogs

  def initialize(username)
    @username = username
    @blogs = []
  end

  def add_blog(date, text)
    blog1 = Blog.new(date, @username, text)
    blogs << blog1
    @blogs = blogs.sort_by { |blog| blog.date }.reverse
    blog1
  end
end

class Blog
  attr_accessor :date, :user, :text

  def initialize(date, user, text)
    @date = date
    @user = user
    @text = text
  end

  def summary
    @text.split(' ')[0..9].join(' ')
  end

  def entry
    return "#{@user.username} #{@date}\n#{@text}"
  end

  def ==(other)
    return date == other.date && user == other.user && text == other.text
  end

end

# Yannick

class User

  attr_accessor :username, :blog

  def initialize(username)
    @username = username
    @blogs = []
  end

  def add_blog(date, text)
    new_blog = Blog.new(date, self, text)
    @blogs << new_blog
    new_blog

  end

  def blogs
    @blogs.sort_by {|blog| blog.date}.reverse
  end

end

class Blog

  attr_accessor :date, :user, :text
  
  def initialize(date, user, text)
    @date, @user, @text = date, user, text
  end

  def summary
    @text.split(' ')[0..9].join(' ')
  end

  def entry
    "#{@User.username} #{@date}\n#{@text}"
  end

  def ==(other)
    date == other.date &&
    user == other.user &&
    text == other.text
  end

end