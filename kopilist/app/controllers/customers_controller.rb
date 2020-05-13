class CustomersController < ApplicationController
  before_action :authenticate_customer!, :except => [ :show, :index ]
  def index
    @customers = Customer.all
    puts "fjdkljflkjfkjljh hhlhlhflhflhfklhflkh"
    puts @customers
    #@combines = Customer.joins(:customers_kopis).select("*")
    @combines = Customer.joins(:customers_kopis).select("*").group("customer_id").count("kopi_id")
p @combines

@tests = @combines.to_a
@values= @tests.flatten
p @values
@values.select!.with_index{|_, i| i.odd?}
p @values
@arrayIndexes = @tests.flatten
@arrayIndexes.select!.with_index{|_, i| i.even?}
    sequence = request.query_parameters['sequence']
    type = request.query_parameters['type']

    case type
    when "kopiCount"
      puts("I am kopi")
      @customers = @customers.order("kopicount")
      if sequence == "desc"
        @customers = @customers.reverse
      end


    end

  end

  def show
        # deal with the case that we are trying to get a ranger for a park that doesn't exist
    @customer = Customer.find(params[:id])



  end

  def new
    @kopis = Kopi.all
  end

  def edit
        @kopis = Kopi.all
        @customer = Customer.find(params[:id])
  end

  def create
    puts "I am here I am here I am here"
    @customer = Customer.new(customer_params)
    puts @customer
    @customer.save
    redirect_to @customer
  end

  def update
  @customer = Customer.find(params[:id])
puts "fjdlkjfldasjfkldasjflkadsjlfkdjasklfjwelqk;asdjfg;lkdsj"
puts customer_params[:kopi_ids].length
  @customer.update(customer_params)
  @customer.update(kopicount: customer_params[:kopi_ids].length-1)
  redirect_to @customer

  end

  def destroy
  @customer = Customer.find(params[:id])
  @customer.destroy

  redirect_to customers_path

  end

private

  def customer_params
    params.require(:customer).permit(:customerName, :kopicount, :kopi_ids => [])
  end

end