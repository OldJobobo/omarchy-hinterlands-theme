set -l color00 '#222222'
set -l color01 '#7c7c7c'
set -l color02 '#8b8b8b'
set -l color03 '#a0a0a0'
set -l color04 '#686868'
set -l color05 '#747474'
set -l color06 '#868686'
set -l color07 '#b9b9b9'
set -l color08 '#525252'
set -l color09 '#7c7c7c'
set -l color0A '#8b8b8b'
set -l color0B '#a0a0a0'
set -l color0C '#686868'
set -l color0D '#747474'
set -l color0E '#868686'
set -l color0F '#ffffff'

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"" --color=bg+:$color00,bg:$color00,spinner:$color0E,hl:$color0D"" --color=fg:$color07,header:$color0D,info:$color0A,pointer:$color0E"" --color=marker:$color0E,fg+:$color06,prompt:$color0A,hl+:$color0D"
