# Notes from the robot-framework course

## Organizing project files

```
/ProjectBase
  /Tests - all test scripts
    * Product.robot - test script (entire app) - can be split into multiple files if the app is big enough
  /Resources - app keyword files and page objects
    * common.robot - //optional//
    * ProductApp.robot - app keyword file (app capabilities)
    * PO
      * Feature.robot - feature specific locators and keywords
  /Results - result logs from each run
  /Libraries - //optional// - custom python libraries
```

## Sections of the script file
- settings
- variables
- test cases
- keywords (usually not in the test case files) -> usually in the Resources and or PO
