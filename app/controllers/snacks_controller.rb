class SnacksController < ApplicationController

  def show
    @snacks = Snack.all
    @snack = Snack.find(params[:id])
    @machines = Machine.all
  end
end
