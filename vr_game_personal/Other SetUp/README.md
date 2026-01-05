# Assignment 1: Getting Started with Godot

The purpose of the assignment is twofold:

1. Complete the setup of the virtual reality hardware and software that we will be using in this course.
2. Do a little work with Godot.

## Submission Information

You should fill out this information before submitting your assignment.  Make sure to document the name and source of any third party assets such as 3D models, textures, or any other content used that was not solely written by you.  Include sufficient detail for the instructor or TA to easily find them, such as asset store or download links. Also remember to document in your code wherever you use AI programming assistance.

Name: 

UWM Email:

Third Party Assets:

## Step 1: Oculus Account Setup

In order to build VR applications on the Oculus quest, you will need to create an Oculus developer account at: https://developer.oculus.com/. You may need a Meta account for this step, but should not need to link this account to any social media accounts.

Oculus will ask you to either enter a credit card number or enroll in 2 factor authentication for verification of your developer account. No automatic charges will be made to your card if you choose to go that route.

## Step 2: Oculus Organization Setup

Because Meta likes to make things unnecessarily complicated, your Oculus developer account also needs to be part of an organization.  The easiest way is for you to create one yourself. It is fairly simple, just follow the prompts. If you are uncomfortable with that, let me know and I can add you to mine. It is just not a very easy process to do, and has to be done manually, so it will take a bit of time.

You should now be able to activate developer mode on your headset (described in a later step).   Note that your Oculus user name is **not** the same as the email address associated with the account! 

## Step 3: Confirm Hardware Prerequisites

The Oculus Quest will also require that have access to the following:
1.	An Android or Apple mobile device for initial setup.  If you do not have a smartphone or tablet, it is possible to complete this step by borrowing one from another student.  I can also provide assistance if you need help with completing this step.
1.	A cable for connecting the headset to a computer.  Please note that the Quest comes with a USB-C to USB-C cable only.  If your computer does not have a USB-C port, then you may need to obtain a USB-C to USB-A cable.  If you have a newer smartphone with a USB-C charging port, then may already have a cable that will work.  However, if you are purchasing one, I recommend buying one that is advertised to work with Oculus Link.
1.	Batteries for the controllers.  It is highly recommended that you always have spare batteries ready in case they run out while you are in the middle of working on an assignment.

## Step 4: Headset Checkout

Hopefully by now everybody has checked out their headset. Please see me as soon as possible if you are unable to check one out.

## Step 5: Reset the Headset

If you turn on the headset and it appears that someone else is logged in, then the previous user most likely forgot to reset the headset after they were done.  In that case, I strongly recommend that you complete a factory reset before continuing further.  You can find instructions here:https://www.meta.com/help/quest/articles/fix-a-problem/troubleshoot-headsets-and-accessories/troubleshooting-factory-reset-quest/

After you reset the headset, you can follow the instructions in the box to complete the setup.  Please note that this will require installing the Oculus app on an Android or Apple mobile device and logging in with your Oculus account.  During this process, the headset will download the newest updates. 

## Step 6: Activate Developer Mode

1.	After you complete the setup process, you will need to enable developer mode.  On your mobile device, open the Oculus app and select the Quest device.  If you completed steps 1 and 2 of this assignment, then you will find a Developer Mode option under Headset Settings.
1.	After this step is completed, you will be able to build VR applications by connecting the Quest to a computer, and the mobile app is no longer necessary.
1.	If this is your first time using an Oculus device, it is recommended that you spend some time familiarizing yourself with using the controllers and navigating the menus.  There are also several free demo games in the Oculus store that you can download and try (I recommend trying the BeatSaber demo).

## Step 7: Godot Setup

In this class, we will be learning to develop VR applications using Godot. 

