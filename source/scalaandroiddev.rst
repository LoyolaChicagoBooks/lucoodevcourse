Android App Development Using Scala
===================================

In this chapter, we discuss the tools and processes for developing Android apps using Scala in detail.

Prerequisites
-------------

Required Development Tools
^^^^^^^^^^^^^^^^^^^^^^^^^^

* Java Development Kit (JDK) 6 or higher through your package management 
  system or from
  `Oracle <http://www.oracle.com/technetwork/java/javase/downloads>`_; 
  to verify, visit `this site
  <http://www.java.com/en/download/installed.jsp>`_ 
  and, if necessary, download Java from the same place. 
  (On a Mac, be sure to do this in Safari.)

  .. warning:: Check specific prerequisite details for your platform; in particular, on the Mac, a Java 6 JDK is required to run IDEA, though you can (and should) use a Java 8 JDK as development target.

  .. warning:: On Windows, it is usually best to install the JDK in a location that does not contain spaces.

* `Android SDK <http://developer.android.com/sdk>`_
* `Simple Build Tool (sbt) <http://www.scala-sbt.org>`_
* `android-sdk-plugin <https://github.com/pfn/android-sdk-plugin>`_
  
  - *this is included in each of the code examples, so no explicit installation is required*
  -  detailed *usage instructions* are `half way down past the change log <https://github.com/pfn/android-sdk-plugin>`_

* `Git <http://git-scm.com/>`_ distributed version control system (DVCS)

Recommended Tools
^^^^^^^^^^^^^^^^^

- `JetBrains IntelliJ IDEA CE <http://www.jetbrains.com/idea>`_ (the latest stable version is currently 13.1)
- IDEA Scala plugin installed through the IntelliJ IDEA plugin manager

  - *installation:* ``IntelliJ IDEA > Preferences > Plugins > Browse
    repositories``, then find and right-click ``Scala``, choose
    ``download and install``, close repository browser, and hit ``OK`` to restart IDEA
  - *documentation:* `Scala development in IDEA <http://confluence.jetbrains.com/display/IntelliJIDEA/Scala>`_

- IDEA SBT plugin installed through the IntelliJ IDEA plugin manager
  
  - *installation:* ``IntelliJ IDEA > Preferences > Plugins > Browse
    repositories``, then find and right-click ``SBT``, choose
    ``download and install``, close repository browser, and hit ``OK`` to restart IDEA
  - *documentation:* `idea-sbt-plugin <https://github.com/orfjackal/idea-sbt-plugin/wiki>`_


Preparation
^^^^^^^^^^^

- Download a *standalone* Android SDK.

  #. visit http://developer.android.com/sdk/index.html
  #. expand "sdk for existing ide"
  #. press download button
  #. unzip to a suitable location, e.g., ``/Applications/Local/android-sdk-macosx``, which we will refer to as ``ANDROID_HOME``

- Set up the Android SDK and download SDK components.

  #. run the Android SDK manager, ``$ANDROID_HOME/tools/android``
  #. check Android SDK platform tools and build tools version 20, 19.1.0, 19.0.1
  #. check Android 4.3 (API 18) (`the API 19 emulator has a bug
     related to screen rotation
     <http://stackoverflow.com/questions/17964833/android-emulator-not-rotating-to-landscape>`_)
  #. check Android support repository and Google repository (see also `here <http://stackoverflow.com/questions/20761872/gradle-does-not-resolve-support-library>`_)
  #. check HAXM (hardware acceleration for the emulator)
  #. on Windows, check USB driver
  #. install selected packages

  .. image:: images/sdkinstall.png
     :alt: Recommended AVD configuration
     :scale: 50%

- Configure virtual machine hardware acceleration per
  `these instructions <http://developer.android.com/tools/devices/emulator.html#accel-vm>`_.

  - on Windows or Mac, look in ``$ANDROID_HOME/extras/intel``
  - on Linux, follow `these instructions <https://software.intel.com/en-us/blogs/2012/03/12/how-to-start-intel-hardware-assisted-virtualization-hypervisor-on-linux-to-speed-up-intel-android-x86-gingerbread-emulator>`_
- Create an Android Virtual Device (AVD) of your choice (perhaps resembling your phone) per
  `these instructions <http://developer.android.com/tools/devices>`_.   

  - you can run the `AVD manager <http://developer.android.com/tools/help/avd-manager.html>`_ from the command line: 

    .. code-block:: bash

      $ $ANDROID_HOME/tools/android avd

  - the virtual device should support API level 18 (Android 4.3) and have an x86
    CPU, a skin with hardware controls, and the option *hardware
    keyboard present* checked

  .. image:: images/avdconfig.png
     :alt: Recommended AVD configuration
     :scale: 50%

  - to run the Android emulator from the command line, where n4 is the name you chose for the virtual device you just created:

    .. code-block:: bash

      $ $ANDROID_HOME/tools/emulator @n4 &

- If you have an Android device and wish to use it for development,
  you can follow `these instructions <http://developer.android.com/tools/device.html>`_
  to enable it.

