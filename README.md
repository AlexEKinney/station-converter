# Station Converter
This simple script converts the latest station data from the RDG's service into a simple to parse CSV file. The script is written in Bash, and is designed to be run on a Unix-like system. (No Windows support is provided.)

## Usage
You will need the following tools installed:
- xmlstarlet

You can install xmlstarlet on Ubuntu with the following command:
```bash
sudo apt-get install xmlstarlet
```

You will also need the latest station data from the RDG's service. You can download this data from the following URL:
```
https://raildata.org.uk/dashboard/dataProduct/P-bc13af96-8ca5-484a-be47-2ee0a3251b01/dataFiles
```
Automatic downloads can be achieved by setting up SFTP in the Rail Data Marketplace. I also recommend setting up a cron job to run this script daily, as to keep the station data up to date.

## Features
- Converts the latest station data from the RDG's service into a simple to parse CSV file.
- Only contains the CRS code, station name -- Perfect for use in simple projects.
- Easy to customise and extend. You can easily add the TIPLOC code and other data to the CSV file. 
- Get the latest list of stations, including new stations, with their CRS codes. (e.g. Seaton Delaval, SEJ)

## License
WTFPL License
