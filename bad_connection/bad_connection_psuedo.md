# Big Questions
## How will you know when the problem is solved? (Identify the big-picture goal)
If the program responds the the five types of inputs
## How do you want to use the software? (Identify the “interface”)
customer inputs text on the command line in the form of strings

# Trivial Questions
## What’s the (next-)most trivial possible case? (Identify the next small-picture goal)
system prints welcome message ("HELLO, THIS IS A GROCERY STORE!")
user just hits enter = "HELLO?!"
user enters all lowercase text = "I AM HAVING A HARD TIME HEARING YOU."
user enters all uppercase text (excluding "GOODBYE!") = "NO, THIS IS NOT A PET STORE"
user enters "GOODBYE!" the first time = "ANYTHING ELSE I CAN HELP WITH?"
user can continue to enter text per the above rules
but if the user enters "GOODBYE!" again = "THANK YOU FOR CALLING!" and exits

## How do we achieve these goals? (Sketch an algorithm using pseudocode)

1. output welcome message
2. get user input
3. if empty output "HELLO?!"
4. else if all lowercase output "I AM HAVING A HARD TIME HEARING YOU."
5. else if "GOODBYE!" and the first time output "ANYTHING ELSE I CAN HELP WITH?" and note that "GOODBYE!" has been entered once
6. else if "GOODBYE!" and the second time output "THANK YOU FOR CALLING!" and exit the program
7. else if all uppercase output "NO, THIS IS NOT A PET STORE"
8. Keep the program running until it exits per second GOODBYE!
