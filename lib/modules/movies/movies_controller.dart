import 'package:app_filmes/application/ui/messages/messages_mixin.dart';
import 'package:app_filmes/models/genre_model.dart';
import 'package:app_filmes/services/genres/genres_service.dart';
import 'package:get/get.dart';

class MoviesController extends GetxController with MessagesMixin{
  final GenresService _genresService;
  MoviesController({required GenresService genresService}) : _genresService = genresService;
  final _message = Rxn<MessageModel>();
  final genres = <GenreModel>[].obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    messageListener(_message);
  }

  @override
  void onReady()  async{
    // TODO: implement onReady
    super.onReady();
    try{
      final genres = await _genresService.getGenres();
      this.genres.assignAll(genres);
    }catch(e){
      _message(MessageModel.error(title: 'Erro', message: 'Erro ao buscar categorias'));
    }
  }

  List<GenreModel> get genress => genres;
}