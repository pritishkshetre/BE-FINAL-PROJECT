/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Networks;

import com.mysql.jdbc.log.Log;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileWriter;
import java.io.IOException;
import org.apache.commons.net.ftp.FTPClient;


public class DRIVE_Network {

    FTPClient client = new FTPClient();
    FileInputStream fis = null;
    boolean status;

  
    public boolean upload(File file, String pack) {
        try {

            client.connect("www.drivehq.com");
            client.login("ishwarcloud", "Ishwar@2130");
            System.out.print("\nLogin Success");
            client.enterLocalPassiveMode();
            fis = new FileInputStream(file);
            status = client.storeFile(pack + file.getName(), fis);
            System.out.print("\nUploaded");

            //file path of drive storage
            client.logout();
            fis.close();

        } catch (Exception e) {
            System.out.println(e);
        }
        if (status) {
            System.out.println("success");
            return true;
        } else {
            System.out.println("failed");
            return false;

        }

    }

}
