# EyesLibrary for Robot Framework

#### Table of Contents

- [Introduction](#Introduction)
- [Requirements](#Requirements)
- [Installation](#Installation)
- [Directory Layout](#Directory%20Layout)
- [Usage](#Usage)
- [Running the Demo](#Running%20the%20Demo)
- [Things to Note When Using Applitools](#Things%20to%20Note%20When%20Using%20Applitools)
- [Getting Help](#Getting%20Help)
- [Credits](#Credits)

## Introduction

EyesLibrary is a Robot Framework Library to automate visual software testing verification. EyesLibrary uses a Python SDK called [Eyes-Selenium](https://pypi.python.org/pypi/eyes-selenium) from the tool [Applitools Eyes](http://applitools.com/), and can be used with the [SeleniumLibrary](https://github.com/robotframework/SeleniumLibrary) and/or the [AppiumLibrary](https://github.com/serhatbolsu/robotframework-appiumlibrary) .

This library is a fork of [Robot-AppEyes](https://github.com/NaviNet/Robot-AppEyes).
In order to use EyesLibrary, you are required to [sign up](https://applitools.com/sign-up/) for a free account with Applitools. See the [Usage](https://github.com/joel-oliveira/EyesLibrary#usage) section.

- Information about EyesLibrary keywords can be found on the [Keyword Documentation](https://joel-oliveira.github.io/EyesLibrary/) page.

- The [Applitools Documentation](https://pypi.org/project/eyes-selenium/) may be consulted in order to understand how Eyes works.

- More information about the SeleniumLibrary can be found on the [SeleniumLibrary Repo](https://github.com/robotframework/SeleniumLibrary) and in the [Keyword Documentation](http://robotframework.org/SeleniumLibrary/SeleniumLibrary.html).

- More information about the AppiumLibrary can be found on the [AppiumLibrary Repo](https://github.com/serhatbolsu/robotframework-appiumlibrary) and in the [Keyword Documentation](http://serhatbolsu.github.io/robotframework-appiumlibrary/AppiumLibrary.html).

## Requirements

The following versions were used to test the library:

- Python 2.7.14 or 3.6.0
- Robot Framework 3.1.1
- Eyes-Selenium 3.16.2
- SeleniumLibrary 3.3.1 (For Web Tests)
- AppiumLibrary 1.5.0.3 (For Mobile Tests)

## Installation

The recommended **installation** method is using [pip](http://pip-installer.org):

    pip install robotframework-eyeslibrary

To **update** both the library and all
its dependencies to the latest version:

    pip install --upgrade robotframework-eyeslibrary

To install a **specific version**:

    pip install robotframework-eyeslibrary==(DesiredVersion)

#### Uninstall

To uninstall EyesLibrary use the following pip command:

    pip uninstall robotframework-eyeslibrary

## Directory Layout

**EyesLibrary/**

&ensp;&ensp;The Robot Framework Python Library that makes use of the Applitools Eyes Python SDK

**tests/acceptance/**

&ensp;&ensp;Test files to display what the keywords from EyesLibrary accomplish

**docs/**

&ensp;&ensp;Documentation for the EyesLibrary: Keyword Documentation and ChangeLog

## Usage

You must create a [free account](https://applitools.com/sign-up/) with Applitools in order to run
EyesLibrary and return results.

Then, to use the library, follow [EyesLibrary Keyword Documentation](https://joel-oliveira.github.io/EyesLibrary/).

This is a Robot Framework library. If you're not familiarized with Robot Framework, 
please consult [Robot Framework User Guide](http://code.google.com/p/robotframework/wiki/UserGuide).

## Running the Demo

At _tests/acceptance_ directory, you can find Robot Framework tests for:

- Web
- Android Browser
- Android Native App
- Android Hybrid App
- iOS Browser
- iOS Native App
- iOS Hybrid App

Before running the tests, your Applitools API Key must be set in _tests/acceptance/resources/common.robot_, by replacing "YourApplitoolsApiKey" with your own key.

When running the mobile tests, you must replace the variables within _tests/acceptance/resources/mobile.robot_ with your own, as well as the ones in _tests/acceptance/resources/android.robot_ or _tests/acceptance/resources/ios.robot_, according to the OS in use.

For instance, you may want to use a different Remote URL than the one provided in the variables. So, if you are working with [TestingBot](https://testingbot.com/), for example, you'd have to replace the Remote URL variable in _tests/acceptance/resources/mobile.robot_:

    ${REMOTE URL}          http://${CREDENTIALS}@hub.testingbot.com/wd/hub

Before running the Android Hybrid App tests, you need to install the Demo App (APK found at _tests/resources_) in your device.

For in depth detail on how the keywords function, read the Keyword documentation found here: [Keyword Documentation](https://joel-oliveira.github.io/EyesLibrary/)

**Remember to include your Applitools API key otherwise the
test will not run.** To run a test, open a command prompt within the _tests/acceptance_ folder and run:

    robot FILENAME.robot

For example, to run the Test Suite for Web:

    robot web.robot

**Note:** It is assumed that anyone who wants to use this demo is already able to execute robot tests using SeleniumLibrary (for web tests) and/or AppiumLibrary (for mobile tests). The browser used to navigate with SeleniumLibrary is Google Chrome.

## Things to Note When Using Applitools

- The tests will be accepted automatically by Applitools Eyes after the first run because a new baseline is being created. A second test run will show a comparison between screens.
- Changing the Applitools baseline parameters will create a new baseline, that is automatically accepted on the first run. (For more information, read the article: [What is a ‘baseline’ and how is a baseline created?](https://help.applitools.com/hc/en-us/articles/360007188691-What-is-a-baseline-and-how-is-a-baseline-created-)
- The viewport size should not be set to greater values than the maximum size of the device's window.
(For more information on using viewports, consult [Using viewports in Eyes](https://applitools.com/docs/topics/general-concepts/using-viewports-in-eyes.html))

## Getting Help

To be defined. It might be helpful to read [Applitools Documentation](https://applitools.com/docs).

## Credits

EyesLibrary was forked from [Robot-AppEyes](https://github.com/NaviNet/Robot-AppEyes) on version 1.2.

Robot-AppEyes authors:

- [Thomas Armstrong](https://github.com/tbarmstrong)
- [Simon McMorran](https://github.com/SIMcM)
- [Gareth Nixon](https://github.com/GarethNixon)
- [Adam Simmons](https://github.com/adamsimmons)

EyesLibrary then emerged as an independent library from the original one, on version 2.0.
