## Terminal

Atualmente utilizo o **ZSH** shell com o **Oh My ZSH** como ferramentas para adicionar plugins e deixa lo mais produtivo.

- [**Shell**]() | [Zsh](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH) | [Oh My Zsh](https://ohmyz.sh/)
- [**Theme**](https://github.com/ohmyzsh/ohmyzsh/wiki/Themes) | [Spaceship](https://spaceship-prompt.sh/getting-started/#Requirements)
- [**Plugins**](https://github.com/ohmyzsh/ohmyzsh/wiki/Plugins) | (_git, zsh-autosuggestions, zsh-completions, zsh-syntax-highlighting_ )

> Utilizo a fonte **Fire Code** porem existem opções interessantes que você pode encontrar no [Nerd Fonts](https://www.nerdfonts.com/font-downloads)


### Instalação e Configuração ZSH / Oh My ZSH / Plugins

Um shell no mundo GNU/Linux é a interface entre o usuário e o sistema operacional através da qual o usuário interage em linha de comando pelo terminal.

O **Z Shell** ou simplesmente o **ZSH** , é um shell assim como o **Bash** e **SH**.

Com o ZSH é possível usufruir de recursos avançados de usabilidade, produtividade e customização em comparação com o bash.

O ZSH é um shell muito mais customizável e que possui uma série de temas e plugins que permitem estender suas funcionalidades de uso do terminal do sistema.

- Para saber qual é o Shell esta em uso em sua distro Linux, abra um terminal e digite:

```bash
echo $SHELL
```
Como saída do comando, temos /bin/bash , ou seja, o usuário está usando o bash que é o shell padrão do Ubuntu, assim como diversas outras distros Linux

### Instalando o ZSH

Para instalar o ZSH, basta digitar o seguinte comando no terminal:

```bash
sudo apt install zsh
```

### Instalando o Oh My ZSH

**Oh My ZSH** que é um gestor de configurações do ZSH, com ele, poderemos instalar Temas e Plugins para o nosso ZSH, aumentando a beleza, produtividade e capacidade de personalização deste Shell.

Execute o seguinte comando no seu terminal para instalar o Oh My ZSH:

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

Verifique se foi instalado e setado com shell default.

```bash
zsh --version
echo $SHELL
```
Resultado.

```bash
➜  ~ zsh --version
zsh 5.8.1 (x86_64-ubuntu-linux-gnu)
➜  ~ echo $SHELL
/usr/bin/zsh
➜  ~
```

### Instalando temas no ZSH com o Oh My ZSH

A instalação de temas e plugins no ZSH, é bem simples, consiste no download destes recursos no PC e configuração dos mesmos no arquivo de configuração do Z Shell, o `~/.zshrc`.

Agora vamos instalar o tema o **Spaceship** usando o Oh My ZSH.

Para verificar se a fonte Powerline funciona para você, execute:

```bash
echo -e "\xee\x82\xa0"
```
> [Fonte Powerline](https://github.com/powerline/fonts) ou [Fonte Nerd](https://www.nerdfonts.com/) deve ser instalada e usada em seu terminal.

**Instalando o spaceship**

```bash
git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
```
Criando um link simbólico `paceship.zsh-theme` para o diretório de temas personalizados  `oh-my-zsh`:

```bash
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
```
Defina `ZSH_THEME="spaceship"` em seu `.zshrc`. Pronto agora o Oh My Zsh utiliza o tema spaceship.

> Para maiores detalhes de configuração veja [Criar um arquivo de configuração](https://spaceship-prompt.sh/config/intro/)


### Instalando Plugins no ZSH com o Oh My ZSH

- **zsh-syntax-highlighting**
Ele permite realçar os comandos enquanto eles são digitados em um prompt zsh no terminal. Isso ajuda na revisão dos comandos antes de executá-los, principalmente na detecção de erros de sintaxe.

- Clone este repositório no diretório de plugins do oh-my-zsh:

```bash
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

- Ative o plug-in em `~/.zshrc`:

```bash
plugins=( [plugins...] zsh-syntax-highlighting)
```

**zsh-autosuggestions**
Ele sugere comandos conforme você digita com base no histórico e nas conclusões.

- Clone este repositório em `$ZSH_CUSTOM/plugins` (por padrão `~/.oh-my-zsh/custom/plugins`)

```bash
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```
- Adicione o plugin à lista de plugins para Oh My Zsh carregar (dentro de `~/.zshrc`):

```bash
plugins=( 
    # other plugins...
    zsh-autosuggestions
)
```

**zsh-completions**
Ele adiciona sugestões para o comando inserido.

- Clone o repositório dentro do seu repositório oh-my-zsh:

```bash
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions
```
- Adicione-o ao `FPATH` no seu `.zshrc` adicionando a seguinte linha antes de `source "$ZSH/oh-my-zsh.sh"`:

```bash
fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src
```

> Reinicie o terminal após alterar as configurações

**Artigos de referência**

- [Oh My Zsh: melhorando a sua produtividade no terminal](https://www.alura.com.br/artigos/oh-my-zsh-melhorando-produtividade-terminal?utm_term=&utm_campaign=%5BSearch%5D+%5BPerformance%5D+-+Dynamic+Search+Ads+-+Artigos+e+Conte%C3%BAdos&utm_source=adwords&utm_medium=ppc&hsa_acc=7964138385&hsa_cam=11384329873&hsa_grp=111087461203&hsa_ad=662261158752&hsa_src=g&hsa_tgt=dsa-843358956400&hsa_kw=&hsa_mt=&hsa_net=adwords&hsa_ver=3&gclid=CjwKCAjww7KmBhAyEiwA5-PUSkE6ghGA1BIJ6vFYePpr6cAEm3at4KMQ4JDYH_4n-nTv8GBGa62P7xoCKGwQAvD_BwE)
- [Como instalar o Shell ZSH Linux + Oh My ZSH](https://www.webmundi.com/sistema-operacional/linux/como-instalar-o-shell-zsh-linux-oh-my-zsh/)
