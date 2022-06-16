
import '../model/crypto_model.dart';

abstract class ICryptoRepository{
  Future<List<CryptoModel>> findAllCrypto();

}