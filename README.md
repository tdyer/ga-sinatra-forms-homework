#Methods

###Prereqs
- Data types
- Conditions
- Loops

###What are methods (Learning Objectives)
- Define a function
- Explain why you would use a function
- Inputs and outputs (arguments)
- Why DRY code?

###How to teach this topic
#####Suggested ways to introduce the topic
- A lecture describing what methods are and how they can be used
  - Concepts of DRY
  - Reusability
- Codealong / demo: `prompts` involves rewriting the prompts lab from conditionals into functions
- Lab: `ruby_calculator`
  - This lab is a bit complex, and may require the instructor to walkthrough the requirements step-by-step as the students fill in the necessary code along the way.

#####How to break it down
- Demonstrate reusability of code, inputs and outputs
- Work with inputs and returning data of various types
- Show how you can use all the code concepts learned thus far within a method
  - Practice defining and calling functions

#####Potential questions, difficulties, and problems
- Variable scope and methods
- Variable naming (method's parameter vs variable name outside the method being passed in)

  ```
  val = "string"
  def output(str)
    puts str
  end
  ```

###Why Methods?
- Now we can  introduce the concepts of "DRY code" and begin organizing our code better