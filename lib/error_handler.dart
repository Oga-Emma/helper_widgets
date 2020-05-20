class ErrorHandler {
  String getErrorMessage(err) {
    var message = "Internal Error";
    try {
      if (err != null && err.message != null && err.message.isNotEmpty) {
        return err.message;
      }
    } catch (err) {
      print(err);
    }

    return message;
  }
}
