== save_instance

Trying to call the base class version of `onSaveInstanceState` for a Fragment generates a `NoMethodError`

To reproduce:
   * build the project and run on device
   * rotate the device
   * a `NoMethodError` will appear in the console
