# Create job files print for digital minilab Frontier

## Customizable settings

* set **DEVICE_NAME** - *Color space of Frontier (“PICsRGB” or “PICPD”)*
* set **SIZE_NAME** - *Name of print size (Selected from FdiaDevice.ini)*
* set **PRINT_CNT** - *Number of prints (1-999)*
* set **BACK_PRINT**
  * FREE - *The text strings of the 1st line and 2nd line entered in “Back Print” in the “AdministrativeSettings” screen are printed.*
  * FILE - *The order number (date), the ﬁle name and the text strings of the 1st line and 2nd line entered in “Back Print” in the “Administrative Settings” screen are printed.*
  * NONE - *No back printing is done*
* set **BACK_PRINT_LINE_1** - *A text string to be printed on the back of prints(A maximum of 40 alphanumeric characters)*
* set **BACK_PRINT_LINE_2** - *A text string to be printed on the back of prints(A maximum of 40 alphanumeric characters)*
* set **RESIZE**
  * FILLIN - *Fill-in*
  * FITIN - *Fit-in*
  * NONE - *No Resize*
* set **DSC_CHK**
  * TRUE - DSC automatic correction is performed.
  * FALSE - DSC automatic correction is not performed.
  
After launching the bat file, condition.txt and end.txt files will be created for all directories.
