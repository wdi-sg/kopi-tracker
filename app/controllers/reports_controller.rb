class ReportsController < ApplicationController

  before_action :authenticate_user!, :except => [ :show, :index ]

  def index
    @reports = Report.all
  end

  def show
    @report = Report.find(params[:id])
  end

  def new
  end

  def edit
    @report = Report.find(params[:id])
  end

  def create
    @report = Report.new(order_params)

    @report.user = current_user

    @report.save
    redirect_to @report
  end

  def update
    @report = Report.find(params[:id])

    @report.update(report_params)
    redirect_to @report
  end

  def destroy
    @report = Report.find(params[:id])
    @report.destroy

    redirect_to root_path
  end

end

private
  def report_params
    params.require(:report).permit(:id, :weight, :sale, :kopi_id)
  end