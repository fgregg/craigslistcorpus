cities = houston philadelphia sanantonio \
         jacksonville indianapolis austin \
         columbus charlotte elpaso memphis baltimore \
         nashville denver louisville milwaukee lasvegas \
         oklahomacity albuquerque tucson fresno sacramento kansascity \
         cosprings omaha raleigh cleveland tulsa \
         wichita knoxville asheville

# Probably want to give SF even more special treatment
multi_cities = newyork losangeles chicago phoenix sandiego dallas sfbay \
               detroit boston seattle dc portland atlanta miami minneapolis

cities += multi_cities

root = $(patsubst %,%.craigslist.org,$(cities))
uri = $(addsuffix /apa,$(root)) $(addsuffix /roo,$(root)) $(addsuffix /sub,$(root))

all : $(uri)

% :
	waybackpack $@/* -d . --user-agent "waybackpack fgregg@uchicago.edu" --uniques-only



