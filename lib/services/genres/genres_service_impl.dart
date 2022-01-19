import 'package:app_filmes/models/genre_model.dart';
import 'package:app_filmes/repositories/genres/genres_respository.dart';
import 'package:app_filmes/services/genres/genres_service.dart';

class GenresServiceImpl implements GenresService{
  final GenresRepository _genresRepository;
  GenresServiceImpl({required GenresRepository genresRepository}) : _genresRepository = genresRepository;

  @override
  Future<List<GenreModel>> getGenres() => _genresRepository.getGenres();
}