### Installing Godot your own computer
Follow the instructions provided on this page: [https://godotengine.org/download/windows/](https://godotengine.org/download/windows/). We should not need the .NET version (with C# support).

Note that the download contains the editor exe file. This is not an installer, but rather the executable you run to start the editor. Put this in a safe place (e.g. Documents) so it is easy to find.

## Step 8: Setup Godot to make VR Applications
This is the most onerous part of this assignment and where I expect you will spend most of your time. I will tell you which online guides to follow, and provide some tips for things that I had to figure out. It is expected that you will try to figure out any issues you come across on your own. If you have spent more than a couple hours trying to fix something and cannot, then please come see me. Once you have played around with Godot a bit, follow these instructions exactly. I also recommend reading this entire step before starting it.

1. Setup Godot to export to Android: [https://docs.godotengine.org/en/stable/tutorials/export/exporting_for_android.html#doc-exporting-for-android](https://docs.godotengine.org/en/stable/tutorials/export/exporting_for_android.html#doc-exporting-for-android). The OpenJDK *must* be version 17. If you install OpenJDK 17 from the link provided, the "Java SDK Path" will be `C:\Program Files\Eclipse Adoptium\jdk-17.0.12.7-hotspot` for Windows. I don't know what it would be for Mac. "keytool" is a Java tool located in the SDK `bin` folder. If you installed OpenJDK 17 it should be added to your path. Add the keystore for both the Debug and Release profiles.

1. Setup Godot to deploy to Android: [https://docs.godotengine.org/en/stable/tutorials/xr/deploying_to_android.html](https://docs.godotengine.org/en/stable/tutorials/xr/deploying_to_android.html). When adding the "Godot OpenXR Vendors plugin", you will use the "AssetLib" tab, which is located to the right of "Script" on the top of the editor. You should not need to enable the plugin (see the note in that section).

1. Setting up XR in Godot: [https://docs.godotengine.org/en/stable/tutorials/xr/setting_up_xr.html](https://docs.godotengine.org/en/stable/tutorials/xr/setting_up_xr.html). Follow these instructions up to the "Open XR" header.

These tasks should only need to be done one time (i.e. not per project/assignment)

## Step 9: Build and Deploy a VR Application

To complete this assignment, you are going to create a simple virtual environment and then deploy the application on the Oculus Quest.   If you get stuck on any of these steps, please watch the Lecture 3 video that walks through these steps.

1. Check out this assignment using GitHub classroom.  An empty Godot project has already been created for you.
1. Create a new scene and save it.
1. Continue these instructions starting at "Open XR": [https://docs.godotengine.org/en/stable/tutorials/xr/setting_up_xr.html](https://docs.godotengine.org/en/stable/tutorials/xr/setting_up_xr.html). This part will need to be done for every assignment.
1. Add a `CSGBox3D` node as a child to the left and right controllers. Set the scale of the box to (0.1, 0.1, 0.1). This will stand in as a proxy for the controllers for now.
1. Build the APK file and deploy the project to your Quest headset. To build the file, go to `Project->Export` and choose the profile you created from the "Deploying to Android" tutorial. Change the "Export Path" to be `Assignment-1.apk`. This will put the compiled APK in the project's root folder. Do not put it somewhere else. To deploy the application, you can use a tool such as [SideQuest](https://sidequestvr.com/). Alternatively, and the suggested way, is to set up "one click deploy" on Godot using these instructions: [https://docs.godotengine.org/en/stable/tutorials/export/one-click_deploy.html#doc-one-click-deploy](https://docs.godotengine.org/en/stable/tutorials/export/one-click_deploy.html#doc-one-click-deploy) 
1. The first time you try to build on a new computer, you may get an error that USB debugging is not enabled.  Put on the headset, and you will see a popup to authorize the computer.  
1. Your scene should be loaded automatically.  If not, your application is also installed on the Quest and will show up in the Library under Unknown Sources.
1. Test the application on your Oculus Quest.  If it works (e.g. your head movements are translated to the virtual environment), then congratulations... you have a working VR development pipeline!

**To exit an application on the Quest, press the Oculus button on the right controller and a menu will pop up, then press "Quit".**

## Step 10: Add Some Objects to the Scene

1.	Now, go back to Godot and add a few 3D objects to the scene (boxes, cylinders, spheres, etc.).
2.	Move each object to different location around the user.
3.	When you have added at least four objects to your scene, *Build and Run* the project again.  

## Step 11: Animate an Object

In this step, you are going to add a GD script that animates one of the 3D objects you created in the previous step.  You can make the object do anything you want, with the following requirements:

1. The object should use the `_process()` function to continuously move in every frame.  You can change the object's position, rotation, scale, or any combination of the three.
2. The object should never move outside the user's view or disappear.  This means that you may need to make the animation cycle between two end points.

## Rubric

Graded out of 10 points. 

1. Project runs on the Quest (4)
1. Scene contains at least four new objects (3)
1. One of the objects is animated (3)

## Submission

You will need to check out and submit the project through GitHub classroom.  Make sure your APK file is in the root folder. Do not remove the `.gitignore` or `README.md` files.

The thing that will get graded is the APK file at the root of your project. If you are using Quest Link, pressing "Play" does not build the APK that is required for submission. Using "one click deploy" also does not build the APK. You will still need to build the project through the `Project->Export` window.

Please test that your submission meets these requirements.  For example, after you check in your final version of the assignment to GitHub, check it out again to a new directory and make sure everything opens and runs correctly.  You can also test your APK file by installing it manually using [SideQuest](https://sidequestvr.com/) (see Devleopment Environment page on Canvas). If your APK does not work when the TA clones your repo, you will lose points.

## Acknowledgement

This assignment is an edited version of an assignment created by Evan Suma Rosenberg, which was released under the CC BY-NC-SA 4.0 license.
  


