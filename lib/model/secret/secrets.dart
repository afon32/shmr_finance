class Secrets {
  final String apiKey;
  final String apiUrl;

  Secrets({
    required this.apiKey,
    required this.apiUrl,
  });

  factory Secrets.empty() => Secrets(apiKey: '', apiUrl: '');
}
