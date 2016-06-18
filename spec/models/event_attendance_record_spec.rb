require 'rails_helper'

RSpec.describe EventAttendanceRecord do
    
    let(:ear) { create(:event_attendance_record) }
    
    
    it 'has present set to false' do
        expect(ear.present).to_not eq(nil)
        expect(ear.present).to eq(false)
    end
    
    it 'has fed set to false' do
        expect(ear.fed).to_not eq(nil)
        expect(ear.fed).to eq(false)
    end
    
    it 'has milk_only set to false' do
        expect(ear.milk_only).to_not eq(nil)
        expect(ear.milk_only).to eq(false)
    end
    
    it 'has brought_lunch set to false' do
        expect(ear.brought_lunch).to_not eq(nil)
        expect(ear.brought_lunch).to eq(false)
    end
    
    describe '#present_toggle' do
        it 'changes status to true when false and false when true' do
            start = ear.present
            ear.present_toggle
            expect(ear.present).to eq(!start)
        end
    end
    
    describe '#fed_toggle' do
        it 'changes status to true when false and false when true' do
            start = ear.fed
            ear.fed_toggle
            expect(ear.fed).to eq(!start)
        end
    end
    
    describe '#milk_only_toggle' do
        it 'changes status to true when false and false when true' do
            start = ear.milk_only
            ear.milk_only_toggle
            expect(ear.milk_only).to eq(!start)
        end
    end
    
    describe '#brought_lunch_toggle' do
        it 'changes status to true when false and false when true' do
            start = ear.brought_lunch
            ear.brought_lunch_toggle
            expect(ear.brought_lunch).to eq(!start)
        end
    end
        
end