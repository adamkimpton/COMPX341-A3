## Task 1 - Deploying the Application
### Re-run install, build & start commands after breaking BestSellersBar.tsx
https://github.com/adamkimpton/COMPX341-A3/tree/e67fb9bfefdb5aa220bd8b5bbd883c421b25be10

`npm install` appears to run identically to how it did previously.

`npm run build` fails to compile, and shows which file and what line caused this failure.

`npm run start` still serves a webpage, however the contents of this page are detailing the compilation failure.

## Task 2 - Creating a CI/CD Pipeline
### Pipeline documentation
https://github.com/adamkimpton/COMPX341-A3/tree/e8cb7d784baadda8d7bcc54d1a5dfc7baa89f8b6

Creating the initial pipeline (containing only install, build & start) worked as expected, the app compiled and ran as expected.

https://github.com/adamkimpton/COMPX341-A3/tree/99d526c40251882a8611e625be63a5915f121537

The pipeline catches compile time errors and prevents git actions as expected. 

**Build failure**

![Summary Diagram](/assets/readmeImages/BuildFailure.png)

## Task 3 - Maintaining application
### .ts file comment headers

https://github.com/adamkimpton/COMPX341-A3/tree/99d526c40251882a8611e625be63a5915f121537

I wrote a very simple python script which adds a comment header to .ts files  which do not already contain the header.

We could a new test (which would be run when we execute our pipeline), that would check if we have the appropriate comment header at the top of all our `.ts` files. 