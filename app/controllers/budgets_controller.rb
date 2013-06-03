class BudgetsController < ApplicationController
  def index
    redirect_to new_budget_path
  end
  
  def new
    @budget = Budget.new
  end
  
  def create
    @contact = Budget.new(params[:budget])
    if @contact.save
      Notify.send_budget_to_adm(@contact).deliver
      redirect_to budget_path(@contact), :notice => "Orçamento enviado c om sucesso."
    else
      render :action => 'new'
    end
  end
  
  def show
  end

end
