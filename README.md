# HL_technical_test
Deliver a working test suite for the following examples from https://the-internet.herokuapp.com/ using gherkin syntax. 

- **Feature 1  -Form Authentication**

**Scenario 1** (@auth1)
Navigate to https://the-internet.herokuapp.com/
Click 'Form Authentication'.
Confirm can input correct details and enter account

**Scenario 2**  (@auth2)
Navigate to https://the-internet.herokuapp.com/
Click 'Form Authentication'.
Confirm can input incorrect details and user sees an error message


- **Feature 2  -Dynamic Loading**

**Scenario 1** (@dyn1)
Navigate to https://the-internet.herokuapp.com/
Click 'Dynamically Loaded Page Elements' and click 'Example 2: Element rendered after the fact.'
Confirm 'Hello World!' is rendered after the loading bar disappears.

**Scenario 2** (@dyn2)
Navigate to https://the-internet.herokuapp.com/
Click 'Dynamically Loaded Page Elements' and click 'Example 1: Element on page that is hidden.' 
Confirm 'Hello World!' is rendered after the loading bar disappears.


- **Feature 3  -Javascript Alerts**

**Scenario 1** (@js1)
Navigate to https://the-internet.herokuapp.com/
Click 'Javascript Alerts' and click the 'JS Confirm button'
The user selects 'OK' on the JS popup, then will see the message - 'You clicked: Ok'

**Scenario 2** (@js2)
Navigate to https://the-internet.herokuapp.com/
Click 'Javascript Alerts' and click the 'JS Confirm button'
The user selects 'Cancel' on the JS popup,then will see the message - 'You clicked: Cancel

**Scenario 3** (@js3)
Navigate to https://the-internet.herokuapp.com/
Click 'Javascript Alerts' and click the 'JS Alert button'
The user selects 'OK' on the JS popup,then will see the message - 'You successfuly clicked an alert'

**Scenario 4** (@js4)
Navigate to https://the-internet.herokuapp.com/
Click 'Javascript Alerts' and click the 'JS Prompt button'
The user inputs data and selects 'OK' on the JS popup, then will see the message - 'You entered: (input data)

**Scenario 5** (@js5)
Navigate to https://the-internet.herokuapp.com/
Click 'Javascript Alerts' and click the 'JS Prompt button'
The user selects 'OK' and does not input data on the JS popup,then will see the message - 'You entered: (You entered:)

**Scenario** (@js)
Navigate to https://the-internet.herokuapp.com/
Click 'Javascript Alerts' and click the 'JS Prompt button'
The user selects 'Cancel' on the JS popup,then will see the message - 'You entered: (You entered: null)


**- Tech Stack**

- Ruby
- Cucumber
- Watir

**- Setup & Running Tests**

- Clone this git repository (or download instead)
- Navigate to the project folder in your terminal.
- To run the tests you must first initialize cucumber by entering cucumber --init in the terminal.
- Again in terminal, run 'bundle' to make sure you have the appropriate gems installed

- To run all of the scenarios within a feature file run the tag set at the start of the feature cucumber -t @(tag_name), example - cucumber -t @JSTests
- To run individual scenarios run the tag set at the start of each scenario, example -  cucumber -t @(JS1).

**- Approach**

- I focused on building a page object model and separated my methods into individual related classes as this helps keep the code DRY and easy to pick up and add to at any point. 
- Each test has a cucumber feature file. The steps for the feature files have a corresponding step_defs file in the 'step definitions' folder which call methods for each step from the 'pages' folder.

- **Test 1 - Form Authentication**

Both scenarios for Form Authentication were coded - 'correct details input' and 'incorrect details input'.
#successful, visible_text again to check success message within account
# incorrect error message, visible_text again



- **Test 2 - Dynamic Loading**

Both scenarios for Dynamic loading were coded - clicking 'Example 1' or 'Example 2'. 
To ensure for both options I added a step before selecting 'start' in which I could see either the text ' Example 2: Element rendered after the fact' or 'Example 1: Element on page that is hidden'. To do this I used visible_text to locate and check the relevant text exists. 

Once the user clicks on start then the loading bar only appears for a short time, so 'sleep' is used to wait a short while. After the wait, the presence of the loading bar is checked again.


- **Test 3 - Javascript Alerts**

All scenarios for Javascript Alerts:

JS Confirm
JS Alert
JS Prompt


# remember to add about headless in env.rb


