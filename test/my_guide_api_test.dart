import 'package:my_guide_api/my_guide_api.dart';

//populate=%2A
void main() async {
  MyState statesData;
  final api = MYGuideApi("http://localhost:4002/api/");
  final MYGRespnose res = await api.states.fetch(args: {"populate": "*"});
  statesData = res.data;

  print(statesData.meta);
}
