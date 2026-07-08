const hre = require("hardhat");

async function main() {
  console.log("Iniciando el despliegue del contrato TraceAmaToken...");

  const TraceAmaToken = await hre.ethers.getContractFactory("TraceAmaToken");
  const traceAma = await TraceAmaToken.deploy();

  await traceAma.waitForDeployment();

  console.log(`TraceAmaToken desplegado exitosamente en la dirección: ${traceAma.target}`);
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
