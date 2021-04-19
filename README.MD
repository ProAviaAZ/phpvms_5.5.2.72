phpVMS 5.5.2.72
===============

**Updated version of phpVMS 5.5.2 (simpilot) with PHP 7.2 compatibility**

**Airport Lookup functions with new VACentral API (same as that used in phpVMS v7)**

Current release stable on PHP 7.2.19 environment (Apache 2.4.39, PHP 7.2.19, MySQL 5.6.44).


* Will install under PHP 7.2 - But a few Warning messages may show when installing. Install completes successfully. Some users will not experience any Warning messages during install.
* Full install required. Update install is not working correctly.
* Report any issues using the "Issues" tab above.
* This may install under PHP 7.0 and 7.1 - but has not been fully tested. Will not work on PHP 7.3+ at present.
* Will install using MySQL 5.6 and MySQL 5.7 (issues reported with MySQL above 5.7.4). Should install using MariaDB 10.1 (issues reported with Maria 10.2 and above).
* Installation outside the parameters listed may not receive support (Apache 2.4, PHP 7.2, MySQL 5.6).

**--------------------------------_CAUTION_------------------------------------------**

If you have modules and other addons that worked in version 5.5.2 or older releases of phpVMS they will most likely break in this
version. There are numerous changes to make this version php 7.2 compatible. It is suggested you look through the commits of this
version and that of your currently installed phpVMS version prior to installing. **It is suggested that you NOT install to your 
live website environment until you complete any module and addon updates in a development environment.** Additionally, do NOT tie this
installation directly to your present database - create a new database for this install (you can transfer data over AFTER all your
modules and addons are working correctly.

**---------------------------------------------------------------------------------**

**INSTALLATION**

Upload to your development environment, create a database. Run the installer in .../install/install.php

***** Original copyrights and licenses remain in effect *****

phpVMS - Virtual Airline Administration Software
 Copyright (c) 2008 Nabeel Shahzad (https://github.com/nshahzad/phpVMS)

 phpVMS is licenced under the following license:
   BSD 3-clause (per https://github.com/nshahzad/phpVMS/commit/e031365125668f6f7d9c92e8c284b2be14b61b2b)

________________________________________________________________________________

** ***** Start of original README ***** **
________________________________________________________________________________

Updated version of phpVMS maintained by David Clark/Simpilotgroup
https://github.com/DavidJClark/phpvms_5.5.x

Current 5.5.2 release stable on php 5.5.12 environment.

--------------------------------CAUTION------------------------------------------

This version is not for the faint of heart. If you have modules and other addons that worked on older releases of phpVMS they will most likely break in this version. There are numerous changes. I HIGHLY suggest you look through the commits on both the original phpVMS github repository as well as this one prior to updating. The phpVMS forum also holds a lot of information about using phpVMS and modules in php versions past 5.3.

---------------------------------------------------------------------------------

---
phpVMS - Virtual Airline Administration Software
 Copyright (c) 2008 Nabeel Shahzad (https://github.com/nshahzad/phpVMS)

 phpVMS is licenced under the following license:
   BSD 3-clause (per https://github.com/nshahzad/phpVMS/commit/e031365125668f6f7d9c92e8c284b2be14b61b2b)
---

INSTALLATION

Upload to your site, create a database. Run the installer in install/install.php

---
________________________________________________________________________________
** ***** End of original README ***** **
