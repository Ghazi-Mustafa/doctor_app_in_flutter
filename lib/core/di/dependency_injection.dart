import 'package:doctor_app/core/networking/api_service.dart';
import 'package:doctor_app/core/networking/dio_factory.dart';
import 'package:doctor_app/features/login/data/repos/login_repo.dart';
import 'package:doctor_app/features/login/logic/cubit/login_cubit.dart';
import 'package:get_it/get_it.dart';
final getIt = GetIt.instance;

void setupGetit() {
  // Register your dependencies here
  // Example:
  final dio = DioFactory.getDio();
   getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

   // login 
   getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(apiService: getIt<ApiService>()));
   getIt.registerLazySingleton<LoginCubit>(() => LoginCubit(getIt<LoginRepo>()));
}