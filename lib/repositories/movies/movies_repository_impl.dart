import 'package:app_filmes/application/rest_client/rest_client.dart';
import 'package:app_filmes/models/movie_model.dart';
import 'package:app_filmes/repositories/movies/movies_repository.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';

class MoviesRepositoryImpl implements MoviesRepository{

  final RestClient _restClient;


  MoviesRepositoryImpl({required RestClient restClient}) : _restClient = restClient;

  @override
  Future<List<MovieModel>> getPopularMovies()  async{
    final result =  await _restClient.get(
        '/movie/popular' ,
        query: {
          'api_key': RemoteConfig.instance.getString('api_token'),
          'language': 'pt-br',
          'page': '1'
        },
      decoder: (data){
          final results = data['results'];
          if(results != null){
            return results.map<MovieModel>((v) => MovieModel.fromMap(v)).toList();
          }

          return <MovieModel>[];
      },
    );

    if(result.hasError){
      print('Erro ao buscar popular filmes [${result.statusText}');
      throw Exception('Erro ao buscar filmes populares');
    }

    return result.body ?? <MovieModel>[];
  }

  @override
  Future<List<MovieModel>> getTopRated() async{
    final result =  await _restClient.get(
      '/movie/top_rated' ,
      query: {
        'api_key': RemoteConfig.instance.getString('api_token'),
        'language': 'pt-br',
        'page': '1'
      },
      decoder: (data){
        final results = data['results'];
        if(results != null){
          return results.map<MovieModel>((v) => MovieModel.fromMap(v)).toList();
        }

        return <MovieModel>[];
      },
    );

    if(result.hasError){
      print('Erro ao buscar filmes top [${result.statusText}');
      throw Exception('Erro ao buscar filmes top');
    }

    return result.body ?? <MovieModel>[];
  }

}