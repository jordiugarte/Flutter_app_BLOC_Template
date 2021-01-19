bool isEmpty(String value) {
  if (value.isEmpty) {
    return false;
  } else {
    return null;
  }
}

String isNumeric(String value,
    {String message = "Introducir un número válido"}) {
  return (isEmpty(value) != null)
      ? isEmpty(value)
      : (num.tryParse(value) == null)
          ? message
          : null;
}

String isPassword(String value,
    {String message =
        "Introducir una contraseña válida, mínimo 6 caracteres"}) {
  return (isEmpty(value) != null)
      ? isEmpty(value)
      : (value.length >= 6)
          ? null
          : message;
}

String isEmail(String value,
    {String message = "Introducir un correo electrónico válido"}) {
  Pattern pattern =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  RegExp regExp = new RegExp(pattern);
  return (isEmpty(value) != null)
      ? isEmpty(value)
      : (regExp.hasMatch(value))
          ? null
          : message;
}

String isVerifiedPassword(String value, String password,
    {String message = "Las contraseñas no coinciden"}) {
  return (value != password) ? message : isPassword(value);
}
