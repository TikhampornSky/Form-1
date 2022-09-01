class MainController < ApplicationController
  def test
    @numberSubject = params[:numberSubject].to_i
  end

  def test2
    @num1 = params[:score1].to_i
    @num2 = params[:score2].to_i
    @num3 = params[:score3].to_i
    @s1 = params[:subject1]
    @s2 = params[:subject2]
    @s3 = params[:subject3]
    @numberSubject = params[:numberSubject].to_i
    @summ = @num1 + @num2 + @num3

    @max_score = [@num1, @num2, @num3].max
    @max_subject = ''
    if (@max_score === @num1)
      @max_subject = @s1
    elsif (@max_score === @num2)
      @max_subject = @s2
    elsif (@max_score === @num3)
      @max_subject = @s3
    else 
      @max_subject = ''
    end
  end

  def isOK
    #redirect_to '/main/test2'
    @num1 = params[:score1].to_i
    @num2 = params[:score2].to_i
    @num3 = params[:score3].to_i
    @s1 = params[:subject1]
    @s2 = params[:subject2]
    @s3 = params[:subject3]
    @err = Array.new(20)
    

  end
end
