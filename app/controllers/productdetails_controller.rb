
class ProductdetailsController <ActionController::Base
    skip_before_action :verify_authenticity_token
    def index       
        data = ["abc", "def", "efg","dwd","sws","dwdw"]
        render :json => data
    end

    def getTable
        # DetailsList=[]
        detailsList = Productdetail.all
        render :json=> detailsList
    end 
    def createTable
        productItem={
            "title"=>params[:title],
            "year"=>params[:year],
            "price"=>params[:price],
            "category"=>params[:category],
            "quantity"=>params[:quantity],
            "imageurl"=>params[:imageurl],
            "description"=>params[:description]
        }
        product = Productdetail.new(productItem)
        product.save
        render :json=>product

    end
    def deleteTable
        product = Productdetail.find(params[:id])
        product.destroy
        render :json=>product
    end
    def updateTable
        todoid = Productdetail.find(params[:id])
        todoItem={
            "title"=>params[:title]
        }
        todo = todoid.update(todoItem)
        render :json=>todo
    end
end