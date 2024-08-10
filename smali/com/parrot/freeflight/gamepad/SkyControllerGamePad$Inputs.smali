.class public Lcom/parrot/freeflight/gamepad/SkyControllerGamePad$Inputs;
.super Ljava/lang/Object;
.source "SkyControllerGamePad.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/gamepad/SkyControllerGamePad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Inputs"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/gamepad/SkyControllerGamePad$Inputs$AxisId;
    }
.end annotation


# static fields
.field public static final BUTTON_BACK:Lcom/parrot/freeflight/gamepad/GamePad$Input;

.field public static final BUTTON_EMERGENCY:Lcom/parrot/freeflight/gamepad/GamePad$Input;

.field public static final BUTTON_HOME:Lcom/parrot/freeflight/gamepad/GamePad$Input;

.field public static final BUTTON_PHOTO:Lcom/parrot/freeflight/gamepad/GamePad$Input;

.field public static final BUTTON_RECORD:Lcom/parrot/freeflight/gamepad/GamePad$Input;

.field public static final BUTTON_RETURN_HOME:Lcom/parrot/freeflight/gamepad/GamePad$Input;

.field public static final BUTTON_SETTINGS:Lcom/parrot/freeflight/gamepad/GamePad$Input;

.field public static final BUTTON_TAKEOFF:Lcom/parrot/freeflight/gamepad/GamePad$Input;

.field public static final JOYSTICK_LEFT_LEFT_RIGHT:Lcom/parrot/freeflight/gamepad/GamePad$Input;

.field public static final JOYSTICK_LEFT_UP_DOWN:Lcom/parrot/freeflight/gamepad/GamePad$Input;

.field public static final JOYSTICK_PHOTO_LEFT_RIGHT:Lcom/parrot/freeflight/gamepad/GamePad$Input;

.field public static final JOYSTICK_PHOTO_UP_DOWN:Lcom/parrot/freeflight/gamepad/GamePad$Input;

.field public static final JOYSTICK_RIGHT_LEFT_RIGHT:Lcom/parrot/freeflight/gamepad/GamePad$Input;

.field public static final JOYSTICK_RIGHT_UP_DOWN:Lcom/parrot/freeflight/gamepad/GamePad$Input;

.field public static final JOYSTICK_SETTINGS_LEFT_RIGHT:Lcom/parrot/freeflight/gamepad/GamePad$Input;

.field public static final JOYSTICK_SETTINGS_UP_DOWN:Lcom/parrot/freeflight/gamepad/GamePad$Input;

.field public static final LEFT_JOYSTICK_AXIS_X_ID:I = 0x4

.field public static final LEFT_JOYSTICK_AXIS_Y_ID:I = 0x5

.field public static final RIGHT_JOYSTICK_AXIS_X_ID:I = 0x2

.field public static final RIGHT_JOYSTICK_AXIS_Y_ID:I = 0x3

.field public static final values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/gamepad/GamePad$Input;",
            ">;"
        }
    .end annotation
.end field

