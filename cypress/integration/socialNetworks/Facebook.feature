Feature: The Facebook

  I want to open a social network page

  Scenario Outline: Opening a Facebook page - postive scenario
    Given I open Facebook page "<username>" and "<pass>"
    Then I see "<status>" in the title

    Examples:
    | username                       | pass           | status              |
    | developer@hammsolutions.co.uk  | hammsolutions  | Facebook            |
    | aa@hammsolutions.co.uk         | hammsolutions1 | Log in to Facebook  |

# create post on FB

