## Task 1 - Deploying the Application
### Re-run install, build & start commands after breaking BestSellersBar.tsx

`npm install` appears to run identically to how it did previously.

`npm run build` fails to compile, and shows which file and what line caused this failure.

`npm run start` still serves a webpage, however the contents of this page are detailing the compilation failure.

## Task 2 - Creating a CI/CD Pipeline
### Pipeline documentation

Creating the initial pipeline (containing only install, build & start) worked as expected, the app compiled and ran as expected.

The pipeline catches compile time errors and prevents git actions as expected. 

## Task 3 - Maintaining application
### .ts file comment headers

I wrote a very simple python script which adds a comment header to .ts files  which do not already contain the header.