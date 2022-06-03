#!/bin/bash
python "$SUMO_HOME/tools/randomTrips.py" -n osm.net.xml --fringe-factor 5 -p 1.450902 -o osm.pedestrian.trips.xml -e 3600 -r osm.pedestrian.rou.xml --vehicle-class pedestrian --pedestrians --prefix ped --max-distance 2000
python "$SUMO_HOME/tools/randomTrips.py" -n osm.net.xml --fringe-factor 6 -p 2.458658 -o osm.bus.trips.xml -e 3600 --vehicle-class bus --vclass bus --prefix bus --min-distance 600 --fringe-start-attributes "departSpeed=\"max\"" --trip-attributes "departLane=\"best\"" --validate
