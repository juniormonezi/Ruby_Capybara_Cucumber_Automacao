Before do
    puts 'estou sendo executado antes de cada cenário'
    @soma = 5 + 5
end


After do
    puts 'estou sendo executado depois de cada cenário'
end
   

Before '@comeco' do
    puts 'rodei apenas no cenario com tag comeco'
end


After '@final' do
    puts 'rodei apenas no cenario com tag final'
end