import 'package:get/get.dart';
import 'package:market_crypto/repository/i_crypto_repository.dart';

class HomeController extends GetxController with StateMixin{

  final ICryptoRepository _iCyptoRepository;

  HomeController(
     this._iCyptoRepository,
  );

  @override
  void onInit(){
    super.onInit();
    findCrypto();
  }

  void findCrypto() async{
    change([], status: RxStatus.loading());
    try{
      final data = await _iCyptoRepository.findAllCrypto();
      change(data,status: RxStatus.success());
    } catch(e) {
      print('O Erro é ; $e');
      change([], status: RxStatus.error('Erro ao carregar os dados'));

    }
  }
}