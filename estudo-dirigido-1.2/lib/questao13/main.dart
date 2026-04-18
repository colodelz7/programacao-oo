void main() {
  print("--- Teste da Questão 14 ---");
  
  try {
    // Exemplo de tratamento de erro (comum em questões finais)
    int resultado = 10 ~/ 0; 
    print(resultado);
  } catch (e) {
    print("Ocorreu um erro: Não é possível dividir por zero.");
  }
}