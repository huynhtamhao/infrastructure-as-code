function fish_greeting
        if not type fortune > /dev/null 2>&1
                sudo apt-get install -y fortune
        end
        if not type cowsay > /dev/null 2>&1
                sudo apt-get install -y cowsay
        end
        if not type lolcat > /dev/null 2>&1
                sudo apt-get install -y lolcat
        end
        fortune -a | cowsay -f dragon | lolcat
end
funcsave fish_greeting
