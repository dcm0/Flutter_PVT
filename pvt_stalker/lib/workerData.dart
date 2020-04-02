import 'package:google_maps_flutter/google_maps_flutter.dart';

class CoWorker{

  String username; 
  //home/office/unknown
  WorkerLocations location;
  DateTime lastUpdate; 

  CoWorker({
    this.username, 
    this.location,
    this.lastUpdate
  });

}

enum WorkerLocations{
  home, office, unknown
}

class StalkerModel{
  List<CoWorker> coWorkers;
  CoWorker myself;
  //home location
  LatLng homeLocation;
  //work location
  LatLng workLocation;

  StalkerModel(){
    myself = new CoWorker(username: 'Donny', location: WorkerLocations.unknown, lastUpdate: DateTime.now());
    updateWorkers();
  }

  void updateWorkers(){
      coWorkers = fakeCoWorkers;
  }


}


final fakeCoWorkers = [
  new CoWorker(
    username: "Razan",
    location: WorkerLocations.office,
    lastUpdate: DateTime.now() 
  ),
  new CoWorker(
    username: "Barry",
    location: WorkerLocations.office,
    lastUpdate: DateTime.parse("2020-01-20 14:23:04Z") 
  ), 
  new CoWorker(
    username: "Airi",
    location: WorkerLocations.unknown,
    lastUpdate: DateTime.parse("2020-01-19 10:10:04Z") 
  ), 
  new CoWorker(
    username: "Jakob",
    location: WorkerLocations.home,
    lastUpdate: DateTime.parse("2020-01-15 22:10:04Z") 
  ), 
  new CoWorker(
    username: "Katie",
    location: WorkerLocations.unknown,
    lastUpdate: DateTime.parse("2020-01-22 09:01:04Z") 
  )
];