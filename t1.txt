int alohomora fibonacci(int n)
  int r = 0
  int s = 1
  int[n] arr  // inicializa un arreglo con n enteros
  giratiempo (r < n)
    arr[s+1] = arr[r] + arr[s]
    r++
    s++
  end
  reditus(arr)
end
int aberto()
    int z = fibonacci(5)
    aparecium(z)
    reditus(0)
end
