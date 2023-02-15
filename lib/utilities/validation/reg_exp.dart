final passReg = RegExp(r'^(?=.*[a-z])(?=.*\d)[a-z\d]{8,}$');

final emailReg = RegExp(
    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

final nameReg = RegExp(r"^\s*([A-Za-z]{1,}([\.,] |[-']| )?)+[A-Za-z]+\.?\s*$");

