# FrightNight
### Find Your Next Favorite Scary Movie For A Spooky Night!

## Inspiration
Due to the COVID-19 situation, many people were unable to participate in many Halloween festivities such as parties or going trick or treating. So what would be the next best thing? Staying home and watching scary movies. I wanted to build an app for people who did not know what to do for Halloween this year, also for people who enjoy watching scary films.

## What it does
NightFright is a mobile app that recommends new scary films to people who enjoy horror movies or need an alternative activity to do on Halloween night. The user will be prompted a list of genres they can look through such as: horror films, thriller films, Halloween family movies, and etc. After the user has selected a genre a list of movies will appear and the user can click on any movie, learn more about it, and will be able to click a button and be taken to a Google search of that movie where they can find more information and streaming services that showcase that movie.
Another amazing feature in FrightNight is the random movie button. If the user is unsure of what type of movie or genre they want, they can click the button and it will take them to a screen filled with information about a random film.

## How I built it
I built this app through toolkit developed by Google called Flutter using android studios. I also used external Flutter packages such as http and spinkit. I was able to get a list of genres, list of movies, and movie data by using an API called 'The Movie Database API'(TMDb).

## Challenges I ran into
Figuring out how to make http requests in Flutter. I only knew how to make request in Python but it was not an easy transition making requests in Dart (The language that Flutter is written in). It took me nearly a day to learn how to make requests and parse through the JSON.

Another big challenge I went through was during the early stages of development. I had initially used an API called 'uNoGs', it was basically the same as The Movie Database API. It was an extremely hard to use API mainly because the documentation was not very helpful and it was confusing on how to make requests. Also, because the API required using query and headers, instead of using a simple API key, I was lost when trying to make a request in Flutter. It was even hard when I tried to do some examples in Python. After a couple hours I decided to look elsewhere for other resources and stumbled upon The Movie Database API.

Another challenge was running into the Text widget constraints. As shown in my demo video the Text would simply not wrap around the app and would cause an overflow causing the black and yellow lines to appear. I was unable to fix the issue due to the time constraint that I had.

## Accomplishments that I'm proud of
I was really proud of myself when I was successfully able to get the data I needed from the API and display the information I needed in the way I had envisioned.
Another accomplishment I had was developing the Randomizing feature in my app, because it took me awhile to get the algorithm that I needed in order to complete that task.

## What I learned
I learned how to use API's in Flutter, learned more about how maps work and transferring data from one page to another. I also learned how to make asynchronous functions in Flutter and how they are used.

## What's next for FrightNight
I want to fix the Text constraint bug. I also intend to add a button that would show streaming services that showed a particular movie, instead of taking the user to a google search of the movie. I also want to add more genres in my app to diversify the selection.
