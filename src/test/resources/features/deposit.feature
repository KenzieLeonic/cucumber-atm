Feature: deposit
  As a customer
  I want to deposit from my account using ATM

  Background:
    Given a customer with id 1 and pin 111 with balance 200 exists
    When I login to ATM with id 1 and pin 111

#  Scenario: Deposit amount less than balance
#    When I withdraw 50 from ATM
#    Then my account balance is 150

  Scenario: Withdraw amount more than balance
    When I deposit 100 to ATM
    Then my account balance is 300
