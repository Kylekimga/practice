class HomesController < ApplicationController
    
    def datapage
     post = Post.new
     post.title = params[:title]
     post.content = params[:content]
     post.writer = params[:writer]
     post.password = params[:password]
     post.save
     
     redirect_to "/"

    end
    
    def index
            
     @entry = Post.all
    end
    
    def delete
        post = Post.find(params[:id])
        post.destroy
        
        redirect_to "/homes/index"
        
        
    end
    
    def update
        that_line = Post.find(params[:id])
        that_line.title = params[:title]
        that_line.content = params[:content]
        that_line.writer = params[:writer]
        that_line.password = params[:password]
        that_line.save
        
        redirect_to "/"
    end
    
    def edit
        @x = Post.find(params[:id])
    end
    
    def secondgame
     def func1
         @yourselection = params[:secondgame]
     end
     def randomchoice
       sleep(5)
       computerchoice = rand(3)
        case computerchoice
            when 0
                @randomchoice = "scissors"
            when 1
                @randomchoice = "rock"
            when 2
                @randomchoice = "paper"
        end
     end
         
    t1 = Thread.new{func1()}
    t2 = Thread.new{randomchoice()}
    t1.join
    t2.join
    end
end
