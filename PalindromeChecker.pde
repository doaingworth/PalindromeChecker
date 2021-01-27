public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      System.out.println(lines[i] + " IS a palindrome.");
    }
    else
    {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String sWord)
{
    sWord = sWord.replaceAll(" ", "");
    sWord = sWord.toLowerCase();
    sWord = onlyLetters(sWord);
    if(sWord.equals(reverse(sWord))) {
      return true;
    }
    else {
      return false;
    }
}
public String reverse(String sWord)
{
    String input = sWord;
    if (input == null) {
	        return input;  
    }
	  
	  String output = "";
	 
	  for (int i = input.length() - 1; i >= 0; i--) {
	    output = output + input.charAt(i);
	  }
	 
	  return output;
}
public String onlyLetters(String sString)
  {
    String str = "";
    char ch;
    for(int x = 0; x < sString.length(); x++) {
      ch = sString.charAt(x);
      if(Character.isLetter(ch)) {
        str += sString.substring(x, x + 1);
      }
    }
    return str;
  }

