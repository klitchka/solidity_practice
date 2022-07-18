//SPDX-License-Identifier: MIT

pragma solidity >=0.6.0 <0.9.0;

contract SimpleStorage 
{
    int256 FavouriteNumber;
    
    struct People
    {
        int256 FavouriteNumber;
        string Name;
    }

    People[] public people;

    mapping(string => int256) public NametoFavouriteNumber;

    function store(int256 _FavouriteNumber) virtual public
    {
        FavouriteNumber = _FavouriteNumber;
    }

     function retrieve() public view returns(int256)
    {
        return FavouriteNumber;
    }

    function addpeople(string memory _name, int256 _favouritenumber) public
    {
        people.push(People(_favouritenumber,_name));
        NametoFavouriteNumber[_name] = _favouritenumber;
    }

}
