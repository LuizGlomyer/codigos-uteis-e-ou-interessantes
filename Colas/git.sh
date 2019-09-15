passos base:
git add . (adiciona tudo)
git commit -m "mensagem" (commita)
git push (envia)


gerar chave ssh

configura o repositorio em nome de alguem. Caso não coloquemos --global as configurações atuais valem somente para o diretório que estamos trabalhando
git config --global user.name "NOME DO USER"
git config --global user.email "EMAIL DO USER"
git config --global push.default simple - commita apenas trabalhando como uma unica branch
git config --global core.editor gedit - muda o editor das mensagens de commit
git config --global core.pager cat - facilita a visualização de logs no terminal. O padrão é less ao invés de cat

git help <comando>
git init - o atual diretorio vira um repositorio
git init nome_repo - cria uma nova pasta, sendo ela um novo repo
git add arquivo - adiciona arquivo para o proximo commit
git add . - adiciona tudo o que está na pasta
git commit - faz uma mudança no repo. Ele abre um editor de texto, onde devemos por uma mensagem referente à mudança que fizemos
git commit -m "mensagem de alteração"
git status - ver status do repo
git log - ver ultimos commits no repo
git remote add origin "CHAVE SSH" - 
git remote -v  - lista todos os repo remotos
git push -u origin master - seta a branch master e envia os arquivos
git push - envia os arquivos
git diff - mostra as diferenças do último commit com o que temos no momento
git diff HEAD~1 - compara o que está na pasta com 1 commit anterior
git diff CODIGO1 CODIGO2 - compara as diferenças entre dois commits

git clone "ULR" - baixa um repo remoto e cria um repo local
git pull - sincroniza baixando os arquivos do servidor remoto
git checkout "CODIGO DO COMMIT" - volta a um estado anterior, no caso, o do commit informado. Arquivos criados posteriormente somem mas não são apagados, alterações posteriores a este commit não são visíveis. Para voltar, fazer git checkout master
git checkout -- arquivo(ou somente .) - desfaz todas as alterações desde o último commit
git checkout HEAD -- arquivo - transforma o arquivo no estado em que ele estava, em determinado HEAD
git revert HEAD - desfaz um commit e volta para o estado anterior a este commit
git reset HEAD - enquanto o revert apenas volta a um commit anterior, o reset volta e APAGA todos os commits posteriores à HEAD informada. O parâmetro --hard volta EXATAMENTE ao commit escolhido, qualquer mudança posterior àquele commit é descartada, por exemplo, o arquivo T foi criado no commit 5, se dermos um reset até o commit 4 usando --hard o arquivo T some.

git branch - retorna a lista de todas as branches e a branch onde você está (*)
git branch "NOME" - cria uma nova branch
git branch -d "NOME" - deleta a branch informada
git checkout "NOMEDABRANCH" - muda para a branch informada
git push --set-upstream origin(ou -u) "NOMEDABRANCH" - necessário no primeiro push
git merge "BRANCH" - aplica os commits da branch informada na branch atual. Se quisermos jogar o conteúdo da master na branch galho, devemos estar em galho (checkout galho) e então damos merge master, e vice versa
git rebase "BRANCH" - parecido com o merge, mas este adiciona primeiro os commits da "BRANCH" e depois os commits da branch onde estamos
git fetch - baixa as atualizações do remote mas não as aplica. Útil para usar um rebase logo em seguida (git pull é a mesma coisa de dar um fetch depois um merge)
git tag "NOMEDATAG" - útil para dermarcar pontos significativos do projeto, uma tag guarda o estado de um repositório e não recebe mais commits. Serve para marcar as versões, por exemplo, versão 1.05 do projeto
git push origin "NOMEDATAG" - envia a tag criada para o remote


Arquivos .md (mark-down)
# string - realça a string, como se fosse o h1 do html
![subtitulo](imagem.jpg) - adiciona uma imagem