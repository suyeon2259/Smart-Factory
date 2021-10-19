package process_test;
import java.io.*;
import java.net.*;
import java.nio.*;

public class SocketClient {
	public static void main(String... args) {
		try (Socket client = new Socket()) {
			InetSocketAddress ipep = new InetSocketAddress("127.0.0.1", 9999);
			client.connect(ipep);
			try (OutputStream sender = client.getOutputStream(); InputStream receiver = client.getInputStream();) {
				for (int i = 1; i < 3; i++) {
					String msg = "'img/result"+i+".jpg'";
					byte[] data = msg.getBytes();
					ByteBuffer b = ByteBuffer.allocate(4);
					b.order(ByteOrder.LITTLE_ENDIAN);
					b.putInt(data.length);
					sender.write(b.array(), 0, 4);
					sender.write(data);
					
					data = new byte[4];
					receiver.read(data, 0, 4);
					ByteBuffer b1 = ByteBuffer.wrap(data);
					b1.order(ByteOrder.LITTLE_ENDIAN);
					int length = b1.getInt();
					
					data = new byte[length];
					receiver.read(data, 0, length);
					
					msg = new String(data, "UTF-8");
					System.out.println(msg);
				}
			}
		} catch (Throwable e) {
			e.printStackTrace();
		}
	}
}
