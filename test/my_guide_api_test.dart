import 'package:my_guide_api/my_guide_api.dart';

//populate=%2A
void main() async {
  final api = MYGuideApi("http://localhost:4002/api/");
  final MYGRespnose resStates = await api.states.fetch(args: {"populate": "*"});
  final MYGRespnose resCities = await api.cities.fetch(args: {"populate": "*"});
  final MYGRespnose resServices =await api.services.fetch(args: {"populate": "*", "filters[Title][\$containsi]": "Res"});
  final MYGRespnose resUniversities =
      await api.university.fetch(args: {"populate": "*"});
  MyState myState = resStates.data as MyState;
  City city = resCities.data as City;
  Service service = resServices.data as Service;
  University university = resUniversities.data as University;

  print(myState.dataList![0].id);
  print(city.data![0].id);
  print(service.data![0].attributes?.icon?.data?.attributes.toString());
  print(university.data![0].id);
}
