library safe_filename;

final List<String> reservedCharacters = [
  '?',
  ':',
  '"',
  '*',
  '|',
  '/',
  '\\',
  '<',
  '>',
  '+',
  '[',
  ']',
];

final RegExp onlyAlphanumericRegex = RegExp(r'''[^a-zA-Z0-9\s.]''');

String encode(
  String filename, {
  String separator = '-',
  bool withSpaces = false,
  bool lowercase = false,
  bool onlyAlphanumeric = false,
}) {
  String returnString = filename;
  onlyAlphanumeric
      ? returnString = returnString.replaceAll(onlyAlphanumericRegex, '')
      : reservedCharacters.forEach((c) {
          returnString = returnString.replaceAll(c, separator);
        });
  if (!withSpaces) returnString = returnString.replaceAll(' ', separator);
  return lowercase ? returnString.toLowerCase() : returnString;
}
