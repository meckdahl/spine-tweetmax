spine-tweetmax
==============

Spine sample app using Twitter Bootstrap HTML5 Boilerplate

Snippets below from Spine Documentation, which you should peruse:

http://spinejs.com/docs/example_contacts

I recommend reading the above example if you get lost (or vice versa)

This sample is commented up and was used to help me understand the ins and outs of
Spine.  I have simplified this to focus on UI display, and another developer
was working on Model integration at the same time at ScheduleMAX so we could
rapidly get the website redesign up and going!

Before we get started, I advise you to do the following:

    Gain a basic understanding of CoffeeScript
    Read the Introduction to Spine
    Skim the guides on the main Spine classes, such as Models and Controllers

Now you've got all that under your belt, let's think about what we
need in this application from a high level architectural standpoint.

    Get a better understanding of Spine and its usage
    Integrate Twitter Bootstrap code
    Integrate HTML5 boilerplate
    Create a starting point for a more complex application.
    Learn, play, test, enjoy the process

##Screen shots
[![Click on screen shot to see developer website](https://github.com/meckdahl/spine-tweetmax/raw/master/wiki/screenshot.png "Sample Screenshot")](http://www.schedulemax.com)

##Detailed Setup

Firstly, to make life easier, we're going to install Spine.app and Hem. Spine.app is a Spine
application generator. It's not required to use Spine, but very useful all the same.
Hem is bit like Bundler for JavaScript apps, see their respective guides for more information.

If you haven't got them installed already, you'll need Node and npm. Both projects' sites include
excellent installation instructions.

Now we can get on with installing the two npm modules we need, spine.app and hem:


Now let's install the default dependencies listed in our application's package.json:

npm install .

Finally we can use the hem executable to run a Hem server, which will temporarily host our
Spine application during development.

hem server

Now our server is running, let's open up the application:

In the console open  http://localhost:9294

Tweek the code and enjoy!


Local installation (in Brief)
==================

1) Open Terminal

    git clone https://github.com/meckdahl/spine-tweetmax
    cd spine-tweetmax
    npm install .
    hem server

2) Open http://localhost:9294 in browser

Author
==================
Mark Eckdahl

http://www.schedulemax.com

ScheduleMAX - Online Scheduling

