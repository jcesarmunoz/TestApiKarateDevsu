Feature:  generate random number in Karate

  Scenario: generate random number
    * def randomNumber =
    """
    function(min, max) {
      var valor = 'testQA' + Math.floor(Math.random() * (max - min + 1) + min);
      return valor;
    }
    """
    * def userID = randomNumber(1, 10000)