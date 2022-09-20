class HomeController < ApplicationController
  #before_action :set_home, only: [ :show, :update, :destroy ]
  
  def index
    render json: { message: "Welcome!" } 
  end

  def ola
    render json: { message: "ola" }
  end

  def fff
    render json: {
      color0: "#2929",
      color1: "#fff",
      color2: "#00ff",
      color3: "#0901",
      color4: "#111",
      color5: "#999",
      color6: "#00aa",
    }
  end

  def raoni
    render json: {
      nome: "Raoni Cerqueira Lima",
      idade: 2022 - 1989,
      email: "raoni@gmail.com"
    }
  end

  def bom_dia
    if params[:meu].present?
        raonii = { msg: "bom dia, #{params[:meu]}" }
        render json: raonii
    else
      render json: { Graus: 28 }
    end
  end

  def boa_noite
    render json: { Graus: -9 }
  end

  def calc
    if params[:number1 && :number2].present?
      calculo = params[:number1] + params[:number2]
      render json: {
        total: calculo
      }
    else
      render json: { msg: "Não há nenhum dado para processar" }
    end
  end

end
