// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract FirstSmartContract
{
    int _age;
    string _name;

    struct Person
    {
        int age;
        string name;
    }

    Person[] public People;
    mapping(string => int) public PersonToAgeMap;

    function StoreName(string memory name) public
    {
        _name = name;
    }

    function RetrieveName() public view returns(string memory)
    {
        return _name;
    }

    function StoreAge(int age) public
    {
        _age = age;
    }

    function RetrieveAge() public view returns(int)
    {
        return _age;
    }

    function AddPerson(string memory name, int age) public
    {
        People.push(Person(age,name));
        PersonToAgeMap[name] = age;
    }

}
