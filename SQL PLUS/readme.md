### Quick Navigation
* Click the link to go to specific heading

  * [Downloading Zip File](#Download-and-start-installation)

  * [Installation](#Run-setup-file)

  * [User creation](#User-creation)

  * [Dropping user](#Dropping-user)

  * [Demo Queries](#Demo-Queries)

  * [Writing real queries](#Writing-real-queries)


<br>
<!-- ------------------------------------------- -->

---

### Download and start installation

* Use SJCET college mail, go to drive and download the [zip_file](https://drive.google.com/drive/folders/16MCEMFbHjtlix31bOx_wI8adU1nD5j2j)

* No need to extract the zip, just open and double-click the 'setup.exe'

<img src="images/setup.png" title="setup.exe" width="400"/>

<br>

<!-- ------------------------------------------- -->
---

### Installation

   * Run 'setup.exe'

   * Put your mouse cursor on the image to see instructions.

* Extracting... wait

<img src="images/inst1.jpeg" title="Extracting... wait" width="400"/>

* Accept the agreements

<img src="images/inst2.jpeg" title="Accept the agreements" width="400"/>

* Remember the password

<img src="images/inst3.jpeg" title="Set Password" width="400"/>

* Click 'Install'

<img src="images/inst4.jpeg" title="Click 'Install'" width="400"/>

* Loading...Finished

<img src="images/inst5.jpeg" title="Loading...Finished" width="400"/>

<br>

<!-- ------------------------------------------- -->

---

### User creation

* Go to 'START' and type 'sql plus'
<img src="images/sqlplus_search.png" title="SQL Plus on start" width="400"/>


* open the 'sql plus' application & you will see

<img src="images/sql_opening_page.png" title="SQL Plus on start" width="400"/>


* Type near 'Enter user-name:'

        / as sysdba

* For changing the settings to accept any type of username

        alter session set "_ORACLE_SCRIPT"=true;

* Change _username_ to your username
* Set a good password like '1234' :relieved: 

        create user <username> identified by <password>;

* Change _username_ to your username

        grant unlimited tablespace to <username>;

* Change _username_ to your username

        grant resource, connect, dba to <username>;


* Demo image:

<img src="images/SQL1.png" title="Demo user creation" width="400"/>

<br>

<!-- ------------------------------------------- -->

---

### Dropping user

* Drop unwanted users using

        drop user <username>

<img src="images/drop_user.png" title="Drop user" width="400"/>

<br>

<!-- ------------------------------------------- -->

---

### Demo Queries

* Open another 'SQL Plus' tab

* For login, type your username & password

* And, try creating some demo tables & inserting values in it

<img src="images/SQL2.png" title="Testing new user" width="400"/>

<br>

<!-- ------------------------------------------- -->

---

### Writing real queries - Click [this](https://github.com/004Ajay/SQL)