# create event_attendance_record
FactoryGirl.define do
    factory :event_attendance_record do
        event
        present         false
        fed             false
        milk_only       false
        brought_lunch   false
        attendance      1
        student
    end
end