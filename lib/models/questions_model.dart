class Questions 
{
  final String text;
  final List<String> options;
  const Questions(this.text, this.options);

  List<String> shuffledList() // function to shuffle the list of choices (options)
  {
    final shuffle = List.of(options);
    shuffle.shuffle();
    return shuffle;
  }
}