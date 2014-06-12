require 'spec_helper'
require 'fakeredis'
require_relative '../../app/use_cases/create_protip'
require_relative '../../app/mappers/protip_repo'

describe CreateProtip do
  let(:form) {
    double("ProtipForm",
           :attributes => {:owner => "Guilherme", :text => "Always do a backup before ubuntu update"}
          )
  }

  subject { CreateProtip.new(form) }

  describe "#create" do
    it "creates a protip" do
      expect {
        subject.create
      }.to change(ProtipRepo, :count).by(1)
    end
  end
end
