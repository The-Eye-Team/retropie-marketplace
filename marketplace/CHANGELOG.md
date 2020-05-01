# Changelog

https://keepachangelog.com/en/1.0.0/
https://github.com/olivierlacan/keep-a-changelog/blob/master/CHANGELOG.md
https://github.com/olivierlacan/keep-a-changelog/edit/master/CHANGELOG.md

## 


## 0.4.1 - 2019‑01‑09

### Changed
- Moved from the package "7z" to "7zr"


## 0.4.0 - 2019‑01‑09

### Added
- p7zip support.

### Changed
- For the venv, changed the requirements for lxml. Specified an version to install it (lxml == 4.2.6).


## 0.3.5 - 2019‑01‑04

### Changed
- Change the list of available games into a checklist.


## 0.3.1 - 2019‑01‑02

### Fixed
- Delete an unnecessary printing.


## 0.3.0 - 2019‑01‑02

### Added
- Controller/Joystick support.

### Fixed
- Removed an unnecessary printing.


## 0.2.1 - 2019‑01‑01

### Added
- Shows an messagebox if there is an error with the gameslist.
- Added the gamename into the messagebox if a game is getting downloaded.

### Fixed
- Added an additional "if"-state in the host to check "lxml" if the object has an text.
- After installing a game, it will now check if the source file still exist before trying to delete it.
- Add more messagebox to avoid a black screen.


## 0.2.0 - 2018‑12‑26

### Added
- Creating a venv for Python.
- Install all necessary packages for the new venv.

### Changed
- Deleted the package-folder under "core" and changed every file to load the python-packages for the venv.
- Changed "get_menu_option.py"-file to not replace the "-store.rp" and only replace the ".rep" with an empty string.
- The "runcommand.sh"-file now starts the "python"-file from the venv. Also it replace the ".rp" in the menu_options with the names.


## 0.1.0 - 2018‑12‑23

Initial version
