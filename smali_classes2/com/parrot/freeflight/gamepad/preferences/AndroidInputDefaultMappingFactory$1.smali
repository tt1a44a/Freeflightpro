.class synthetic Lcom/parrot/freeflight/gamepad/preferences/AndroidInputDefaultMappingFactory$1;
.super Ljava/lang/Object;
.source "AndroidInputDefaultMappingFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/gamepad/preferences/AndroidInputDefaultMappingFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$parrot$arsdk$ardiscovery$ARDISCOVERY_PRODUCT_ENUM:[I

.field static final synthetic $SwitchMap$com$parrot$freeflight$gamepad$command$AppCommand:[I

.field static final synthetic $SwitchMap$com$parrot$freeflight$gamepad$command$BebopCommand:[I

.field static final synthetic $SwitchMap$com$parrot$freeflight$gamepad$command$FpvCommand:[I

.field static final synthetic $SwitchMap$com$parrot$freeflight$gamepad$command$SettingsCommand:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 172
    invoke-static {}, Lcom/parrot/freeflight/gamepad/command/BebopCommand;->values()[Lcom/parrot/freeflight/gamepad/command/BebopCommand;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/parrot/freeflight/gamepad/preferences/AndroidInputDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$BebopCommand:[I

    :try_start_0
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/AndroidInputDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$BebopCommand:[I

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/BebopCommand;->CMD_TAKE_OFF:Lcom/parrot/freeflight/gamepad/command/BebopCommand;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/BebopCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_18

    :goto_0
    :try_start_1
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/AndroidInputDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$BebopCommand:[I

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/BebopCommand;->CMD_RETURN_HOME:Lcom/parrot/freeflight/gamepad/command/BebopCommand;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/BebopCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_17

    :goto_1
    :try_start_2
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/AndroidInputDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$BebopCommand:[I

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/BebopCommand;->CMD_FLIP_FRONT:Lcom/parrot/freeflight/gamepad/command/BebopCommand;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/BebopCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_16

    :goto_2
    :try_start_3
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/AndroidInputDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$BebopCommand:[I

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/BebopCommand;->CMD_FLIP_BACK:Lcom/parrot/freeflight/gamepad/command/BebopCommand;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/BebopCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_15

    :goto_3
    :try_start_4
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/AndroidInputDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$BebopCommand:[I

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/BebopCommand;->CMD_FLIP_LEFT:Lcom/parrot/freeflight/gamepad/command/BebopCommand;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/BebopCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_14

    :goto_4
    :try_start_5
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/AndroidInputDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$BebopCommand:[I

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/BebopCommand;->CMD_FLIP_RIGHT:Lcom/parrot/freeflight/gamepad/command/BebopCommand;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/BebopCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_13

    :goto_5
    :try_start_6
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/AndroidInputDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$BebopCommand:[I

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/BebopCommand;->CMD_CAMERA_TILT:Lcom/parrot/freeflight/gamepad/command/BebopCommand;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/BebopCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_12

    :goto_6
    :try_start_7
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/AndroidInputDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$BebopCommand:[I

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/BebopCommand;->CMD_YAW:Lcom/parrot/freeflight/gamepad/command/BebopCommand;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/BebopCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_11

    :goto_7
    :try_start_8
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/AndroidInputDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$BebopCommand:[I

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/BebopCommand;->CMD_GAZ:Lcom/parrot/freeflight/gamepad/command/BebopCommand;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/BebopCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_10

    :goto_8
    :try_start_9
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/AndroidInputDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$BebopCommand:[I

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/BebopCommand;->CMD_ROLL:Lcom/parrot/freeflight/gamepad/command/BebopCommand;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/BebopCommand;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_f

    :goto_9
    :try_start_a
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/AndroidInputDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$BebopCommand:[I

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/BebopCommand;->CMD_PITCH:Lcom/parrot/freeflight/gamepad/command/BebopCommand;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/BebopCommand;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_e

    .line 113
    :goto_a
    invoke-static {}, Lcom/parrot/freeflight/gamepad/command/AppCommand;->values()[Lcom/parrot/freeflight/gamepad/command/AppCommand;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/parrot/freeflight/gamepad/preferences/AndroidInputDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$AppCommand:[I

    :try_start_b
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/AndroidInputDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$AppCommand:[I

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/AppCommand;->CMD_BACK:Lcom/parrot/freeflight/gamepad/command/AppCommand;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/AppCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_d

    :goto_b
    :try_start_c
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/AndroidInputDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$AppCommand:[I

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/AppCommand;->CMD_VALIDATE:Lcom/parrot/freeflight/gamepad/command/AppCommand;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/AppCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :goto_c
    :try_start_d
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/AndroidInputDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$AppCommand:[I

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/AppCommand;->CMD_LEFT:Lcom/parrot/freeflight/gamepad/command/AppCommand;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/AppCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_b

    :goto_d
    :try_start_e
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/AndroidInputDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$AppCommand:[I

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/AppCommand;->CMD_RIGHT:Lcom/parrot/freeflight/gamepad/command/AppCommand;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/AppCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_a

    :goto_e
    :try_start_f
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/AndroidInputDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$AppCommand:[I

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/AppCommand;->CMD_UP:Lcom/parrot/freeflight/gamepad/command/AppCommand;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/AppCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_9

    :goto_f
    :try_start_10
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/AndroidInputDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$AppCommand:[I

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/AppCommand;->CMD_DOWN:Lcom/parrot/freeflight/gamepad/command/AppCommand;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/AppCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_8

    .line 86
    :goto_10
    invoke-static {}, Lcom/parrot/freeflight/gamepad/command/FpvCommand;->values()[Lcom/parrot/freeflight/gamepad/command/FpvCommand;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/parrot/freeflight/gamepad/preferences/AndroidInputDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$FpvCommand:[I

    :try_start_11
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/AndroidInputDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$FpvCommand:[I

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/FpvCommand;->CMD_DISPLAY_MODE:Lcom/parrot/freeflight/gamepad/command/FpvCommand;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/FpvCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_7

    :goto_11
    :try_start_12
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/AndroidInputDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$FpvCommand:[I

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/FpvCommand;->CMD_VIDEO_POV:Lcom/parrot/freeflight/gamepad/command/FpvCommand;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/FpvCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_6

    .line 65
    :goto_12
    invoke-static {}, Lcom/parrot/freeflight/gamepad/command/SettingsCommand;->values()[Lcom/parrot/freeflight/gamepad/command/SettingsCommand;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/parrot/freeflight/gamepad/preferences/AndroidInputDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$SettingsCommand:[I

    :try_start_13
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/AndroidInputDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$SettingsCommand:[I

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/SettingsCommand;->CMD_OPEN_SETTINGS:Lcom/parrot/freeflight/gamepad/command/SettingsCommand;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/SettingsCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_5

    .line 37
    :goto_13
    invoke-static {}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->values()[Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/parrot/freeflight/gamepad/preferences/AndroidInputDefaultMappingFactory$1;->$SwitchMap$com$parrot$arsdk$ardiscovery$ARDISCOVERY_PRODUCT_ENUM:[I

    :try_start_14
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/AndroidInputDefaultMappingFactory$1;->$SwitchMap$com$parrot$arsdk$ardiscovery$ARDISCOVERY_PRODUCT_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_ARDRONE:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_4

    :goto_14
    :try_start_15
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/AndroidInputDefaultMappingFactory$1;->$SwitchMap$com$parrot$arsdk$ardiscovery$ARDISCOVERY_PRODUCT_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_BEBOP_2:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_3

    :goto_15
    :try_start_16
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/AndroidInputDefaultMappingFactory$1;->$SwitchMap$com$parrot$arsdk$ardiscovery$ARDISCOVERY_PRODUCT_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_CHIMERA:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_2

    :goto_16
    :try_start_17
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/AndroidInputDefaultMappingFactory$1;->$SwitchMap$com$parrot$arsdk$ardiscovery$ARDISCOVERY_PRODUCT_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_ANAFI4K:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_1

    :goto_17
    :try_start_18
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/AndroidInputDefaultMappingFactory$1;->$SwitchMap$com$parrot$arsdk$ardiscovery$ARDISCOVERY_PRODUCT_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_EVINRUDE:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_0

    :goto_18
    return-void

    :catch_0
    move-exception v0

    goto :goto_18

    :catch_1
    move-exception v0

    goto :goto_17

    :catch_2
    move-exception v0

    goto :goto_16

    :catch_3
    move-exception v0

    goto :goto_15

    :catch_4
    move-exception v0

    goto :goto_14

    .line 65
    :catch_5
    move-exception v0

    goto :goto_13

    .line 86
    :catch_6
    move-exception v0

    goto :goto_12

    :catch_7
    move-exception v0

    goto :goto_11

    .line 113
    :catch_8
    move-exception v0

    goto/16 :goto_10

    :catch_9
    move-exception v0

    goto/16 :goto_f

    :catch_a
    move-exception v0

    goto/16 :goto_e

    :catch_b
    move-exception v0

    goto/16 :goto_d

    :catch_c
    move-exception v0

    goto/16 :goto_c

    :catch_d
    move-exception v0

    goto/16 :goto_b

    .line 172
    :catch_e
    move-exception v0

    goto/16 :goto_a

    :catch_f
    move-exception v0

    goto/16 :goto_9

    :catch_10
    move-exception v0

    goto/16 :goto_8

    :catch_11
    move-exception v0

    goto/16 :goto_7

    :catch_12
    move-exception v0

    goto/16 :goto_6

    :catch_13
    move-exception v0

    goto/16 :goto_5

    :catch_14
    move-exception v0

    goto/16 :goto_4

    :catch_15
    move-exception v0

    goto/16 :goto_3

    :catch_16
    move-exception v0

    goto/16 :goto_2

    :catch_17
    move-exception v0

    goto/16 :goto_1

    :catch_18
    move-exception v0

    goto/16 :goto_0
.end method