.field private static final variantBebop2ResIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final variantBebopResIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x7

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 357
    new-instance v0, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v1, "J3"

    invoke-direct {v0, v1, v4, v6, v3}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad$Inputs;->JOYSTICK_SETTINGS_LEFT_RIGHT:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    .line 358
    new-instance v0, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v1, "J3"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v4, v7, v2}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad$Inputs;->JOYSTICK_SETTINGS_UP_DOWN:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    .line 359
    new-instance v0, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v1, "J2"

    invoke-direct {v0, v1, v4, v6, v4}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad$Inputs;->JOYSTICK_RIGHT_LEFT_RIGHT:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    .line 360
    new-instance v0, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v1, "J2"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v4, v7, v2}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad$Inputs;->JOYSTICK_RIGHT_UP_DOWN:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    .line 361
    new-instance v0, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v1, "J1"

    invoke-direct {v0, v1, v4, v6, v6}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad$Inputs;->JOYSTICK_LEFT_LEFT_RIGHT:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    .line 362
    new-instance v0, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v1, "J1"

    invoke-direct {v0, v1, v4, v7, v7}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad$Inputs;->JOYSTICK_LEFT_UP_DOWN:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    .line 363
    new-instance v0, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v1, "J4"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v4, v6, v2}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad$Inputs;->JOYSTICK_PHOTO_LEFT_RIGHT:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    .line 364
    new-instance v0, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v1, "J4"

    invoke-direct {v0, v1, v4, v7, v5}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad$Inputs;->JOYSTICK_PHOTO_UP_DOWN:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    .line 365
    new-instance v0, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v1, "J3"

    const/16 v2, 0x60

    invoke-direct {v0, v1, v3, v5, v2}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad$Inputs;->BUTTON_SETTINGS:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    .line 366
    new-instance v0, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v1, "5"

    const/16 v2, 0x61

    invoke-direct {v0, v1, v3, v5, v2}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad$Inputs;->BUTTON_RETURN_HOME:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    .line 367
    new-instance v0, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v1, "3"

    const/16 v2, 0x62

    invoke-direct {v0, v1, v3, v5, v2}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad$Inputs;->BUTTON_RECORD:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    .line 368
    new-instance v0, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v1, "6"

    const/16 v2, 0x63

    invoke-direct {v0, v1, v3, v5, v2}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad$Inputs;->BUTTON_EMERGENCY:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    .line 369
    new-instance v0, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v1, "J4"

    const/16 v2, 0x64

    invoke-direct {v0, v1, v3, v5, v2}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad$Inputs;->BUTTON_PHOTO:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    .line 370
    new-instance v0, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v1, "4"

    const/16 v2, 0x65

    invoke-direct {v0, v1, v3, v5, v2}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad$Inputs;->BUTTON_TAKEOFF:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    .line 371
    new-instance v0, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v1, "2"

    const/16 v2, 0x67

    invoke-direct {v0, v1, v3, v5, v2}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad$Inputs;->BUTTON_HOME:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    .line 372
    new-instance v0, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v1, "1"

    const/16 v2, 0x68

    invoke-direct {v0, v1, v3, v5, v2}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad$Inputs;->BUTTON_BACK:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    .line 374
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/parrot/freeflight/gamepad/GamePad$Input;

    sget-object v1, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad$Inputs;->JOYSTICK_SETTINGS_LEFT_RIGHT:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    aput-object v1, v0, v3

    const/4 v1, 0x1

    sget-object v2, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad$Inputs;->JOYSTICK_SETTINGS_UP_DOWN:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    aput-object v2, v0, v1

    sget-object v1, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad$Inputs;->JOYSTICK_RIGHT_LEFT_RIGHT:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    aput-object v1, v0, v4

    const/4 v1, 0x3

    sget-object v2, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad$Inputs;->JOYSTICK_RIGHT_UP_DOWN:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    aput-object v2, v0, v1

    sget-object v1, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad$Inputs;->JOYSTICK_LEFT_LEFT_RIGHT:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    aput-object v1, v0, v6

    sget-object v1, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad$Inputs;->JOYSTICK_LEFT_UP_DOWN:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    aput-object v1, v0, v7

    const/4 v1, 0x6

    sget-object v2, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad$Inputs;->JOYSTICK_PHOTO_LEFT_RIGHT:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    aput-object v2, v0, v1

    sget-object v1, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad$Inputs;->JOYSTICK_PHOTO_UP_DOWN:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    aput-object v1, v0, v5

    const/16 v1, 0x8

    sget-object v2, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad$Inputs;->BUTTON_SETTINGS:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad$Inputs;->BUTTON_RETURN_HOME:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad$Inputs;->BUTTON_RECORD:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad$Inputs;->BUTTON_EMERGENCY:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad$Inputs;->BUTTON_PHOTO:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad$Inputs;->BUTTON_TAKEOFF:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad$Inputs;->BUTTON_HOME:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad$Inputs;->BUTTON_BACK:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad$Inputs;->values:Ljava/util/List;

    .line 380
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_SETTINGSSTATE_PRODUCTVARIANTCHANGED_VARIANT_ENUM;->ARCOMMANDS_SKYCONTROLLER_SETTINGSSTATE_PRODUCTVARIANTCHANGED_VARIANT_BEBOP:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_SETTINGSSTATE_PRODUCTVARIANTCHANGED_VARIANT_ENUM;

    invoke-static {v0}, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad$Inputs;->createResourcesMap(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_SETTINGSSTATE_PRODUCTVARIANTCHANGED_VARIANT_ENUM;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad$Inputs;->variantBebopResIds:Ljava/util/Map;

    .line 381
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_SETTINGSSTATE_PRODUCTVARIANTCHANGED_VARIANT_ENUM;->ARCOMMANDS_SKYCONTROLLER_SETTINGSSTATE_PRODUCTVARIANTCHANGED_VARIANT_BEBOP2:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_SETTINGSSTATE_PRODUCTVARIANTCHANGED_VARIANT_ENUM;

    invoke-static {v0}, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad$Inputs;->createResourcesMap(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_SETTINGSSTATE_PRODUCTVARIANTCHANGED_VARIANT_ENUM;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad$Inputs;->variantBebop2ResIds:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$500(I)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 345
    invoke-static {p0}, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad$Inputs;->getResourcesMap(I)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private static createResourcesMap(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_SETTINGSSTATE_PRODUCTVARIANTCHANGED_VARIANT_ENUM;)Ljava/util/Map;
    .locals 7
    .param p0, "productVariant"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_SETTINGSSTATE_PRODUCTVARIANTCHANGED_VARIANT_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_SETTINGSSTATE_PRODUCTVARIANTCHANGED_VARIANT_ENUM;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const v6, 0x7f0703eb

    const v5, 0x7f0703e6

    const v4, 0x7f0703e3

    const v3, 0x7f0703df

    .line 395
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 396
    .local v0, "resIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    sget-object v1, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad$2;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_SKYCONTROLLER_SETTINGSSTATE_PRODUCTVARIANTCHANGED_VARIANT_ENUM:[I

    invoke-virtual {p0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_SETTINGSSTATE_PRODUCTVARIANTCHANGED_VARIANT_ENUM;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 407
    const-string v1, "1"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    const-string v1, "2"

    const v2, 0x7f0703e7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    const-string v1, "3"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    const-string v1, "4"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    const-string v1, "5"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    const-string v1, "6"

    const v2, 0x7f0703e0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    :goto_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    return-object v1

    .line 398
    :pswitch_0
    const-string v1, "1"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    const-string v1, "2"

    const v2, 0x7f0703e2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    const-string v1, "3"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    const-string v1, "4"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    const-string v1, "5"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    const-string v1, "6"

    const v2, 0x7f0703e1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 396
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static getInputById(I)Lcom/parrot/freeflight/gamepad/GamePad$Input;
    .locals 3
    .param p0, "id"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 385
    sget-object v1, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad$Inputs;->values:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    .line 386
    .local v0, "input":Lcom/parrot/freeflight/gamepad/GamePad$Input;
    iget v2, v0, Lcom/parrot/freeflight/gamepad/GamePad$Input;->id:I

    if-ne v2, p0, :cond_0

    .line 390
    .end local v0    # "input":Lcom/parrot/freeflight/gamepad/GamePad$Input;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getResourcesMap(I)Ljava/util/Map;
    .locals 1
    .param p0, "productVariant"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 421
    packed-switch p0, :pswitch_data_0

    .line 426
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad$Inputs;->variantBebop2ResIds:Ljava/util/Map;

    :goto_0
    return-object v0

    .line 423
    :pswitch_0
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad$Inputs;->variantBebopResIds:Ljava/util/Map;

    goto :goto_0

    .line 421
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
