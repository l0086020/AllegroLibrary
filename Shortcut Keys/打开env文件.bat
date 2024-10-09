for %%d in (C D E F G H I J K L M N O P Q R S T U V W X Y Z) do (
    if exist "%%d:\Program Files\Cadence\share\pcb\text" (
        start explorer "%%d:\Program Files\Cadence\share\pcb\text"
        set found=1
        goto search
    )
)

for %%d in (C D E F G H I J K L M N O P Q R S T U V W X Y Z) do (
    for /d %%p in (%%d:\*) do (
        if /i "%%~npx"=="Cadence" (
            start explorer "%%p\share\pcb\text"
            set found=1
            goto search
        )
    )
)

:end
