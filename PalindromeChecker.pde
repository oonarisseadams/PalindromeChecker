public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    //String space = new String(noSpaces(lines[i])); 
    if(palindrome(numLetters(noSpaces(noCapitals(lines[i]))))==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}





public boolean palindrome(String sWord)
{
  return sWord.equals(reverse(sWord));
}






public String reverse(String sWord)
{
    String a = new String();
    for(int i = (sWord.length()-1); i>-1; i--){
    a = a + sWord.charAt(i);}
    return a;
}






public String noSpaces(String sWord)
{
  String b = "";
 for (int i = 0; i<sWord.length(); i++){
   if(sWord.charAt(i) != ' '){
   b = b + sWord.charAt(i);}
 }
 return b;
}





public String numLetters(String sString){
  String c = new String("");
  for(int i = 0; i<sString.length(); i++){
    if(Character.isLetter(sString.charAt(i))==true){c = c + sString.charAt(i);}
  }
  return c;
} //fix
public String noCapitals(String sWord){
  return sWord.toLowerCase();
}


