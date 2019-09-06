# The ATM challenge

## Dependencies
**Programming language:** Ruby  
**Testing framework:** [RSpec](https://rspec.info/) 

## Authors  
[Clarissa Liljander](https://github.com/clalil)  
[Miyesier Kaerman](https://github.com/miyeaier) 

## The code  
This program is built in the image of an Atm machine in the real world. As a user, you may create an account, receive a unique pincode, deposit and retrieve funds from your bank account as well as being denied to use the atm if you do not have an active account and/or an expired credit card.  

## Setup  
To test this application you need to fork it to your own GitHub account and clone it to your local workspace. Once you have cloned the repository, you will be able to:  
* Create an account in your own name
* Receive a unique pincode
* Make a deposit  
* Make a withdraw using your personal pin code  

To get started, run IRB in your local workspace. Make sure to load the following files:  

>$ load './lib/atm.rb'  
>$ load './lib/account.rb'  
>$ load './lib/person.rb'  

## Instructions  
Once the files are loaded in IRB, get started by visiting your local Atm:  
```rb
atm = Atm.new  
```
Create your own user:  
```rb
user = Person.new(name: 'Jane Doe')  #Enter your username of choice
```

Create an account for yourself to receive your unique pincode and a card with an expiration date: 
```rb   
user.create_account()  
```

Make a deposit: 
```rb
user.deposit(50) #This example deposits 50$
```

Make withdraw using your unique pin code:  
```rb 
user.withdraw(amount: 150, pin: 1234, atm: atm)  #Use the pin provided to you when creating your account
```

## Acknowledgement  
Thank you [CraftAcademy](https://craftacademy.se/) for giving us this challenge.  

## Updates/Improvements  
When time given, we plan to refactor our code.  

## License  
This project is under the [MIT-license](https://en.wikipedia.org/wiki/MIT_License).

## User stories
```
As a programmer  
In order to produce good quality code  
I want to work in a test driven development and unit test my code  

As a User         
In order to make a withdrawal        
The ATM needs to have funds  

As a User  
In order to know if my withdrawal was successful or unsuccessful  
I want to receieve a message with my withdrawal details  

As an ATM operator  
In order for the right person to make a withdrawal  
I want each person to have a separate account  

As a ATM operator  
In order to ensure that an Account holder can only withdraw funds that he has balance for   
I want to allow a withdrawal only if there are sufficient funds in the account  

As an ATM operator  
In order for our customers to withdraw funds  
I need to make sure that we only allow withdrawals if there are funds available  

As a Customer
To keep my funds secure
I want a secure Pin code & an expiry date on my card that allows only me access to my funds  

As an ATM operator  
In order to allow access to active customers  
I want to allow withdrawals from only active accounts  

As a Bank Customer  
In order to withdraw funds in even  
I want to receive funds in 5, 10 & 20$ bills  

As a Customer  
In order to manage my funds  
I need to have a personal account  

As an ATM operator   
In order to keep track of our costumers     
We want to assign each account to a separate person  

As a Person  
To be able to use banking services to manage my funds  
I would like to be able to create a bank account  

As a Person with a Bank Account  
In order to be able to put my funds in the account  
I would like to be able to make a deposit  

As a Person without a Bank Account  
In order to prevent me from using the wrong bank account  
I should not be able to make a deposit  

```  