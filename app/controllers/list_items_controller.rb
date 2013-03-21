class ListItemsController < ApplicationController
  # GET /list_items
  # GET /list_items.json
  def index
    @list = List.find(params[:list_id])
    @list_items = @list.list_items.find(params[:list_id])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @list_items }
    end
  end

  # GET /list_items/1
  # GET /list_items/1.json
  def show
    @list = List.find(params[:list_id])
    @list_items = @list.list_items.find(params[:list_id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @list_item }
    end
  end

  # GET /list_items/new
  # GET /list_items/new.json
  def new
    @list = List.find(params[:list_id])
    @list_item = @list.list_items.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @list_item }
    end
  end

  # GET /list_items/1/edit
  def edit
    @list = List.find(params[:list_id])
    @list_item = @list.list_items.find(params[:id])
    edit_list_list_item_path(@list, @list_item)
  end

  # POST /list_items
  # POST /list_items.json
  def create
    @list = List.find(params[:list_id])
    @list_item = @list.list_items.build(params[:list_item])

      if @list_item.save
        flash[:success] = "Item successfully added"
        redirect_to list_path(@list)
      else
        flash[:error] = "Item not added"
        redirect_to list_path(@list)
      end
  end

  # PUT /list_items/1
  # PUT /list_items/1.json
  def update
    @list = List.find(params[:list_id])
    @list_item = @list.list_items.find(params[:id])

      if @list_item.update_attributes(params[:list_item])
        flash[:success] = "List item was successfully updated."
        redirect_to list_path(@list)  
      else
        flash[:errror] = "Unable to update item."
        redirect_to edit_list_list_item_path(@list, @list_item)
      end
  end

  # DELETE /list_items/1
  # DELETE /list_items/1.json
  def destroy
    @list = List.find(params[:list_id])
    @list_item = @list.list_items.find(params[:id])
    @list_item.destroy

    if @list_item.destroy
      flash[:success] = "Item deleted"
      redirect_to list_path(@list)
    else
      flash[:error] = "Item not deleted"
      redirect_to list_path(@list)
    end
  end
end
