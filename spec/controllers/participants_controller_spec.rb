# -*- encoding : utf-8 -*-
require 'spec_helper'

describe ParticipantsController do

  let(:participant) { create(:participant) }

  describe '#index' do
    let!(:list) { create_list(:participant, 3) }
    it 'assigns participants' do
      get 'index'
      assigns(:participants).sort_by(&:id).should eq list.sort_by(&:id)
    end
  end

  describe '#show' do
    it 'assigns participant' do
      get 'show', {id: participant.id}
      assigns(:participant).should eq participant
    end
  end

  describe '#edit' do
    it 'assigns participant' do
      get 'edit', {id: participant.id}
      assigns(:participant).should eq participant
    end
  end

  describe '#new' do
    let(:new_participant) { Participant.new }
    before do
      get 'new'
    end
    it 'is a Participant' do
      assigns(:participant).should be_a Participant
    end

    it 'is a new one' do
      assigns(:participant).id.should be_nil
    end
  end

  describe '#update' do
    before do
      put 'update', { id: participant.id, participant: { name: 'Romário da Pati',
        full_name: 'Romário dos Anjos' } }
    end
    it 'updates name' do
      participant.reload.name.should eq 'Romário da Pati'
    end
    it 'updates full name' do
      participant.reload.full_name.should eq 'Romário dos Anjos'
    end

    it_should_behave_like "a redirect to participants"
  end

  describe '#create' do
    before do
      post 'create', participant: { name: 'José da Fátima', full_name: 'José Bonifácio',
        couple: 'Rafael da Lia' }
    end
    it 'creates a participant' do
      expect{
        post 'create', participant: { name: 'José da Fátima', full_name: 'José Bonifácio',
          couple: 'Rafael da Lia' }
      }.to change(Participant, :count).by(1)
    end

    it_should_behave_like "a redirect to participants"
  end

  describe '#destroy' do
    let!(:participant) { create(:participant) }
    let!(:other_participant) { create(:participant, name: 'Plínio da Thais') }
    before { delete 'destroy', id: other_participant.id }
    it 'deletes a participant' do
      expect{
        delete 'destroy', id: participant.id
      }.to change(Participant, :count).by(-1)
    end

    it_should_behave_like "a redirect to participants"
  end

end
