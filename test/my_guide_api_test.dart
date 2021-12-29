import 'package:my_guide_api/src/helpers.dart';
import 'package:my_guide_api/src/main.dart';
import 'package:my_guide_api/src/models/state.dart';

//populate=%2A
void main() async {
  State statesData;
  final api = MYGuideApi("http://localhost:4002/api/");
  final MYGRespnose res = await api.states.fetch(args: {"populate": "*"});
  statesData = res.data;

  print(statesData.meta);
}
