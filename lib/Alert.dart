_onAlertButtonPressed(context) {
  Alert(
    context: context,
    type: AlertType.error,
    title: "RFLUTTER ALERT",
    desc: "Flutter is more awesome with RFlutter Alert.",
    buttons: [
      DialogButton(
        onPressed: () => _onCustomAnimationAlertPressed(context),
        width: 120,
        child: const Text(
          "COOL",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      )
    ],
  ).show();
}