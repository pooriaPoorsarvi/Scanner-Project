import java.io.FileReader;
import java.io.IOException;

class main{

    public static void main(String[] args) throws IOException {
        FileReader fileReader = new FileReader("test1.txt");
        MyScanner yylex = new MyScanner(fileReader);
        Symbol a = yylex.myScanFunction();
        System.out.println(a);
        System.out.println(a.what);
    }

}