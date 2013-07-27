# -*- encoding : utf-8 -*-
class ParticipantsController < ApplicationController

  before_filter :load, only: [:show, :edit, :update, :destroy]
  before_filter :load_collection, only: [:index, :tags]

  def index; end

  def tags; end

  def name_tags
    @people = Participant.scoped
  end

  def show; end

  def edit; end

  def update
    if @participant.update_attributes(params[:participant])
      redirect_to participants_path, notice: "Encontrista alterado com sucesso"
    else
      render action: "edit"
    end
  end

  def new
    @participant = Participant.new
  end

  def create
    @participant = Participant.new(params[:participant])
    if @participant.save
      redirect_to participants_path, notice: "Encontrista criado com sucesso"
    else
      render action: "new"
    end
  end

  def destroy
    @participant.destroy
    redirect_to participants_path, notice: "Encontrista excluído com sucesso"
  end

  protected
  def load
    @participant = Participant.find params[:id]
  end

  def load_collection
    @participants = Participant.scoped
  end
end
