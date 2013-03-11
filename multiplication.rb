#Write a method that multiplies two integers without using multiply operator
# Eg: newMul(2,3)
def newMul(a,b)
  i = a
  (b-1).times do
    a += i
  end
  a
end
p newMul(4,8)