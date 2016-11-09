class DogsController < ApplicationController
  def index
    @dogs = Dog.all
  end

  def show
    @dog = Dog.find(params[:id])
  end

  def new
    @dog = Dog.new
    @rescues = Rescue.all.map do |org|
      [org.name, org.id]
    end
  end

  def create
    @dog = Dog.new(dog_params)
    @dog.rescue_id = params[:rescue_id]
    @dog.status = params[:status]
    @dog.age = params[:age]

      if (params[:dog][:name] == "") || (params[:dog][:gender] == "") || (params[:dog][:breed] == "")
        flash[:alert] = "Fields can't be blank!"
        redirect_to new_dog_path
      else
        @dog.save
        redirect_to dogs_path
      end
  end

  def edit
    @dog = Dog.find(params[:id])
    @rescues = Rescue.all.map do |org|
      [org.name, org.id]
    end
  end

  def update
    dog = Dog.find(params[:id])
    dog.rescue_id = params[:rescue_id]
    dog.status = params[:status]
    dog.age = params[:age]
    dog.update(dog_params)

    redirect_to dog
  end

  def destroy
    @dog = Dog.find(params[:id])
    @dog.destroy

    redirect_to dogs_path
  end



  private
  def dog_params
    params.require(:dog).permit(:name, :age, :gender, :breed, :img_url, :status, :rescue_id)
  end


end
