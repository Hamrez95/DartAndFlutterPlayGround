void main() {
  var comment = "this comment contains a bad words.";

  BadWordsFinder(comment);
}

void BadWordsFinder(String text) {
  List BadWords = ['bad', 'good', 'chert', 'bishor'];

  List comments = text.split(" ");
  
  for (var item in comments) {
    for (var item1 in BadWords) {
      if (item == item1) {
        print("this comment has been blocked");
      }
      else
      break;
    }
  }  
}
