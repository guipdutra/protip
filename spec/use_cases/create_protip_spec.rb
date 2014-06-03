require 'spec_helper'
require_relative '../../app/use_cases/create_protip'

describe CreateProtip do
  let(:form) {
    double("ProtipForm",
           :attributes => {:owner => "Guilherme", :text => "Always do a backup before ubuntu update"}
          )
  }

  subject { CreateProtip.new(form) }

  describe "#create" do
    it "creates a protip" do
      subject.create

      expect(ProtipRepo.count).to eq 1
    end
  end
end
