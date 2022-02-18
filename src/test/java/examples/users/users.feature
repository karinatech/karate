Feature: sample karate test script


  Scenario: get data

  * def processJson = 
	"""
	function(jsonData){
    let data = jsonData.jd;
    let param = jsonData.p;
    let arr = [];
    for(let k =0;k<data.length;k++){
      let obj = data[k];
if(obj.hasOwnProperty(param)){
  arr.push(obj[param].rotorSpeed)
}
    }
    return arr;

}
	"""

Given url 'https://jsonmock.hackerrank.com/api/iot_devices/search?status=RUNNING'
When method get
Then status 200
And def k = response.data
# And print k


#   * def process = call read('./javascript.feature')
* def key = 'operatingParams'
* json kari = call processJson {jd:'#(k)',p:'#(key)'}
* print kari


    # When method get
    # Then status 200
    # And match response contains user
  