## Introdução à programação em Julia

Uma introdução à programação na linguagem científica de computadores Julia.  Para a versão em inglês, consulte [ThinkJulia](https://benlauwens.github.io/ThinkJulia.jl/latest/book.html).

## JuliaIntroPT-BR.jl

Todo o código usado neste livro está disponível neste repositório. Este repositório contém o texto do livro e também funciona como um pacote Julia para fornecer o código usado no livro.

julia
Pkg.add(PackageSpec(url = "https://github.com/JuliaIntro/JuliaIntroPT-BR.jl"))
using JuliaIntroPT-BR
`` ''

## Como contribuir

Se você tiver uma sugestão ou correção, abra um "problema" no GitHub.


## Compilando o livro

Você pode compilar o livro você mesmo
dos arquivos de origem deste repositório. Aqui
O esquema geral para isso é descrito:


* Baixe Julia e verifique se você pode iniciá-lo em uma linha comando como `bash`.
* Certifique-se de ter o `ruby` (exigido por um asciidoctor) e  `python` (usado por pigmentos).
* Faça o download do asciidoctor, por exemplo, usando `brew install asciidoctor` no MacOS.
* Instale o pacote python `pygments`, usando um comando como `pip install pygments`
* Clone este repositório, por exemplo, com o comando:
```bash
git clone https://github.com/JuliaIntro/JuliaIntroPT-BR.jl
```
* Em Julia, adicione o pacote `IntroAJulia` com um comando como o seguinte:
```julia
julia> Pkg.add(PackageSpec(url="https://github.com/JuliaIntro/JuliaIntroPT-BR.jl"))
```

* Vá para o diretório `book` no repositório e execute o comando
```bash
julia --startup-file=no make.jl build html images
```
Isso criará o arquivo `book/build/book.html`.
