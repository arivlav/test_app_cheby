puts( 'Enter your number: ' )
num = gets().to_i
n=Math.sqrt(num).to_i
if Math.sqrt(num)!=n
  puts('Sorry, but your number '+num.to_s+' is not perfect square')
else
  puts('Your number '+num.to_s+' is perfect square')
  puts('Matrix:')
  matr=Array.new(n).map!{Array.new(n)}
  matr.each_index {|i|
    matr[i].each_index{|j|
      matr[i][j] = 0
    }
  }
  #определяем начало спирали
  j = n%2==0 ? n/2-1 : n/2
  i=n/2
  matr[i][j]=1
  #------------------
  if n>1
    matr[i][j+1]=2
  end
  k=3
  t=1 #расстояние от цетра (радиус) спирали
  m=i
  l=j+1
  while k<=num
    puts (k)
    if l==j+t and (i-m).abs<t
      m-=1
    else
      if m==i-t and l-j<=t and l-j>-t
        l-=1
      else
        if l==j-t and m-i<t
          m+=1
        else
          if m==i+t and j-l<=t and l-j<=t
            l+=1
          end
        end
      end
    end
    matr[m][l]=k
    if Math.sqrt(k-1).to_i==Math.sqrt(k-1) and (Math.sqrt(k-1).to_i)%2==1
      t+=1
    end
    k+=1
  end
  #вывод матрицы
  matr.each_index {|i|
    puts (matr[i].to_s)
  }
end
