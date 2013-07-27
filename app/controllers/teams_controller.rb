# -*- encoding : utf-8 -*-
class TeamsController < ApplicationController

  before_filter :load, only: [:show, :edit, :update, :destroy]
  before_filter :load_collection, only: [:index, :tags]

  def index; end

  def tags; end

  def name_tags
    @people = Team.scoped
  end

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

  def load_collection
    @teams = Team.scoped
  end
end
