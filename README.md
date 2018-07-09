# README

Standard Ruby on Rails API Application.

## Setup:
* Ruby 2.3

1. Clone Repo
2. bin/bundle install
3. bin/rake db:migrate
4. bin/rake db:seed - This will fill the last/next 6 months with random event records.
5. bin/rails server


## Notes
The current API only creates and reads events in a date range. It's about as basic as it comes.
I hard linked the front-end code on my dev machine for the sake of speed. But the code can be found here:
[Calendar.Vue](https://github.com/daniel-o/calendar.vue)

Right now most the of the components aren't styled and if they are; they're not polished. Theres a very obvious bugwith Chrome rendering of grid layout gaps on OSX.

I tried to get up and running with as few dependencies as possible so I haven't included a State Management or Router library yet.
That also means I used the standard javascript Date functions so there are tons of function products wrapped in Date objects.
