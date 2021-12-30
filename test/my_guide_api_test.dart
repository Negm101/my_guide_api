import 'package:my_guide_api/my_guide_api.dart';

//populate=%2A
void main() async {
  
  final api = MYGuideApi("http://localhost:4002/api/");
  final MYGRespnose res =
      await api.states.fetch(args: {"populate": "*"});
  MyState fullResult = res.data;

  print(fullResult.dataList.toString());
}
