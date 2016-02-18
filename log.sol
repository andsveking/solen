module log

require io

function err( str : String )
    io.println( "[ \x1B[31m☠☠\x1B[0m ] " .. str )
end

function deb( str : String )
    io.println( "[ \x1B[33m!!\x1B[0m ] " .. str )
end

function ok( str : String )
    io.println( "[ \x1B[32mok\x1B[0m ] " .. str )
end