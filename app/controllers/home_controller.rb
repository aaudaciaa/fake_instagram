class HomeController < ApplicationController
  def index
    #erb : index 생략가능 ( routes.rb에서 get '' 안과 이름이 같으면 )
  end

  def hello
    @name = params[:name]
  end

  def lotto
    @number = (1..45).to_a.sample(6)
    render :lotto # 이 부분은 lotto.erb라고 파일만 만들어주면 알아서 그 파일로 간다. 따로 안써도 상관없다.
  end

  def lunch
    menu = ["pizza", "hamburger", "sandwich", "bulgogi", "salad"]
    @lunch = menu.sample
  end

  def search

  end
end
