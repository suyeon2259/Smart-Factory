package process_test;

import java.awt.Color;
import java.awt.image.BufferedImage;
import javax.imageio.ImageIO;
import java.io.File;
public class ComparingImages {
   public static void main(String[] args) throws Exception {
      BufferedImage img1 = ImageIO.read(new File("img/result.jpg"));
      BufferedImage img2 = ImageIO.read(new File("img/change2.jpg"));
      int w1 = img1.getWidth();
      int w2 = img2.getWidth();
      int h1 = img1.getHeight();
      int h2 = img2.getHeight();
      
      if ((w1!=w2)||(h1!=h2)) {
         System.out.println("Both images should have same dimwnsions");
      } else {
         long diff = 0;
         for (int j = 0; j < h1; j++) {
            for (int i = 0; i < w1; i++) {
               // 이미지의 RGB 픽셀 값을 저장
               int pixel1 = img1.getRGB(i, j);
               Color color1 = new Color(pixel1, true);
               int r1 = color1.getRed();
               int g1 = color1.getGreen();
               int b1 = color1.getBlue();
               int pixel2 = img2.getRGB(i, j);
               Color color2 = new Color(pixel2, true);
               int r2 = color2.getRed();
               int g2 = color2.getGreen();
               int b2= color2.getBlue();
               // 두 이미지의 RGB 픽셀 값의 합을 비교 후 결과 도출
               long data = Math.abs(r1-r2)+Math.abs(g1-g2)+ Math.abs(b1-b2);
               diff = diff+data;
            }
         }
         double avg = diff/(w1*h1*3);
         double percentage = 100-(avg/255)*100;
         System.out.println("유사도: "+percentage);
         System.out.println("유사도: "+Math.round(percentage*100)/100.0);
      }
   }
}