part of 'services.dart';

TextEditingController noKtp1 = new TextEditingController();
TextEditingController pass1 = new TextEditingController();

int loginpasien;

class LoginPasienState {
  Future<List> login() async {
    final response = await http.post(
        'https://rsbmgeriatri.com/bhayangkara_geriatri/flutter/login.php',
        body: {"no_ktp": noKtp1.text, "password": pass1.text});
    print(response.body);

    var dataPasien = json.decode(response.body);
    loginpasien = dataPasien.length;
  }
}
