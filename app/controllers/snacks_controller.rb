class SnacksController < ApplicationController

  def show
    @snack = Snack.find(params[:id])
    @snacks = Snack.all
    @machines = Machine.all
  end
end
