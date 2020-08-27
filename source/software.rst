Appendix: Course Software
-------------------------

*UNDER CONSTRUCTION*

Required Software
~~~~~~~~~~~~~~~~~

- `Java JDK 11 <https://www.oracle.com/java/technologies/javase-jdk11-downloads.html>`_ (Java 11 update 11.0.8 is the latest version at the time of this writing) - you probably need an Oracle userid to download this version

  - You can also download Java 11 from https://adoptopenjdk.net/ - be sure to *pick OpenJDK 11*
  - When you do the install on Windows you can tell AdoptOpenJDK to add Java 11 to your Path automatically

- `Git <http://git-scm.com/downloads>`_ (version control system - you can use this directly if Android Studio is not cooperative in updating a GitHub repository)

  - You may need to install Git if it's not automatically part of Android Studio
    - You may also need to tell Android Studio where Git is installed, so make a note of which directory/folder it's installed into
  - On OS X, follow these instructions:
    - Download the Git dmg file, right-click/CTRL-click on it, and click Open twice, then double click on the pkg file and follow the installation prompts
    - Also install xcode: open an OS X Terminal window, enter xcode-select --install, and follow any prompts
    - If you have Android Studio open, close and reopen it; it should now find Git OK - if not, Git lives in /usr/bin/git
- `Android Studio <https://developer.android.com/studio>`_ (follow the detailed instructions to install Android Studio and various SDKs)


Optional But Useful Software
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

- Secure Shell (SSH - optional)

  - http://www.chiark.greenend.org.uk/~sgtatham/putty/download.html (PuTTY/SSH for Windows)
  - Secure Shell is already installed in Mac OS X and Linux

- SourceTree (Git client for Windows and Mac - sometimes Android Studio is not cooperative in cloning or updating version-controlled repositories)

**Also, create a GitHub account here:** https://github.com**, using your Loyola email if you have not done that before - GitHub is a "repository manager" that you will use to create Android Studio solutions to projects throughout the course (using your Loyola email allows you to create private repositories and share them with an unlimited number of other students and me and our TA).**

You can run Android tests and apps in an emulator on your PC or deploy them to your Android phone or tablet (with the required developer settings). With Robolectric (introduced later in the course), you can run Android tests in an ordinary JVM without the presence of an emulator or device.


Recommended Software
~~~~~~~~~~~~~~~~~~~~

These are useful Android Studio/Intellij IDEA plugins:

- .ignore
- Code Outline
- Key Promoter (helps you learn keyboard shortcuts)
- MultiMarkdown


Alternative Stack
~~~~~~~~~~~~~~~~~

If you have a Mac and an iOS device, you may consider using XCode for iOS development with deployment to your device.
If you make this choice, you will be largely on your own if you run into problems, though.
*Please discuss with your instructor if interested in pursuing this path.*


Overview of Android Development Modes
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. todo:: update this section


Different software is required for each of these.

- local host
  - gradle on command-line
  - IDE such as Android Studio (our choice for this course)
- remote host
  - ssh, gradle on command-line, copy or download apk to device and install
  - entirely in the cloud via a hosted development environment and emulator
- target device
  - https://play.google.com/store/search?q=ide&c=apps&hl=en_US
