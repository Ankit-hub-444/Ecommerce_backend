
class ProductdetailsController <ActionController::Base
    skip_before_action :verify_authenticity_token
    def index       
        data = ["abc", "def", "efg","dwd","sws","dwdw"]
        render :json => data
    end
    def getTitle
        detailsList = DetailsList.all
        render :json=> detailsList
    end
    # def getAll
    #     todoList = Todolist.all
    #     render :json=>todoList
    # end
    # def createTodo
    #     todoItem={
    #         "title"=>params[:title]
    #     }
    #     todo = Todolist.new(todoItem)
    #     todo.save
    #     render :json=>todo
    # end
    # def updateTodo
    #     todoid = Todolist.find(params[:id])
    #     puts "params value"
    #     puts params[:id]
    #     puts params[:title]
    #     todoItem={
    #         "title"=>params[:title]
    #         # title.sub! /(.*)/, "my value changed"
    #     }
    #     todo = todoid.update(todoItem)
    #     # todo.save
    #     render :json=>todo
    # end

    # def deleteTodo
        
    #     todo = Todolist.find(params[:id])
    #     todo.destroy
    #     render :json=>todo
    # end
end