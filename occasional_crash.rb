#!/usr/local/bin/ruby

while true do
    print "work...\n"
    if rand(100) > 60 then
        print "me crashed\n"
        exit 1
    end
    sleep 1
end
