.class synthetic Lcom/parrot/freeflight/core/academy/uploader/PudParser$1;
.super Ljava/lang/Object;
.source "PudParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/core/academy/uploader/PudParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_ARDRONE3_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM:[I

.field static final synthetic $SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_ARDRONE3_PILOTINGSTATE_FLYINGSTATECHANGED_STATE_ENUM:[I

.field static final synthetic $SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_JUMPINGSUMO_ANIMATIONSSTATE_JUMPTYPECHANGED_STATE_ENUM:[I

.field static final synthetic $SwitchMap$com$parrot$arsdk$ardiscovery$ARDISCOVERY_PRODUCT_FAMILY_ENUM:[I

.field static final synthetic $SwitchMap$com$parrot$freeflight$core$academy$model$ARAcademyPudHeader$HeaderType:[I

.field static final synthetic $SwitchMap$com$parrot$freeflight$core$academy$uploader$PudParser$ARAcademyPudHeaderEnum:[I

.field static final synthetic $SwitchMap$com$parrot$freeflight$core$academy$uploader$PudParser$GPS_AVAILABLE_FIELD_ENUM:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 366
    invoke-static {}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_FAMILY_ENUM;->values()[Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_FAMILY_ENUM;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/parrot/freeflight/core/academy/uploader/PudParser$1;->$SwitchMap$com$parrot$arsdk$ardiscovery$ARDISCOVERY_PRODUCT_FAMILY_ENUM:[I

    :try_start_0
    sget-object v0, Lcom/parrot/freeflight/core/academy/uploader/PudParser$1;->$SwitchMap$com$parrot$arsdk$ardiscovery$ARDISCOVERY_PRODUCT_FAMILY_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_FAMILY_ENUM;->ARDISCOVERY_PRODUCT_FAMILY_ARDRONE:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_FAMILY_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_FAMILY_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_21

    :goto_0
    :try_start_1
    sget-object v0, Lcom/parrot/freeflight/core/academy/uploader/PudParser$1;->$SwitchMap$com$parrot$arsdk$ardiscovery$ARDISCOVERY_PRODUCT_FAMILY_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_FAMILY_ENUM;->ARDISCOVERY_PRODUCT_FAMILY_MINIDRONE:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_FAMILY_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_FAMILY_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_20

    :goto_1
    :try_start_2
    sget-object v0, Lcom/parrot/freeflight/core/academy/uploader/PudParser$1;->$SwitchMap$com$parrot$arsdk$ardiscovery$ARDISCOVERY_PRODUCT_FAMILY_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_FAMILY_ENUM;->ARDISCOVERY_PRODUCT_FAMILY_FIXED_WING:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_FAMILY_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_FAMILY_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1f

    :goto_2
    :try_start_3
    sget-object v0, Lcom/parrot/freeflight/core/academy/uploader/PudParser$1;->$SwitchMap$com$parrot$arsdk$ardiscovery$ARDISCOVERY_PRODUCT_FAMILY_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_FAMILY_ENUM;->ARDISCOVERY_PRODUCT_FAMILY_JS:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_FAMILY_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_FAMILY_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1e

    .line 249
    :goto_3
    invoke-static {}, Lcom/parrot/freeflight/core/academy/uploader/PudParser$GPS_AVAILABLE_FIELD_ENUM;->values()[Lcom/parrot/freeflight/core/academy/uploader/PudParser$GPS_AVAILABLE_FIELD_ENUM;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/parrot/freeflight/core/academy/uploader/PudParser$1;->$SwitchMap$com$parrot$freeflight$core$academy$uploader$PudParser$GPS_AVAILABLE_FIELD_ENUM:[I

    :try_start_4
    sget-object v0, Lcom/parrot/freeflight/core/academy/uploader/PudParser$1;->$SwitchMap$com$parrot$freeflight$core$academy$uploader$PudParser$GPS_AVAILABLE_FIELD_ENUM:[I

    sget-object v1, Lcom/parrot/freeflight/core/academy/uploader/PudParser$GPS_AVAILABLE_FIELD_ENUM;->ARACADEMY_UPLOADER_GPS_AVAILABLE_FIELD_MAX:Lcom/parrot/freeflight/core/academy/uploader/PudParser$GPS_AVAILABLE_FIELD_ENUM;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/academy/uploader/PudParser$GPS_AVAILABLE_FIELD_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1d

    :goto_4
    :try_start_5
    sget-object v0, Lcom/parrot/freeflight/core/academy/uploader/PudParser$1;->$SwitchMap$com$parrot$freeflight$core$academy$uploader$PudParser$GPS_AVAILABLE_FIELD_ENUM:[I

    sget-object v1, Lcom/parrot/freeflight/core/academy/uploader/PudParser$GPS_AVAILABLE_FIELD_ENUM;->ARACADEMY_UPLOADER_GPS_AVAILABLE_FIELD_AVAILABLE:Lcom/parrot/freeflight/core/academy/uploader/PudParser$GPS_AVAILABLE_FIELD_ENUM;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/academy/uploader/PudParser$GPS_AVAILABLE_FIELD_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1c

    :goto_5
    :try_start_6
    sget-object v0, Lcom/parrot/freeflight/core/academy/uploader/PudParser$1;->$SwitchMap$com$parrot$freeflight$core$academy$uploader$PudParser$GPS_AVAILABLE_FIELD_ENUM:[I

    sget-object v1, Lcom/parrot/freeflight/core/academy/uploader/PudParser$GPS_AVAILABLE_FIELD_ENUM;->ARACADEMY_UPLOADER_GPS_AVAILABLE_FIELD_PRESENT:Lcom/parrot/freeflight/core/academy/uploader/PudParser$GPS_AVAILABLE_FIELD_ENUM;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/academy/uploader/PudParser$GPS_AVAILABLE_FIELD_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_1b

    :goto_6
    :try_start_7
    sget-object v0, Lcom/parrot/freeflight/core/academy/uploader/PudParser$1;->$SwitchMap$com$parrot$freeflight$core$academy$uploader$PudParser$GPS_AVAILABLE_FIELD_ENUM:[I

    sget-object v1, Lcom/parrot/freeflight/core/academy/uploader/PudParser$GPS_AVAILABLE_FIELD_ENUM;->ARACADEMY_UPLOADER_GPS_AVAILABLE_FIELD_NOT_PRESENT:Lcom/parrot/freeflight/core/academy/uploader/PudParser$GPS_AVAILABLE_FIELD_ENUM;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/academy/uploader/PudParser$GPS_AVAILABLE_FIELD_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_1a

    .line 189
    :goto_7
    invoke-static {}, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;->values()[Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/parrot/freeflight/core/academy/uploader/PudParser$1;->$SwitchMap$com$parrot$freeflight$core$academy$uploader$PudParser$ARAcademyPudHeaderEnum:[I

    :try_start_8
    sget-object v0, Lcom/parrot/freeflight/core/academy/uploader/PudParser$1;->$SwitchMap$com$parrot$freeflight$core$academy$uploader$PudParser$ARAcademyPudHeaderEnum:[I

    sget-object v1, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;->HEADER_TIME:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_19

    :goto_8
    :try_start_9
    sget-object v0, Lcom/parrot/freeflight/core/academy/uploader/PudParser$1;->$SwitchMap$com$parrot$freeflight$core$academy$uploader$PudParser$ARAcademyPudHeaderEnum:[I

    sget-object v1, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;->HEADER_SPEED_VX:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_18

    :goto_9
    :try_start_a
    sget-object v0, Lcom/parrot/freeflight/core/academy/uploader/PudParser$1;->$SwitchMap$com$parrot$freeflight$core$academy$uploader$PudParser$ARAcademyPudHeaderEnum:[I

    sget-object v1, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;->HEADER_SPEED_VY:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_17

    :goto_a
    :try_start_b
    sget-object v0, Lcom/parrot/freeflight/core/academy/uploader/PudParser$1;->$SwitchMap$com$parrot$freeflight$core$academy$uploader$PudParser$ARAcademyPudHeaderEnum:[I

    sget-object v1, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;->HEADER_SPEED_VZ:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_16

    :goto_b
    :try_start_c
    sget-object v0, Lcom/parrot/freeflight/core/academy/uploader/PudParser$1;->$SwitchMap$com$parrot$freeflight$core$academy$uploader$PudParser$ARAcademyPudHeaderEnum:[I

    sget-object v1, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;->HEADER_FLYING_STATE:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_15

    :goto_c
    :try_start_d
    sget-object v0, Lcom/parrot/freeflight/core/academy/uploader/PudParser$1;->$SwitchMap$com$parrot$freeflight$core$academy$uploader$PudParser$ARAcademyPudHeaderEnum:[I

    sget-object v1, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;->HEADER_ALERT_STATE:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_14

    :goto_d
    :try_start_e
    sget-object v0, Lcom/parrot/freeflight/core/academy/uploader/PudParser$1;->$SwitchMap$com$parrot$freeflight$core$academy$uploader$PudParser$ARAcademyPudHeaderEnum:[I

    sget-object v1, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;->HEADER_JUMP_TYPE:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_13

    :goto_e
    :try_start_f
    sget-object v0, Lcom/parrot/freeflight/core/academy/uploader/PudParser$1;->$SwitchMap$com$parrot$freeflight$core$academy$uploader$PudParser$ARAcademyPudHeaderEnum:[I

    sget-object v1, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;->HEADER_PRODUCT_GPS_AVAILABLE:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_12

    :goto_f
    :try_start_10
    sget-object v0, Lcom/parrot/freeflight/core/academy/uploader/PudParser$1;->$SwitchMap$com$parrot$freeflight$core$academy$uploader$PudParser$ARAcademyPudHeaderEnum:[I

    sget-object v1, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;->HEADER_PRODUCT_GPS_LONGITUDE:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_11

    :goto_10
    :try_start_11
    sget-object v0, Lcom/parrot/freeflight/core/academy/uploader/PudParser$1;->$SwitchMap$com$parrot$freeflight$core$academy$uploader$PudParser$ARAcademyPudHeaderEnum:[I

    sget-object v1, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;->HEADER_PRODUCT_GPS_LATITUDE:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_10

    :goto_11
    :try_start_12
    sget-object v0, Lcom/parrot/freeflight/core/academy/uploader/PudParser$1;->$SwitchMap$com$parrot$freeflight$core$academy$uploader$PudParser$ARAcademyPudHeaderEnum:[I

    sget-object v1, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;->HEADER_CONTROLLER_GPS_LONGITUDE:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_f

    :goto_12
    :try_start_13
    sget-object v0, Lcom/parrot/freeflight/core/academy/uploader/PudParser$1;->$SwitchMap$com$parrot$freeflight$core$academy$uploader$PudParser$ARAcademyPudHeaderEnum:[I

    sget-object v1, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;->HEADER_CONTROLLER_GPS_LATITUDE:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_e

    .line 230
    :goto_13
    invoke-static {}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_ANIMATIONSSTATE_JUMPTYPECHANGED_STATE_ENUM;->values()[Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_ANIMATIONSSTATE_JUMPTYPECHANGED_STATE_ENUM;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/parrot/freeflight/core/academy/uploader/PudParser$1;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_JUMPINGSUMO_ANIMATIONSSTATE_JUMPTYPECHANGED_STATE_ENUM:[I

    :try_start_14
    sget-object v0, Lcom/parrot/freeflight/core/academy/uploader/PudParser$1;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_JUMPINGSUMO_ANIMATIONSSTATE_JUMPTYPECHANGED_STATE_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_ANIMATIONSSTATE_JUMPTYPECHANGED_STATE_ENUM;->ARCOMMANDS_JUMPINGSUMO_ANIMATIONSSTATE_JUMPTYPECHANGED_STATE_LONG:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_ANIMATIONSSTATE_JUMPTYPECHANGED_STATE_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_ANIMATIONSSTATE_JUMPTYPECHANGED_STATE_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_d

    :goto_14
    :try_start_15
    sget-object v0, Lcom/parrot/freeflight/core/academy/uploader/PudParser$1;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_JUMPINGSUMO_ANIMATIONSSTATE_JUMPTYPECHANGED_STATE_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_ANIMATIONSSTATE_JUMPTYPECHANGED_STATE_ENUM;->ARCOMMANDS_JUMPINGSUMO_ANIMATIONSSTATE_JUMPTYPECHANGED_STATE_HIGH:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_ANIMATIONSSTATE_JUMPTYPECHANGED_STATE_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_ANIMATIONSSTATE_JUMPTYPECHANGED_STATE_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_c

    .line 213
    :goto_15
    invoke-static {}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM;->values()[Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/parrot/freeflight/core/academy/uploader/PudParser$1;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_ARDRONE3_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM:[I

    :try_start_16
    sget-object v0, Lcom/parrot/freeflight/core/academy/uploader/PudParser$1;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_ARDRONE3_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM;->ARCOMMANDS_ARDRONE3_PILOTINGSTATE_ALERTSTATECHANGED_STATE_USER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_b

    :goto_16
    :try_start_17
    sget-object v0, Lcom/parrot/freeflight/core/academy/uploader/PudParser$1;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_ARDRONE3_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM;->ARCOMMANDS_ARDRONE3_PILOTINGSTATE_ALERTSTATECHANGED_STATE_CUT_OUT:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_a

    :goto_17
    :try_start_18
    sget-object v0, Lcom/parrot/freeflight/core/academy/uploader/PudParser$1;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_ARDRONE3_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM;->ARCOMMANDS_ARDRONE3_PILOTINGSTATE_ALERTSTATECHANGED_STATE_TOO_MUCH_ANGLE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_9

    .line 199
    :goto_18
    invoke-static {}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_FLYINGSTATECHANGED_STATE_ENUM;->values()[Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_FLYINGSTATECHANGED_STATE_ENUM;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/parrot/freeflight/core/academy/uploader/PudParser$1;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_ARDRONE3_PILOTINGSTATE_FLYINGSTATECHANGED_STATE_ENUM:[I

    :try_start_19
    sget-object v0, Lcom/parrot/freeflight/core/academy/uploader/PudParser$1;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_ARDRONE3_PILOTINGSTATE_FLYINGSTATECHANGED_STATE_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_FLYINGSTATECHANGED_STATE_ENUM;->ARCOMMANDS_ARDRONE3_PILOTINGSTATE_FLYINGSTATECHANGED_STATE_TAKINGOFF:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_FLYINGSTATECHANGED_STATE_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_FLYINGSTATECHANGED_STATE_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_8

    :goto_19
    :try_start_1a
    sget-object v0, Lcom/parrot/freeflight/core/academy/uploader/PudParser$1;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_ARDRONE3_PILOTINGSTATE_FLYINGSTATECHANGED_STATE_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_FLYINGSTATECHANGED_STATE_ENUM;->ARCOMMANDS_ARDRONE3_PILOTINGSTATE_FLYINGSTATECHANGED_STATE_LANDING:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_FLYINGSTATECHANGED_STATE_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_FLYINGSTATECHANGED_STATE_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_7

    :goto_1a
    :try_start_1b
    sget-object v0, Lcom/parrot/freeflight/core/academy/uploader/PudParser$1;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_ARDRONE3_PILOTINGSTATE_FLYINGSTATECHANGED_STATE_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_FLYINGSTATECHANGED_STATE_ENUM;->ARCOMMANDS_ARDRONE3_PILOTINGSTATE_FLYINGSTATECHANGED_STATE_HOVERING:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_FLYINGSTATECHANGED_STATE_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_FLYINGSTATECHANGED_STATE_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_6

    :goto_1b
    :try_start_1c
    sget-object v0, Lcom/parrot/freeflight/core/academy/uploader/PudParser$1;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_ARDRONE3_PILOTINGSTATE_FLYINGSTATECHANGED_STATE_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_FLYINGSTATECHANGED_STATE_ENUM;->ARCOMMANDS_ARDRONE3_PILOTINGSTATE_FLYINGSTATECHANGED_STATE_FLYING:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_FLYINGSTATECHANGED_STATE_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_FLYINGSTATECHANGED_STATE_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_5

    .line 128
    :goto_1c
    invoke-static {}, Lcom/parrot/freeflight/core/academy/model/ARAcademyPudHeader$HeaderType;->values()[Lcom/parrot/freeflight/core/academy/model/ARAcademyPudHeader$HeaderType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/parrot/freeflight/core/academy/uploader/PudParser$1;->$SwitchMap$com$parrot$freeflight$core$academy$model$ARAcademyPudHeader$HeaderType:[I

    :try_start_1d
    sget-object v0, Lcom/parrot/freeflight/core/academy/uploader/PudParser$1;->$SwitchMap$com$parrot$freeflight$core$academy$model$ARAcademyPudHeader$HeaderType:[I

    sget-object v1, Lcom/parrot/freeflight/core/academy/model/ARAcademyPudHeader$HeaderType;->TYPE_STRING:Lcom/parrot/freeflight/core/academy/model/ARAcademyPudHeader$HeaderType;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/academy/model/ARAcademyPudHeader$HeaderType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_4

    :goto_1d
    :try_start_1e
    sget-object v0, Lcom/parrot/freeflight/core/academy/uploader/PudParser$1;->$SwitchMap$com$parrot$freeflight$core$academy$model$ARAcademyPudHeader$HeaderType:[I

    sget-object v1, Lcom/parrot/freeflight/core/academy/model/ARAcademyPudHeader$HeaderType;->TYPE_INTEGER:Lcom/parrot/freeflight/core/academy/model/ARAcademyPudHeader$HeaderType;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/academy/model/ARAcademyPudHeader$HeaderType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_3

    :goto_1e
    :try_start_1f
    sget-object v0, Lcom/parrot/freeflight/core/academy/uploader/PudParser$1;->$SwitchMap$com$parrot$freeflight$core$academy$model$ARAcademyPudHeader$HeaderType:[I

    sget-object v1, Lcom/parrot/freeflight/core/academy/model/ARAcademyPudHeader$HeaderType;->TYPE_BOOLEAN:Lcom/parrot/freeflight/core/academy/model/ARAcademyPudHeader$HeaderType;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/academy/model/ARAcademyPudHeader$HeaderType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_2

    :goto_1f
    :try_start_20
    sget-object v0, Lcom/parrot/freeflight/core/academy/uploader/PudParser$1;->$SwitchMap$com$parrot$freeflight$core$academy$model$ARAcademyPudHeader$HeaderType:[I

    sget-object v1, Lcom/parrot/freeflight/core/academy/model/ARAcademyPudHeader$HeaderType;->TYPE_FLOAT:Lcom/parrot/freeflight/core/academy/model/ARAcademyPudHeader$HeaderType;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/academy/model/ARAcademyPudHeader$HeaderType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_1

    :goto_20
    :try_start_21
    sget-object v0, Lcom/parrot/freeflight/core/academy/uploader/PudParser$1;->$SwitchMap$com$parrot$freeflight$core$academy$model$ARAcademyPudHeader$HeaderType:[I

    sget-object v1, Lcom/parrot/freeflight/core/academy/model/ARAcademyPudHeader$HeaderType;->TYPE_DOUBLE:Lcom/parrot/freeflight/core/academy/model/ARAcademyPudHeader$HeaderType;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/academy/model/ARAcademyPudHeader$HeaderType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_0

    :goto_21
    return-void

    :catch_0
    move-exception v0

    goto :goto_21

    :catch_1
    move-exception v0

    goto :goto_20

    :catch_2
    move-exception v0

    goto :goto_1f

    :catch_3
    move-exception v0

    goto :goto_1e

    :catch_4
    move-exception v0

    goto :goto_1d

    .line 199
    :catch_5
    move-exception v0

    goto :goto_1c

    :catch_6
    move-exception v0

    goto :goto_1b

    :catch_7
    move-exception v0

    goto :goto_1a

    :catch_8
    move-exception v0

    goto :goto_19

    .line 213
    :catch_9
    move-exception v0

    goto/16 :goto_18

    :catch_a
    move-exception v0

    goto/16 :goto_17

    :catch_b
    move-exception v0

    goto/16 :goto_16

    .line 230
    :catch_c
    move-exception v0

    goto/16 :goto_15

    :catch_d
    move-exception v0

    goto/16 :goto_14

    .line 189
    :catch_e
    move-exception v0

    goto/16 :goto_13

    :catch_f
    move-exception v0

    goto/16 :goto_12

    :catch_10
    move-exception v0

    goto/16 :goto_11

    :catch_11
    move-exception v0

    goto/16 :goto_10

    :catch_12
    move-exception v0

    goto/16 :goto_f

    :catch_13
    move-exception v0

    goto/16 :goto_e

    :catch_14
    move-exception v0

    goto/16 :goto_d

    :catch_15
    move-exception v0

    goto/16 :goto_c

    :catch_16
    move-exception v0

    goto/16 :goto_b

    :catch_17
    move-exception v0

    goto/16 :goto_a

    :catch_18
    move-exception v0

    goto/16 :goto_9

    :catch_19
    move-exception v0

    goto/16 :goto_8

    .line 249
    :catch_1a
    move-exception v0

    goto/16 :goto_7

    :catch_1b
    move-exception v0

    goto/16 :goto_6

    :catch_1c
    move-exception v0

    goto/16 :goto_5

    :catch_1d
    move-exception v0

    goto/16 :goto_4

    .line 366
    :catch_1e
    move-exception v0

    goto/16 :goto_3

    :catch_1f
    move-exception v0

    goto/16 :goto_2

    :catch_20
    move-exception v0

    goto/16 :goto_1

    :catch_21
    move-exception v0

    goto/16 :goto_0
.end method
