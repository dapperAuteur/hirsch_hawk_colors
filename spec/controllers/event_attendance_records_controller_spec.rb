require 'rails_helper'

RSpec.describe EventAttendanceRecordsController, type: :controller do
    let(:ear) { create(:event_attendance_record) }
    let(:user) { create(:user) }
    
    describe '#present' do
        
        it 'changes present to true if box checked' do
            start = ear.present
            session[:user_id] = user.id
            patch :update, id: ear.id, event_attendance_record: {present: !start}
            ear.reload
            expect(ear.present).to eq(!start)
        end
    end
    
    describe '#fed' do
        it 'changes fed to true if box checked' do
            start = ear.fed
            session[:user_id] = user.id
            patch :update, id: ear.id, event_attendance_record: {fed: !start}
            ear.reload
            expect(ear.fed).to eq(!start)
        end
    end
    
    describe '#milk_only' do
        it 'changes milk_only to true if box checked' do
            start = ear.fed
            session[:user_id] = user.id
            patch :update, id: ear.id, event_attendance_record: {milk_only: !start}
            ear.reload
            expect(ear.milk_only).to eq(!start)
        end
    end
    
    describe '#brought_lunch' do
        it 'changes brought_lunch to true if box checked' do
            start = ear.brought_lunch
            session[:user_id] = user.id
            patch :update, id: ear.id, event_attendance_record: {brought_lunch: !start}
            ear.reload
            expect(ear.brought_lunch).to eq(!start)
        end
    end
end