function suma(a, b) {
  return a + b;
}

if (suma(2, 3) !== 5) {
  console.error("❌ Test fallido");
  process.exit(1);
}

console.log(" Test exitoso");
