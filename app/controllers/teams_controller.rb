# -*- encoding : utf-8 -*-
class TeamsController < ApplicationController

  before_filter :load, only: [:show, :edit, :update, :destroy]
  before_filter :load_people, only: [:tags, :name_tags]

  def index
    @teams = Team.scoped
  end

  def tags; end

  def name_tags; end

  def show; end

  def edit; end

  def update
    if @team.update_attributes(params[:team])
      redirect_to teams_path, notice: "Equipe alterada com sucesso"
    else
      render action: "edit"
    end
  end

  def new
    @team = Team.new
  end

  def create
    @team = Team.new(params[:team])
    if @team.save
      redirect_to teams_path, notice: "Equipe criada com sucesso"
    else
      render action: "new"
    end
  end

  def destroy
    @team.destroy
    redirect_to teams_path, notice: "Equipe excluída com sucesso"
  end

  protected
  def load
    @team = Team.find params[:id]
  end

  def load_people
    @people = params[:ids].present? ? Team.where("id in (?)", params[:ids]) : Team.scoped
  end
end
