if true
  puts "true"
end


if 1 == 1
  puts "1==1"
end

if 1 == 1 || 1 == 1
  puts "1 == 1 || 1 == 1"
end

# || 演算子は論理 OR を表します。どちらか一方の条件が真 (true) であれば、全体として真となります。
# 1 == 1 は真 (true) です。よって、条件全体は真 (true) となります。
# 条件が真の場合、この行が実行され、コンソールに 1 == 1 || 1 == 1 と表示されます。


if 5 > 3 && 5 < 10
  puts "&&"
else   # elseは、論理学の対命題　　elseifは、さもなければ、なので、本来、対命題である偽が成り立つところを真に引き込むための条件文となる。
    puts "条件を満たしませんでした"
end

