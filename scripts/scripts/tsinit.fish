#! /usr/bin/fish

set tscLocal /home/momofor/projects/typescript-webpack/src/tsconfig.json
set eslintLocal /home/momofor/projects/Product-Landing-Page/.eslintrc.json

if test "$PWD" = "/home/momofor/projects"
    echo "deno Or node"
    read denoOrNode
    if test "$denoOrNode" = "node"
        echo "name the directory"
        read dirname
        echo "do you want to use yarn or npm (write anwser)"
        read whichCommand
        mkdir $dirname 
        cd $dirname 
        mkdir public src src/styles src/types src/maps
        touch public/index.html src/script.ts src/styles/style.scss
        $whichCommand init -y
        $whichCommand add typescript @types/node @typescript-eslint/eslint-plugin  @typescript-eslint/parser  
        cp $tscLocal ./src
        cp $eslintLocal ./
    else if test "$denoOrNode" = "deno"
        echo "name the directory"
        read dirnameu
        mkdir $dirnameu
        cd $dirnameu 
        mkdir server server/routes server/api server/functions
        touch server/index.ts server/routes/index-route.ts server/api/main-api.ts server/functions/main-functoin.ts
        echo "all set :)"
    else
        echo "too bad man :("
        
    end
else 
    echo ":( too bad"
end
