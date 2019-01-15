Feature: Editor can review and publish articles

    As an editor,
    In order to make sure that the articles have good standards
    I would like an article review page where I can approve and publish articles.

    Background:
        Given the following user exists
            | name | email          | password | password_confirmation | role   |
            | Bill | bill@email.com | password | password              | editor |
        And the following article exists:
            | title   | description        | content                      | user_id | category_id |
            | News    | This is a news     | I like to eat cheese!        | Bill    | Weather     |
            | Article | This is an article | I do not like to eat cheese! | Bill    | Sport       |
        And I am logged in as 'Bill'
        And I click on 'Articles'

    Scenario: Editor can see unpublished articles
        Then I should see 'News' within 'unpublished'
        And I should see 'This is a news' within 'unpublished'
        And I should see 'Article' within 'unpublished'
        And I should see 'This is an article' within 'unpublished'

    Scenario: Editor can review articles
        Given I click on 'Review article'
        Then I should see 'News'
        And I should see 'I like to eat cheese!'
        And I should see 'Written by Bill'