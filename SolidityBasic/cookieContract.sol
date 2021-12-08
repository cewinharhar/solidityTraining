// SPDX-License-Identifier: MIT

// start with solidity version
// use soilidity version 0.8.0 or greater
pragma solidity >=0.8.0; //compile with fn + F5

contract cookieContract{ // contract is like a class
    // Datatypes
    //uint256: unsigned integer 265 bits (0-inf)
    //int or int256
    //bool
    //adress
    //bytes32, opject with 32 bites can be string
    // define variable: if no "=" will be added it automaticly becomes "=0"
    uint256 public bitchNr = 13;
    uint256 zero;
    address favoriteAdress = 0x85c302F0Cd0Ae8cB23c82d191310511C1e46f37b; // is automaticly a internal "function calls"
    // 
    uint256 public thisIsaPublicVariable;

    function functionNameWhup( uint256 firstThingIsAnInt) private {
        thisIsaPublicVariable = firstThingIsAnInt;
        uint104 notGlobal = 0;
        notGlobal = notGlobal * 2;
    }

    // view function, get a statement of the blockchain
    // name= specFun(), public function, View memory stored, returns values of type uin256
//    function specFuni() public view returns(uint256){ 
 //       return zero;
  //  }
    // pure function, make calculations
    function math(uint256 ins) public pure{
        ins + ins;
    }

    // class / list ? store stuff
    struct cookiejar {
        string cookietype;
        uint256 sugar;
    }

    // make an object out of class, stemp the cookie
    cookiejar public cookie = cookiejar({cookietype: "choco", sugar:10});

    //make an dynamic array (unlimited storage, can be change by inserting a number into brackets []) 
    cookiejar[] public cookieArray;

    // create a mapping = dictionair
    mapping(string => uint256) public cookieDic;



    // make this to use in cookieFactory
    function store(uint256 _n) public {
        zero = _n;
    }

    // make a state view function
    function checkOut() public view returns(uint256){
        return zero;
    }

    // to add elements into array
    function addcookies(string memory _cookieType, uint256 _sugar) public {
        // only string needs a 
        // memory(store only when code is executed and delete afterwards) or 
        // storage (store longterm) keyword
        cookieArray.push(cookiejar(
            {cookietype : _cookieType, sugar:_sugar} // or shorter version: {_cookieType, _sugar}
        ));

        cookieDic[_cookieType] = _sugar;
    }
    

}

