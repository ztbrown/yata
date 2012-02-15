class TodosController < ApplicationController
  before_filter :authorize

  # GET /todos
  # GET /todos.json
  def index
    @todos = Todo.find_all_by_user_id(current_user.id)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @todos }
    end
  end

  # GET /todos/1.json
  def show
    @list = Todo.find(params[:id])

    respond_to do |format|
      format.json { render json: @list }
    end
  end

  # GET /todos/new.json
  def new
    @list = Todo.new
    @list.user_id = current_user.id

    respond_to do |format|
      format.json { render json: @list }
    end
  end

  # POST /todos.json
  def create
    @list = Todo.new(params[:list])
    @list.user_id = current_user.id

    respond_to do |format|
      if @list.save
        format.json { render json: @list, status: :created, location: @list }
      else
        format.json { render json: @list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /todos/1.json
  def update
    @list = Todo.find(params[:id])

    respond_to do |format|
      if @list.update_attributes(params[:list])
        format.json { head :no_content }
      else
        format.json { render json: @list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /todos/1.json
  def destroy
    @list = Todo.find(params[:id])
    @list.destroy

    respond_to do |format|
      format.json { head :no_content }
    end
  end
end
