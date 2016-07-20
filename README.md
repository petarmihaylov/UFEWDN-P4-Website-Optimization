# Project 4: Website Optimization

## Description
This project 4 is part of my Udacity Front-End Web Development Nanodegree.

The project is centered around eliminating performance bottlenecks such as
removing render-blocking CSS and JavaScript, optimizing images for multiple
screens, and eliminating under-performant code - specifically, avoiding
triggering Recalculate Layout when performing style changes.

## How to run this project?


**Requirements**

The project needs `NodeJS 0.12+` and `npm` to be installed in order to run.

** Steps to Run the Project **

1. Clone the repository to your local drive by running:

  `git clone https://github.com/petarmihaylov/UFEWDN-P4-Website-Optimization.git`

2. Change to the project directory

  `cd UFEWDN-P4-Website-Optimization`

3. Run `npm install`
4. Run `gulp serve`

To view the project on the same computer, open a new browser and navigate to `localhost:3000`

To view the project from another device on your local network, you will have to modify the IP address on `line 178` and `line 200` in `gulpfile.babel.js` to the
corect IP address of the machine from which you will be serving the project.


** Steps to Run the Compiled Project **

Open `dist/index.html`

** Optimizations **
+ Inlined the `style.css` to remove the render-blocking CSS
+ Added a `media="print"` attribute to the `print.css` stylesheet
+ Loaded the web fonts using `webfontloader`
+ Optimized all images using `gulp-responsive`
+ Modified the `for` loop in `function changePizzaSizes(size)` to eliminate unnecessary Recalculate styles
+ Modified the `for` loop in `function updatePositions()` to eliminate unnecessary Recalculate styles
