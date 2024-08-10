.class synthetic Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$4;
.super Ljava/lang/Object;
.source "SkyControllerModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_DRONE_MANAGER_CONNECTION_STATE_ENUM:[I

.field static final synthetic $SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_DRONE_MANAGER_SECURITY_ENUM:[I

.field static final synthetic $SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_SKYCONTROLLER_CALIBRATIONSTATE_MAGNETOCALIBRATIONSTATEV2_STATE_ENUM:[I

.field static final synthetic $SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_SKYCONTROLLER_CALIBRATIONSTATE_MAGNETOCALIBRATIONSTATE_STATUS_ENUM:[I

.field static final synthetic $SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_SKYCONTROLLER_SETTINGSSTATE_PRODUCTVARIANTCHANGED_VARIANT_ENUM:[I

.field static final synthetic $SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_SKYCONTROLLER_WIFISTATE_CONNEXIONCHANGED_STATUS_ENUM:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1364
    invoke-static {}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_CALIBRATIONSTATE_MAGNETOCALIBRATIONSTATEV2_STATE_ENUM;->values()[Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_CALIBRATIONSTATE_MAGNETOCALIBRATIONSTATEV2_STATE_ENUM;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$4;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_SKYCONTROLLER_CALIBRATIONSTATE_MAGNETOCALIBRATIONSTATEV2_STATE_ENUM:[I

    :try_start_0
    sget-object v0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$4;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_SKYCONTROLLER_CALIBRATIONSTATE_MAGNETOCALIBRATIONSTATEV2_STATE_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_CALIBRATIONSTATE_MAGNETOCALIBRATIONSTATEV2_STATE_ENUM;->ARCOMMANDS_SKYCONTROLLER_CALIBRATIONSTATE_MAGNETOCALIBRATIONSTATEV2_STATE_CALIBRATED:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_CALIBRATIONSTATE_MAGNETOCALIBRATIONSTATEV2_STATE_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_CALIBRATIONSTATE_MAGNETOCALIBRATIONSTATEV2_STATE_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_15

    :goto_0
    :try_start_1
    sget-object v0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$4;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_SKYCONTROLLER_CALIBRATIONSTATE_MAGNETOCALIBRATIONSTATEV2_STATE_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_CALIBRATIONSTATE_MAGNETOCALIBRATIONSTATEV2_STATE_ENUM;->ARCOMMANDS_SKYCONTROLLER_CALIBRATIONSTATE_MAGNETOCALIBRATIONSTATEV2_STATE_CALIBRATINGX:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_CALIBRATIONSTATE_MAGNETOCALIBRATIONSTATEV2_STATE_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_CALIBRATIONSTATE_MAGNETOCALIBRATIONSTATEV2_STATE_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_14

    :goto_1
    :try_start_2
    sget-object v0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$4;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_SKYCONTROLLER_CALIBRATIONSTATE_MAGNETOCALIBRATIONSTATEV2_STATE_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_CALIBRATIONSTATE_MAGNETOCALIBRATIONSTATEV2_STATE_ENUM;->ARCOMMANDS_SKYCONTROLLER_CALIBRATIONSTATE_MAGNETOCALIBRATIONSTATEV2_STATE_CALIBRATINGY:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_CALIBRATIONSTATE_MAGNETOCALIBRATIONSTATEV2_STATE_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_CALIBRATIONSTATE_MAGNETOCALIBRATIONSTATEV2_STATE_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_13

    :goto_2
    :try_start_3
    sget-object v0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$4;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_SKYCONTROLLER_CALIBRATIONSTATE_MAGNETOCALIBRATIONSTATEV2_STATE_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_CALIBRATIONSTATE_MAGNETOCALIBRATIONSTATEV2_STATE_ENUM;->ARCOMMANDS_SKYCONTROLLER_CALIBRATIONSTATE_MAGNETOCALIBRATIONSTATEV2_STATE_CALIBRATINGZ:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_CALIBRATIONSTATE_MAGNETOCALIBRATIONSTATEV2_STATE_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_CALIBRATIONSTATE_MAGNETOCALIBRATIONSTATEV2_STATE_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_12

    :goto_3
    :try_start_4
    sget-object v0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$4;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_SKYCONTROLLER_CALIBRATIONSTATE_MAGNETOCALIBRATIONSTATEV2_STATE_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_CALIBRATIONSTATE_MAGNETOCALIBRATIONSTATEV2_STATE_ENUM;->ARCOMMANDS_SKYCONTROLLER_CALIBRATIONSTATE_MAGNETOCALIBRATIONSTATEV2_STATE_NOTCALIBRATED:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_CALIBRATIONSTATE_MAGNETOCALIBRATIONSTATEV2_STATE_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_CALIBRATIONSTATE_MAGNETOCALIBRATIONSTATEV2_STATE_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_11

    .line 1325
    :goto_4
    invoke-static {}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_CALIBRATIONSTATE_MAGNETOCALIBRATIONSTATE_STATUS_ENUM;->values()[Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_CALIBRATIONSTATE_MAGNETOCALIBRATIONSTATE_STATUS_ENUM;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$4;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_SKYCONTROLLER_CALIBRATIONSTATE_MAGNETOCALIBRATIONSTATE_STATUS_ENUM:[I

    :try_start_5
    sget-object v0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$4;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_SKYCONTROLLER_CALIBRATIONSTATE_MAGNETOCALIBRATIONSTATE_STATUS_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_CALIBRATIONSTATE_MAGNETOCALIBRATIONSTATE_STATUS_ENUM;->ARCOMMANDS_SKYCONTROLLER_CALIBRATIONSTATE_MAGNETOCALIBRATIONSTATE_STATUS_CALIBRATED:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_CALIBRATIONSTATE_MAGNETOCALIBRATIONSTATE_STATUS_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_CALIBRATIONSTATE_MAGNETOCALIBRATIONSTATE_STATUS_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_10

    :goto_5
    :try_start_6
    sget-object v0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$4;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_SKYCONTROLLER_CALIBRATIONSTATE_MAGNETOCALIBRATIONSTATE_STATUS_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_CALIBRATIONSTATE_MAGNETOCALIBRATIONSTATE_STATUS_ENUM;->ARCOMMANDS_SKYCONTROLLER_CALIBRATIONSTATE_MAGNETOCALIBRATIONSTATE_STATUS_ASSESSING:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_CALIBRATIONSTATE_MAGNETOCALIBRATIONSTATE_STATUS_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_CALIBRATIONSTATE_MAGNETOCALIBRATIONSTATE_STATUS_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_f

    :goto_6
    :try_start_7
    sget-object v0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$4;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_SKYCONTROLLER_CALIBRATIONSTATE_MAGNETOCALIBRATIONSTATE_STATUS_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_CALIBRATIONSTATE_MAGNETOCALIBRATIONSTATE_STATUS_ENUM;->ARCOMMANDS_SKYCONTROLLER_CALIBRATIONSTATE_MAGNETOCALIBRATIONSTATE_STATUS_UNRELIABLE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_CALIBRATIONSTATE_MAGNETOCALIBRATIONSTATE_STATUS_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_CALIBRATIONSTATE_MAGNETOCALIBRATIONSTATE_STATUS_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_e

    .line 1269
    :goto_7
    invoke-static {}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DRONE_MANAGER_CONNECTION_STATE_ENUM;->values()[Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DRONE_MANAGER_CONNECTION_STATE_ENUM;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$4;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_DRONE_MANAGER_CONNECTION_STATE_ENUM:[I

    :try_start_8
    sget-object v0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$4;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_DRONE_MANAGER_CONNECTION_STATE_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DRONE_MANAGER_CONNECTION_STATE_ENUM;->CONNECTING:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DRONE_MANAGER_CONNECTION_STATE_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DRONE_MANAGER_CONNECTION_STATE_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_d

    :goto_8
    :try_start_9
    sget-object v0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$4;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_DRONE_MANAGER_CONNECTION_STATE_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DRONE_MANAGER_CONNECTION_STATE_ENUM;->CONNECTED:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DRONE_MANAGER_CONNECTION_STATE_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DRONE_MANAGER_CONNECTION_STATE_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_c

    :goto_9
    :try_start_a
    sget-object v0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$4;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_DRONE_MANAGER_CONNECTION_STATE_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DRONE_MANAGER_CONNECTION_STATE_ENUM;->DISCONNECTING:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DRONE_MANAGER_CONNECTION_STATE_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DRONE_MANAGER_CONNECTION_STATE_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_b

    :goto_a
    :try_start_b
    sget-object v0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$4;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_DRONE_MANAGER_CONNECTION_STATE_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DRONE_MANAGER_CONNECTION_STATE_ENUM;->SEARCHING:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DRONE_MANAGER_CONNECTION_STATE_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DRONE_MANAGER_CONNECTION_STATE_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_a

    :goto_b
    :try_start_c
    sget-object v0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$4;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_DRONE_MANAGER_CONNECTION_STATE_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DRONE_MANAGER_CONNECTION_STATE_ENUM;->IDLE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DRONE_MANAGER_CONNECTION_STATE_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DRONE_MANAGER_CONNECTION_STATE_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_9

    :goto_c
    :try_start_d
    sget-object v0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$4;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_DRONE_MANAGER_CONNECTION_STATE_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DRONE_MANAGER_CONNECTION_STATE_ENUM;->UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DRONE_MANAGER_CONNECTION_STATE_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DRONE_MANAGER_CONNECTION_STATE_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_8

    .line 1230
    :goto_d
    invoke-static {}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DRONE_MANAGER_SECURITY_ENUM;->values()[Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DRONE_MANAGER_SECURITY_ENUM;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$4;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_DRONE_MANAGER_SECURITY_ENUM:[I

    :try_start_e
    sget-object v0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$4;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_DRONE_MANAGER_SECURITY_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DRONE_MANAGER_SECURITY_ENUM;->WPA2:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DRONE_MANAGER_SECURITY_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DRONE_MANAGER_SECURITY_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_7

    :goto_e
    :try_start_f
    sget-object v0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$4;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_DRONE_MANAGER_SECURITY_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DRONE_MANAGER_SECURITY_ENUM;->NONE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DRONE_MANAGER_SECURITY_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DRONE_MANAGER_SECURITY_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_6

    :goto_f
    :try_start_10
    sget-object v0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$4;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_DRONE_MANAGER_SECURITY_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DRONE_MANAGER_SECURITY_ENUM;->UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DRONE_MANAGER_SECURITY_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DRONE_MANAGER_SECURITY_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_5

    .line 1194
    :goto_10
    invoke-static {}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_WIFISTATE_CONNEXIONCHANGED_STATUS_ENUM;->values()[Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_WIFISTATE_CONNEXIONCHANGED_STATUS_ENUM;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$4;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_SKYCONTROLLER_WIFISTATE_CONNEXIONCHANGED_STATUS_ENUM:[I

    :try_start_11
    sget-object v0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$4;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_SKYCONTROLLER_WIFISTATE_CONNEXIONCHANGED_STATUS_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_WIFISTATE_CONNEXIONCHANGED_STATUS_ENUM;->ARCOMMANDS_SKYCONTROLLER_WIFISTATE_CONNEXIONCHANGED_STATUS_ERROR:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_WIFISTATE_CONNEXIONCHANGED_STATUS_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_WIFISTATE_CONNEXIONCHANGED_STATUS_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_4

    :goto_11
    :try_start_12
    sget-object v0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$4;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_SKYCONTROLLER_WIFISTATE_CONNEXIONCHANGED_STATUS_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_WIFISTATE_CONNEXIONCHANGED_STATUS_ENUM;->ARCOMMANDS_SKYCONTROLLER_WIFISTATE_CONNEXIONCHANGED_STATUS_DISCONNECTED:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_WIFISTATE_CONNEXIONCHANGED_STATUS_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_WIFISTATE_CONNEXIONCHANGED_STATUS_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_3

    :goto_12
    :try_start_13
    sget-object v0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$4;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_SKYCONTROLLER_WIFISTATE_CONNEXIONCHANGED_STATUS_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_WIFISTATE_CONNEXIONCHANGED_STATUS_ENUM;->ARCOMMANDS_SKYCONTROLLER_WIFISTATE_CONNEXIONCHANGED_STATUS_CONNECTED:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_WIFISTATE_CONNEXIONCHANGED_STATUS_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_WIFISTATE_CONNEXIONCHANGED_STATUS_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_2

    .line 1051
    :goto_13
    invoke-static {}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_SETTINGSSTATE_PRODUCTVARIANTCHANGED_VARIANT_ENUM;->values()[Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_SETTINGSSTATE_PRODUCTVARIANTCHANGED_VARIANT_ENUM;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$4;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_SKYCONTROLLER_SETTINGSSTATE_PRODUCTVARIANTCHANGED_VARIANT_ENUM:[I

    :try_start_14
    sget-object v0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$4;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_SKYCONTROLLER_SETTINGSSTATE_PRODUCTVARIANTCHANGED_VARIANT_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_SETTINGSSTATE_PRODUCTVARIANTCHANGED_VARIANT_ENUM;->ARCOMMANDS_SKYCONTROLLER_SETTINGSSTATE_PRODUCTVARIANTCHANGED_VARIANT_BEBOP:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_SETTINGSSTATE_PRODUCTVARIANTCHANGED_VARIANT_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_SETTINGSSTATE_PRODUCTVARIANTCHANGED_VARIANT_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_1

    :goto_14
    :try_start_15
    sget-object v0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$4;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_SKYCONTROLLER_SETTINGSSTATE_PRODUCTVARIANTCHANGED_VARIANT_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_SETTINGSSTATE_PRODUCTVARIANTCHANGED_VARIANT_ENUM;->ARCOMMANDS_SKYCONTROLLER_SETTINGSSTATE_PRODUCTVARIANTCHANGED_VARIANT_BEBOP2:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_SETTINGSSTATE_PRODUCTVARIANTCHANGED_VARIANT_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_SETTINGSSTATE_PRODUCTVARIANTCHANGED_VARIANT_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_0

    :goto_15
    return-void

    :catch_0
    move-exception v0

    goto :goto_15

    :catch_1
    move-exception v0

    goto :goto_14

    .line 1194
    :catch_2
    move-exception v0

    goto :goto_13

    :catch_3
    move-exception v0

    goto :goto_12

    :catch_4
    move-exception v0

    goto :goto_11

    .line 1230
    :catch_5
    move-exception v0

    goto :goto_10

    :catch_6
    move-exception v0

    goto :goto_f

    :catch_7
    move-exception v0

    goto :goto_e

    .line 1269
    :catch_8
    move-exception v0

    goto/16 :goto_d

    :catch_9
    move-exception v0

    goto/16 :goto_c

    :catch_a
    move-exception v0

    goto/16 :goto_b

    :catch_b
    move-exception v0

    goto/16 :goto_a

    :catch_c
    move-exception v0

    goto/16 :goto_9

    :catch_d
    move-exception v0

    goto/16 :goto_8

    .line 1325
    :catch_e
    move-exception v0

    goto/16 :goto_7

    :catch_f
    move-exception v0

    goto/16 :goto_6

    :catch_10
    move-exception v0

    goto/16 :goto_5

    .line 1364
    :catch_11
    move-exception v0

    goto/16 :goto_4

    :catch_12
    move-exception v0

    goto/16 :goto_3

    :catch_13
    move-exception v0

    goto/16 :goto_2

    :catch_14
    move-exception v0

    goto/16 :goto_1

    :catch_15
    move-exception v0

    goto/16 :goto_0
.end method
