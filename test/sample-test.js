const { expect } = require("chai");
const { ethers } = require("hardhat");

describe("Factory", function () {
  it("Should return the factory once it's changed", async function () {
    const Factory = await ethers.getContractFactory("LuxOwnFactory");
    const factory = await Factory.deploy("reference");
    await factory.deployed();

  });
});
