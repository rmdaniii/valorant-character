import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:valorant/data/repo/repo_layer.dart';
import '../data/model/character_model.dart';
part 'agents_state.dart';

class AgentsCubit extends Cubit<AgentsState> {
  AgentsCubit(this.repoLayer) : super(AgentsInitial());

  final RepoLayer repoLayer;

  Future<List<Character>> requestCharacter() async {

    try{
      final response = await repoLayer.getAgent();
      if (response == null) {
        return [];
      }  
      final responseDecoded = json.decode(response.body);


    } catch(e){
      e.toString();
    }
  }
}
