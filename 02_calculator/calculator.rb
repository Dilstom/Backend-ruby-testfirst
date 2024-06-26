#write your code here

def add(a,b)
  a+b
end

def subtract(a,b)
  a-b
end

def sum(a)
  # USING PROC
  a.reduce(0, :+)

  # USING REDUCE (do/end)
  # a.reduce(0) do |a,b|
  #  a+b
  # end
end

def multiply(*a)
  # USING PROC
  # a.reduce(1, :*)

  # USING ONE-LINE (instead do/end - {})
  a.reduce(1) {|b,c| b*c}
end

def power(a,b)
  a**b
end

def factorial(a)
  return 1 if a==0
  a*factorial(a-1)
end