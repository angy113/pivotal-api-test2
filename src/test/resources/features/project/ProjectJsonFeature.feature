@ClearAllEnvironment
Feature: Projects Pivotal Tracker Testing With Json
  Scenario: Verify to create, edit an delete an specific Project API by Id using json
      When I send a /projects POST with the json
          """
            {
              "name":"Project 033"
            }
          """
      Then I expect Status code 200
      And I store as a Project1
      When I send a /projects/[Project1.id] PUT with the json
          """
          {
              "name":"angyy1000"
            }
          """
      Then I expect Status code 200
      And The name field should be equals to angyy1000
      When I send a /projects/[Project1.id] DELETE
      Then I expect Status code 204