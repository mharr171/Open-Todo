class Api::ItemsController < ApiController
  before_action :authenticated?

  def index
    items = []
    lists = List.all.where(private: false)
    lists.each do |list|
      list.items.each do |item|
        items << item
      end
    end
    render json: items, each_serializer: ItemSerializer
  end

  def create
    item = Item.new(item_params)
    item.list = List.find(params[:list_id])

    if item.save
      render json: item
    else
      render json: { errors: item.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    item = Item.find(params[:id])
    if item.update(item_params)
      render json: item
    else
      render json: { errors: item.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private
  def item_params
    params.require(:item).permit(:title,:completed)
  end
end
