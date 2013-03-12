Feature: Edit Categories
  As a blog administrator
  In order to create or modify articles categories
  I want to edit articles categories

  Background:
    Given the blog is set up
    Given I am logged into the admin panel
    And I am on the admin page

  Scenario: Go to the Categories page without ID
    When I go to the new categories page
    Then I should not see "Couldn't find Category without an ID"
    And I should see "Categories"
    And I should see "Name"
    And I should see "Keywords"
    And I should see "Permalink"