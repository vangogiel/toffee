Feature: Weekday Scheduled Tasks
  
  Scenario: Task is setup to run all the time on Monday
    Given I set today to be Tuesday
    And a task scheduled to run on Mondays
    Then I wait 3 seconds
    And I shutdown all tasks now
    And I verify the tasks have run 0 times in total

  Scenario: Task is setup to run all the time on Tuesday
    Given I set today to be Tuesday
    And a task scheduled to run on Tuesdays
    When I verify 1 tasks were set up
    Then I wait 3 seconds
    And I shutdown all tasks now
    And I verify the tasks have run 4 times in total
