//SPDX-License-Identifier: MIT

pragma solidity >=0.6.0 <0.9.0;

contract SimpleStorage 
{
    struct People
    {
        int256 FavouriteNumber;
        string Name;
    }

    People[] public people;

    mapping(string => int256) public NametoFavouriteNumber;

    function addpeople(string memory _name, int256 _favouritenumber) public
    {
        people.push(People(_favouritenumber,_name));
        NametoFavouriteNumber[_name] = _favouritenumber;
    }

}
