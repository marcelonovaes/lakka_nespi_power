# lakka_nespi_power
Lakka 2.1 + NESPi CASE + Shutdown buttons





Adding the ability of soft shutdown to lakka and the NESPI CASE+ on the Raspberry Pi 3 B+







### How to install

1. Make sure the raspberry pi is connected to the internet.

2. Make sure SSH is enabled in Lakka (Config / Services / SSH Enable is ON).

3. ssh into lakka:

   ```bash
   ssh root@YOUR_LAKKA_IP_ADDRESS
   password: root (if unchanged)
   ```

   

4. In the terminal, type the one-line command below(Case sensitive):

   wget -O - "https://github.com/marcelonovaes/lakka_nespi_power/raw/master/install.sh" | bash

5. Your Raspberry Pi will reboot and you're done!