- Fork the desired project from 
  `this collection <https://github.com/LoyolaChicagoCode?query=android-scala>`_, 
  then clone it to your local workstation using `Git <http://git-scm.com>`_.

Developing on the Command Line
------------------------------

We recommend globally and persistently setting ``$ANDROID_HOME``
(`Windows instructions
<http://www.computerhope.com/issues/ch000549.htm>`_, `Mac OS X
instructions <http://stackoverflow.com/questions/25154555>`_) as
discussed below and putting ``$ANDROID_HOME/tools`` and
``$ANDROID_HOME/platform-tools`` in the ``$PATH``. These instructions
assume that you have done this; if not, you can still invoke the
``adb`` and ``emulator`` commands by specifying their full paths.


Specifying the location of the Android SDK
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

You can either

- set ``$ANDROID_HOME`` to the directory where you installed your 
  Android SDK *(recommended)*

- create a file ``local.properties`` in your project root 
  (or copy an existing one) with a single line
  
  .. code-block:: bash

        sdk.dir=/location/of/android/sdk

  *You need to do this step for each project you clone to your local workstation.*

Starting the emulator
^^^^^^^^^^^^^^^^^^^^^

To start the emulator:

.. code-block:: bash

    $ emulator @YourAVD &

It will take the emulator a couple of minutes to boot to your AVD's 
home or lock screen. If you set up hardware acceleration correctly, 
you will see

.. code-block:: bash

    HAX is working and emulator runs in fast virt mode

To verify that you have a connection with the emulator:

.. code-block:: bash

    $ adb devices

The resulting list should look like this:

.. code-block:: bash

    List of devices attached
    emulator-5554   device

If this is not the case, restart the adb server

.. code-block:: bash

    $ adb kill-server
    $ adb start-server

and check again.

Viewing the log
^^^^^^^^^^^^^^^

In Android, all log messages typically carry a tag. 
In this example, the tag for the main activity is  

.. code-block:: scala

    private def TAG = "hello-android-activity"

You can then write tagged log messages like this:       
    
.. code-block:: scala

    Log.i(TAG, "onCreate")
    
You can view the complete log using this command:
    
.. code-block:: bash

    $ adb logcat
    
This quickly results in too much information. 
To view only the messages pertaining, say, to a particular tag, 
you can filter by that tag:
     
.. code-block:: bash

    $ adb logcat | grep hello

Running the application
^^^^^^^^^^^^^^^^^^^^^^^

Once your emulator is running or device connected, you can install and
run the app:

.. code-block:: bash

    $ sbt clean android:run

The app should now start in the emulator and you should be able to
interact with it. *(Cleaning before running ensures that the app gets
installed properly on the emulator.)*

.. warning:: If you get this error ``Unsupported class version number
	     [52.0] (maximum 51.0, Java 1.7)))`` (usually near the top
	     of a long stack trace), make sure you are *not* using
	     Java 8.

Running the tests
^^^^^^^^^^^^^^^^^

This command runs the unit tests and the Robolectric-based
out-of-container functional tests.

.. code-block:: bash

    $ sbt test
    
.. warning:: In-container Android instrumentation tests are included
	     in some of the examples (sharing a testcase superclass
	     with the Robolectric tests) and work in principle, but
	     not with the current build file for reasons we do not yet
	     understand. We will rely on the Robolectric-based tests
	     instead.

Starting from scratch
^^^^^^^^^^^^^^^^^^^^^

We have not been able to get pfn's gen-android task to work even though
we tried with a global installation of the plugin.

In addition to the usual `sbt directory structure
<http://www.scala-sbt.org/0.13/tutorial/Directories.html>`_, the key
ingredients are

- ``build.sbt`` like in `our examples <https://github.com/LoyolaChicagoCode?query=android-scala>`_

  - set project name and version as desired
  - review the library dependencies, e.g., choose between Mockito and
    ScalaMock
  - review the Proguard options

- ``project/plugins.sbt`` containing

  .. code-block:: scala

   addSbtPlugin("com.hanhuy.sbt" % "android-sdk-plugin" % "1.3.5")

   addSbtPlugin("com.hanhuy.sbt" % "sbt-idea" % "1.7.0-SNAPSHOT")

   resolvers += Resolver.sbtPluginRepo("snapshots")

  *(The blank lines are required.)*

- ``project/build.scala`` containing

  .. code-block:: scala

   object Build extends android.AutoBuild

For details, please refer to the `android-sdk-plugin documentation
<https://github.com/pfn/android-sdk-plugin>`_.

Developing with IntelliJ IDEA
-----------------------------

Configuring IntelliJ IDEA
^^^^^^^^^^^^^^^^^^^^^^^^^

It is convenient to configure the required SDKs at the global (IDE) level before working on new or existing projects.

- configure the Java SDK at the global (IDE) level using `these
  instructions
  <http://www.jetbrains.com/idea/webhelp/configuring-global-project-and-module-sdks.html>`_
  (you can go through the initial dialog or use ``Command ;`` on the
  Mac to open the project structure dialog directly)

- repeat these steps for the Android SDK

Generating the configuration files
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

This step requires that you have the ``sbt-idea`` plugin installed per the
instructions for pfn's plugin.

