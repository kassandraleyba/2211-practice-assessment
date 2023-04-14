# Nearest Fuel Station

### Versions

Ruby 3.1.1

Rails 7.0.x

### Set Up

- Clone this repo
- `bundle install`
- `bundle exec figaro install`
- `rails db:{create,migrate}``
- `rails s`

### Api Info

We will be using: 
1. The NREL API:
  * Alternate fuel station - [nearest station endpoint](https://developer.nrel.gov/docs/transportation/alt-fuel-stations-v1/nearest/): `/api/alt-fuel-stations/v1/nearest`
  * Sign up for a key [here](https://developer.nrel.gov/signup/)
2. The MapQuest Directions API:
  * [endpoint](https://developer.mapquest.com/documentation/directions-api/route/get/): `/directions/v2/route`
  * Sign up for a key [here](https://developer.mapquest.com/)

### User Story 

We will be searching for the nearest electric charging station to a location selected from a drop down.

```
As a visitor
When I visit "/"
And I select "Griffin Coffee" form the start location drop down (Note: Use the existing search form)
And I click "Find Nearest Station"
Then I should be on page "/search"
Then I should see the closest electric fuel station to me.

For that station I should see
- Name
- Address
- Fuel Type
- Access Times

I should also see:
- the distance of the nearest station (should be 0.1 miles)
- the travel time from Griffin Coffee to that fuel station (should be 1 min)
- The direction instructions to get to that fuel station
  "Turn left onto Lawrence St Destination will be on the left"
```


### Further Practice

Do the same challenge above, but instead of creating a view, render json
  * Create a Rails API application 
  * Create the endpoint `GET /api/v1/nearest_fuel?location=denver,co
  * The expected response should look like: 
    ```json 
    {
      "data": {
        "id": "null",
        "type": "fuel_stations",
        "attributes": {
          "destination": "Griffin Coffee",
          "Name": "7Eleven" ,
          "Address": "111 7eleven drive Denver CO 80223",
          "Fuel_type": "electric",
          "Access_times": "access times here",
          "Travel_info": {
                   "Distance": "1 mile",
                    "Travel_time": "1 minute",
                    "Directions": "Turn left onto Lawrence St Destination will be on the left"
         }
       }
    }
    }

    ```
    Note: this example has some made up data, but that's the format you can try to get your response to look like.


