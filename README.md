# Singly &rarr; TSV

## Usage

    bundle exec ./fetch /path/on/singly singly.field:OutputField [...]

## Example

### Command

```
bundle exec ./fetch.rb
  /types/checkins
  data.venue.name:LocationName
  data.venue.location.lat:Latitude
  data.venue.location.lng:Longitude
```

### Output

```
LocationName  Latitude  Longitude
Terminal 2  37.6170473206807  -122.38454949604645
San Francisco International Airport (SFO) 37.61642405271961 -122.38627910614014
SFO AirTrain Station - Terminal 2 37.61674911844324 -122.38454639911652
SFO AirTrain - Red Line 37.61494530443271 -122.38765239715576
SFO AirTrain Station - Garage G & BART  37.61590564431152 -122.39251255989075
San Francisco Int'l Airport BART Station  37.61593963841623 -122.39242672920227
19th St. Oakland BART Station 37.8075970299193  -122.26890563964844
The Uptown Apartments 37.81283227503294 -122.27106015195861
Rudy's Can't Fail Cafe  37.807683 -122.270141
19th St. Oakland BART Station 37.8075970299193  -122.26890563964844
24th St. Mission BART Station 37.75206982929254 -122.41871771139375
SINGLY  37.75926  -122.410651
SINGLY  37.75926  -122.410651
Blue Bottle Coffee  37.76178267840341 -122.41171017728642
SINGLY  37.75926  -122.410651
Atlas Cafe  37.75894716640233 -122.41147787533407
SINGLY  37.75926  -122.410651
Atlas Cafe  37.75894716640233 -122.41147787533407
Mission Cliffs  37.76064131261189 -122.41251769912533
16th St. Mission BART Station 37.764879250760764  -122.41998974716374
```