.. code-block:: bash

    $ sbt gen-idea
    
You will have to repeat this step after every change to the ``build.sbt`` or ``AndroidManifest.xml`` files 
(see also under "adding dependencies" below.

Opening the project in IDEA
^^^^^^^^^^^^^^^^^^^^^^^^^^^

Open *(not import)* the project through the initial dialog or ``File > Open``.
You should now be able to edit the project with proper syntax-directed
editing and code completion.

Right after opening the project, you may be asked to confirm the location of
the Android manifest file.

*If you ever get a popup saying that this is an sbt-based project and
offering to import it, choose ignore.*

Running the tests and the application
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Some aspects of generated IDEA Android/Scala project do not work out
of the box.  We have found it easier to open a terminal within IDEA
using ``View > Tool Windows > Terminal`` and running ``sbt test`` or
``sbt android:run`` as desired. In the latter case, the app should
start in the emulator and you should be able to interact with it.

Integrating IDEA and sbt
^^^^^^^^^^^^^^^^^^^^^^^^

For a faster edit-build-run cycle, though, you will want to perform
the IntelliJ IDEA integration described in the *Advanced Usage*
section of `pfn's android-sdk-plugin documentation
<https://github.com/pfn/android-sdk-plugin/blob/master/README.md>`_. This
requires IDEA with both the Scala *and* SBT plugins mentioned above.

In our experience, this integration requires the following adjustments
*on a per-project basis*:

- edit the default runtime configuration for Android Application to 
  invoke ``sbt android:package`` instead of ``Make``
- edit the default runtime configuration for ScalaTest to 
  invoke ``sbt test:products`` instead of ``Make``

Adding build dependencies
-------------------------

To add a dependency, you can usually

- look it up by name in the `Central Repository <http://search.maven.org>`_
  or `MVNrepository <http://mvnrepository.com>`_
- find the desired version (usually the latest released or stable version)
- select the sbt tab
- copy the portion _after_ ``libraryDependencies +=``
- paste it into this section of ``build.sbt`` (followed by a comma)

  .. code-block:: scala

        libraryDependencies ++= Seq(

If you are using IntelliJ IDEA, you will also need to

- rerun

  .. code-block:: bash

        $ sbt gen-idea

- back in IDEA, confirm that you want to reload the project
 
- reconfirm the location of the Android manifest file

Optional Tools
--------------

For Windows users
^^^^^^^^^^^^^^^^^

- `TortoiseHg <http://tortoisehg.bitbucket.org>`_ (integration of Mercurial with Windows Explorer)
- `Ubuntu in a virtual machine <http://theholmesoffice.com/installing-ubuntu-in-vmware-player-on-windows>`_ (consider this option if you are a Windows user and have trouble getting things to work)

For Windows and Mac users
^^^^^^^^^^^^^^^^^^^^^^^^^

- `SourceTree <http://www.sourcetreeapp.com>`_ is a GUI client for Mercurial and Git

For all users
^^^^^^^^^^^^^

- `Genymotion <http://www.genymotion.com>`_ emulator and IDEA plugin
- These are useful additional Android Studio/Intellij IDEA
  plugins. (Installation procedure is the same as for the Scala
  plugin.)

  - Code Outline 2
  - Key Promoter (helps you learn keyboard shortcuts)
  - Markdown
  - Scala import organizer

- These are useful additional sbt plugins. `You can install them per
  project or
  globally. <http://www.scala-sbt.org/0.13.5/docs/Getting-Started/Using-Plugins.html>`_ 

  - `sbt-scoverage <https://github.com/scoverage/sbt-scoverage>`_:
    uses Scoverage to produce a test code coverage report
  - `ls-sbt <https://github.com/softprops/ls>`_:  browse available
    libraries on GitHub using ls.implicit.ly
  - `sbt-dependency-graph
    <https://github.com/jrudolph/sbt-dependency-graph>`_: creates a
    visual representation of library dependency tree
  - `sbt-updates <https://github.com/rtimush/sbt-updates>`_: checks
    central repos for dependency updates
  - `cpd4sbt <https://github.com/sbt/cpd4sbt>`_: copy/paste detection
    for Scala *(be sure to set* ``cpdSkipDuplicateFiles := true`` *in 
    Android projects to avoid a false positive for each source file)*
  - `scalastyle <https://github.com/scalastyle/scalastyle-sbt-plugin>`_: static code checker for Scala
  - `sbt-stats <https://github.com/orrsella/sbt-stats>`_: simple, extensible source code statistics/metrics
  - `sbt-scalariform <https://github.com/sbt/sbt-scalariform>`_:
    automatic source code formatting using Scalariform


Tips
----

- IntelliJ IDEA has a built-in native terminal for your OS. This allows you to use, say, hg or sbt conveniently without leaving IDEA.::

        View > Tool Windows > Terminal

- To practice Scala in a light-weight, exploratory way, you can use Scala worksheets in IntelliJ IDEA. These will give you an interactive, console-like environment, but your work is saved and can be put under version control.::

        File > New > Scala Worksheet

  *You can even make it test-driven by sprinkling assertions throughout your worksheet!*
