class PuzzlesController < ApplicationController
  def index
  @puzzles = Puzzle.all       
  end  
  
  def show
    @puzzle = Puzzle.find(params[:id])
  end

  def new  # part 1 of adding new bean
    @puzzle = Puzzle.new 
  end 

  def create # part 2 of adding new bean
    @puzzle = Puzzle.new(params.require(:puzzle).permit(:title, :image, :message)) 
    
    if @puzzle.save
      redirect_to puzzles_path
    else
      render :new
    end 
  end

  def edit 
    @puzzle = Puzzle.find(params[:id])
  end

  def update
    @puzzle = Puzzle.find(params[:id])
    if @puzzle.update_attributes(params.require(:puzzle).permit(:title, :image, :message))
    redirect_to puzzles_path
  else
    render :edit
  end
  end

  def destroy
    @puzzle = Puzzle.find(params[:id])
    @puzzle.destroy
    redirect_to puzzles_path
  end

end
