# -*- encoding : utf-8 -*-
require 'spec_helper'

describe TeamsController do

  let(:team) { create(:team) }

  describe '#index' do
    let!(:list) { create_list(:team, 3) }
    it 'assigns teams' do
      get 'index'
      assigns(:teams).sort_by(&:id).should eq list.sort_by(&:id)
    end
  end

  describe '#show' do
    it 'assigns team' do
      get 'show', {id: team.id}
      assigns(:team).should eq team
    end
  end

  describe '#edit' do
    it 'assigns team' do
      get 'edit', {id: team.id}
      assigns(:team).should eq team
    end
  end

  describe '#new' do
    let(:new_team) { Team.new }
    before do
      get 'new'
    end
    it 'is a Team' do
      assigns(:team).should be_a Team
    end

    it 'is a new one' do
      assigns(:team).id.should be_nil
    end
  end

  describe '#update' do
    before do
      put 'update', { id: team.id, team: { name: 'Romário da Pati',
        church: 'IB Borda do Campo' } }
    end
    it 'updates name' do
      team.reload.name.should eq 'Romário da Pati'
    end
    it 'updates church' do
      team.reload.church.should eq 'IB Borda do Campo'
    end

    it_should_behave_like "a redirect to teams"
  end

  describe '#create' do
    before do
      post 'create', team: { name: 'José da Fátima', church: 'IB Borda do Campo' }
    end
    it 'creates a team' do
      expect{
        post 'create', team: { name: 'José da Fátima', church: 'IB Borda do Campo' }
      }.to change(Team, :count).by(1)
    end

    it_should_behave_like "a redirect to teams"
  end

  describe '#destroy' do
    let!(:team) { create(:team) }
    let!(:other_team) { create(:team, name: 'Renato da Andreia') }
    before { delete 'destroy', id: other_team.id }
    it 'deletes a team' do
      expect{
        delete 'destroy', id: team.id
      }.to change(Team, :count).by(-1)
    end

    it_should_behave_like "a redirect to teams"
  end

end
