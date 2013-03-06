Feature: Merge articles
  As a blog administrator
  So that I can couple similar articles
  I want to merge two articles together into one

  Background:
    Given the blog is set up
    And following user records exist:
      | login    | password | email        | name  | profile_id |
      | vasek    | vasek    | vasek@sk.cz  | vasek | 2          |
      | vojta    | vojta    | vojta@za.cz  | vojta | 3          |

    And following article records exist:
      | title    | body          | user_id   |
      | Article1 | article1 body | 2  |
      | Article2 | article2 body | 3  |

    #And I am logged into the admin panel

  Scenario: A non-admin cannot merge articles
    Given  I am on the edit page for "Article1"
    When I am not logged into the admin panel
    Then I should not see "Merge" Button

  Scenario: When articles are merged, the merged article should contain the text of both previous articles

