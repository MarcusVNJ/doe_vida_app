import 'package:dio/dio.dart';
import 'package:doe_vida_app/shared/adapters/out/dio_client.dart';
import 'package:result_dart/result_dart.dart';

class PeopleRepository {
  final DioClient _dioClient = DioClient();

  Future<Result> saveAll(List<dynamic> data) async {
    return _handleResponse(await _dioClient.post("/register",
        data: data, options: Options(contentType: Headers.jsonContentType)));
  }

  Future<Result<Response>> searchCandidateByState() async {
    return _handleResponse(await _dioClient.get("/people/candidate",
        queryParameters: Map.of({"by": "state"})));
  }

  Future<Result<Response>> searchPeopleByAge(int minAge, int maxAge) async {
    return _handleResponse(await _dioClient.get("/people",
        queryParameters:
            Map.of({"by": "age", "minAge": minAge, "maxAge": maxAge})));
  }

  Future<Result<Response>> searchPeopleObeseByGender() async {
    return _handleResponse(await _dioClient.get("/people",
        queryParameters: Map.of({"by": "obese"})));
  }

  Future<Result<Response>> searchMediaAgeByBloodType() async {
    return _handleResponse(await _dioClient.get("/people",
        queryParameters: Map.of({"by": "mediaAge"})));
  }

  Future<Result<Response>> searchDonorsByBloodTypeReceiver() async {
    return _handleResponse(await _dioClient.get("/people/candidate",
        queryParameters: Map.of({"by": "bloodType"})));
  }

  Result<Response> _handleResponse(Response response) {
    if (response.statusCode != null &&
        response.statusCode! >= 200 &&
        response.statusCode! < 300) {
      return Success(response);
    } else {
      return Failure(DioException(
        requestOptions: response.requestOptions,
        response: response,
        type: DioExceptionType.badResponse,
        message: "Erro na requisição: ${response.statusCode}",
      ));
    }
  }
}
