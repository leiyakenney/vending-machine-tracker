class MachinesController < ApplicationController
  def index
    @owner = Owner.find(params[:owner_id])
  end

  def show
    @machines = Machine.all
    @machine = Machine.find(params[:id])
    @snacks = Snack.all
  end

  def self.avg_price
    average(:price)
  end
end
