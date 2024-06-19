
  const hre = require("hardhat");

  async function main() {
    const gestionnaireDeNotes = await hre.ethers.deployContract("GestionnaireDeNotes");
  
    await gestionnaireDeNotes.waitForDeployment();
  
    console.log(
      `GestionnaireDeNotes Contract  deployed to ${gestionnaireDeNotes.target}`
    );
  }
  main().catch((error) => {
    console.error(error);
    process.exitCode = 1;
  });