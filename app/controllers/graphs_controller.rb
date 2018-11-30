class GraphsController < ApplicationController
  def new
    user = User.find(params[:id])
    @graph = user.graphs.new
  end

  def create
    @graph = Graph.new(graph_params)
    if @graph.save!
      flash[:success] = 'Graph created!'
      redirect_to_owner(@graph)
    else
      render 'new'
    end

  end

  def show
    @graph = Graph.find(params[:id])
  end

  def destroy
    graph = Graph.find(params[:id])
    graph.destroy
    flash[:success] = 'Deleted!'
    redirect_to_owner(graph)
  end

  def edit
    @graph = Graph.find(params[:id])
  end

  def update
    @graph = Graph.find(params[:id])
    if @graph.update(graph_params)
      flash[:success] = 'Updated!'
      redirect_to_owner(@graph)
    else
      render 'edit'
    end
  end

  private

  def graph_params
    params.require(:graph).permit(:graph_id, :graph_name, :unit, :graph_type, :color, :user_id)
  end

  def redirect_to_owner(graph)
    redirect_to graph.user
  end

end
