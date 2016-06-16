# create event
FactoryGirl.define do
    factory :event do
        name        "lunch"
        classroom   false
        meal        false
    end
end