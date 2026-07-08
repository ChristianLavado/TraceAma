import { buildModule } from "@nomicfoundation/hardhat-ignition/modules";

export default buildModule("TraceAmaModule", (m) => {
  // Despliega el contrato inteligente TraceAmaToken
  const traceAma = m.contract("TraceAmaToken");

  return { traceAma };
});
