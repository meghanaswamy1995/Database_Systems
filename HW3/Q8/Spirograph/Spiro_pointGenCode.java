import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;

public class Spiro {
    public static void main(String[] args) throws IOException{
       Path fileName = Path.of("./text");
        double t=0.00;
        double R = 8.0/10000;
        double r = 1.0/10000;
        double a = 4.0/10000;
        String finalVal=""; 

        while (t < 16*Math.PI){
            double  x=(R + r) * Math.cos((r / R) * t) - a * Math.cos((1 + r / R) * t)-118.28926337758953;
            double y = (R + r) * Math.sin((r / R) * t) - a * Math.sin((1 + r / R) * t)+34.02119533261387; 
            String res="";
            res+=String.valueOf(x)+ ',' +String.valueOf(y) + ",1\n"; 
            
            finalVal+=res;
        
            t=t+0.01 ;
        }

        Files.writeString(fileName,finalVal); 
    }
}
