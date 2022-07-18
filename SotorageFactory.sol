//SPDX-License-Identifier: MIT

pragma solidity >=0.6.0 <0.9.0;

import "./SimpleStorage.sol";

contract StorageFactory 
{
    SimpleStorage[] public StoragesArray;

    function CreateStorageContract() public
    {
        SimpleStorage UnicContract = new SimpleStorage();
        StoragesArray.push(UnicContract);
    }

    function sfStorage(uint256 _Index, int256 _simpleStorageNumber) public
    {
        StoragesArray[_Index].store(_simpleStorageNumber);
    }

    function sfRetrieve(uint256 _Index) public view returns (int256)
    {
        return StoragesArray[_Index].retrieve();
    }
}
