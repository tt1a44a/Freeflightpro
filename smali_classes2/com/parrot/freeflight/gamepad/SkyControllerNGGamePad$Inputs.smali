.class public Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;
.super Ljava/lang/Object;
.source "SkyControllerNGGamePad.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Inputs"
.end annotation


# static fields
.field public static final AXIS:Landroid/util/SparseArray;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/parrot/freeflight/gamepad/GamePad$Input;",
            ">;"
        }
    .end annotation
.end field

.field public static final AXIS_LEFT_HORIZONTAL:Lcom/parrot/freeflight/gamepad/GamePad$Input;

.field public static final AXIS_LEFT_HORIZONTAL_ID:I = 0x0

.field public static final AXIS_LEFT_VERTICAL:Lcom/parrot/freeflight/gamepad/GamePad$Input;

.field public static final AXIS_LEFT_VERTICAL_ID:I = 0x1

.field private static final AXIS_NUMBER:I = 0x8

.field public static final AXIS_RIGHT_HORIZONTAL:Lcom/parrot/freeflight/gamepad/GamePad$Input;

.field public static final AXIS_RIGHT_HORIZONTAL_ID:I = 0x2

.field public static final AXIS_RIGHT_VERTICAL:Lcom/parrot/freeflight/gamepad/GamePad$Input;

.field public static final AXIS_RIGHT_VERTICAL_ID:I = 0x3

.field public static final AXIS_TOP_LEFT_HORIZONTAL:Lcom/parrot/freeflight/gamepad/GamePad$Input;

.field public static final AXIS_TOP_LEFT_HORIZONTAL_ID:I = 0x4

.field public static final AXIS_TOP_LEFT_VERTICAL:Lcom/parrot/freeflight/gamepad/GamePad$Input;

.field public static final AXIS_TOP_LEFT_VERTICAL_ID:I = 0x5

.field public static final AXIS_TOP_RIGHT_HORIZONTAL:Lcom/parrot/freeflight/gamepad/GamePad$Input;

.field public static final AXIS_TOP_RIGHT_HORIZONTAL_ID:I = 0x6

.field public static final AXIS_TOP_RIGHT_VERTICAL:Lcom/parrot/freeflight/gamepad/GamePad$Input;

.field public static final AXIS_TOP_RIGHT_VERTICAL_ID:I = 0x7

.field public static final BUTTONS:Landroid/util/SparseArray;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/parrot/freeflight/gamepad/GamePad$Input;",
            ">;"
        }
    .end annotation
.end field

.field private static final BUTTONS_ID_TO_KEY_CODE:Landroid/util/SparseArray;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final BUTTONS_NUMBER:I = 0x18

.field private static final BUTTONS_RES_ID_BEBOP2_VARIANT:Ljava/util/Map;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

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

.field private static final BUTTONS_RES_ID_BEBOP_VARIANT:Ljava/util/Map;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

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

.field public static final BUTTON_BACK:Lcom/parrot/freeflight/gamepad/GamePad$Input;

.field private static final BUTTON_BACK_ID:I = 0x0

.field public static final BUTTON_EMERGENCY:Lcom/parrot/freeflight/gamepad/GamePad$Input;

.field private static final BUTTON_EMERGENCY_ID:I = 0x5

.field public static final BUTTON_HOME:Lcom/parrot/freeflight/gamepad/GamePad$Input;

.field private static final BUTTON_HOME_ID:I = 0x1

.field public static final BUTTON_PHOTO:Lcom/parrot/freeflight/gamepad/GamePad$Input;

.field private static final BUTTON_PHOTO_ID:I = 0x7

.field public static final BUTTON_RECORD:Lcom/parrot/freeflight/gamepad/GamePad$Input;

.field private static final BUTTON_RECORD_ID:I = 0x2

.field public static final BUTTON_RETURN_HOME:Lcom/parrot/freeflight/gamepad/GamePad$Input;

.field private static final BUTTON_RETURN_HOME_ID:I = 0x4

.field public static final BUTTON_SETTING:Lcom/parrot/freeflight/gamepad/GamePad$Input;

.field private static final BUTTON_SETTING_ID:I = 0x6

.field public static final BUTTON_TAKEOFF:Lcom/parrot/freeflight/gamepad/GamePad$Input;

.field private static final BUTTON_TAKEOFF_ID:I = 0x3

.field public static final BUTTON_VIRTUAL_LEFT_D:Lcom/parrot/freeflight/gamepad/GamePad$Input;

.field private static final BUTTON_VIRTUAL_LEFT_D_ID:I = 0xb

.field public static final BUTTON_VIRTUAL_LEFT_L:Lcom/parrot/freeflight/gamepad/GamePad$Input;

.field private static final BUTTON_VIRTUAL_LEFT_L_ID:I = 0x8

.field public static final BUTTON_VIRTUAL_LEFT_R:Lcom/parrot/freeflight/gamepad/GamePad$Input;

.field private static final BUTTON_VIRTUAL_LEFT_R_ID:I = 0x9

.field public static final BUTTON_VIRTUAL_LEFT_U:Lcom/parrot/freeflight/gamepad/GamePad$Input;

.field private static final BUTTON_VIRTUAL_LEFT_U_ID:I = 0xa

.field public static final BUTTON_VIRTUAL_RIGHT_D:Lcom/parrot/freeflight/gamepad/GamePad$Input;

.field private static final BUTTON_VIRTUAL_RIGHT_D_ID:I = 0xf

.field public static final BUTTON_VIRTUAL_RIGHT_L:Lcom/parrot/freeflight/gamepad/GamePad$Input;

.field private static final BUTTON_VIRTUAL_RIGHT_L_ID:I = 0xc

.field public static final BUTTON_VIRTUAL_RIGHT_R:Lcom/parrot/freeflight/gamepad/GamePad$Input;

.field private static final BUTTON_VIRTUAL_RIGHT_R_ID:I = 0xd

.field public static final BUTTON_VIRTUAL_RIGHT_U:Lcom/parrot/freeflight/gamepad/GamePad$Input;

.field private static final BUTTON_VIRTUAL_RIGHT_U_ID:I = 0xe

.field public static final BUTTON_VIRTUAL_TOP_LEFT_D:Lcom/parrot/freeflight/gamepad/GamePad$Input;

.field private static final BUTTON_VIRTUAL_TOP_LEFT_D_ID:I = 0x13

.field public static final BUTTON_VIRTUAL_TOP_LEFT_L:Lcom/parrot/freeflight/gamepad/GamePad$Input;

.field private static final BUTTON_VIRTUAL_TOP_LEFT_L_ID:I = 0x10

.field public static final BUTTON_VIRTUAL_TOP_LEFT_R:Lcom/parrot/freeflight/gamepad/GamePad$Input;

.field private static final BUTTON_VIRTUAL_TOP_LEFT_R_ID:I = 0x11

.field public static final BUTTON_VIRTUAL_TOP_LEFT_U:Lcom/parrot/freeflight/gamepad/GamePad$Input;

.field private static final BUTTON_VIRTUAL_TOP_LEFT_U_ID:I = 0x12

.field public static final BUTTON_VIRTUAL_TOP_RIGHT_D:Lcom/parrot/freeflight/gamepad/GamePad$Input;

.field private static final BUTTON_VIRTUAL_TOP_RIGHT_D_ID:I = 0x17

.field public static final BUTTON_VIRTUAL_TOP_RIGHT_L:Lcom/parrot/freeflight/gamepad/GamePad$Input;

.field private static final BUTTON_VIRTUAL_TOP_RIGHT_L_ID:I = 0x14

.field public static final BUTTON_VIRTUAL_TOP_RIGHT_R:Lcom/parrot/freeflight/gamepad/GamePad$Input;

.field private static final BUTTON_VIRTUAL_TOP_RIGHT_R_ID:I = 0x15

.field public static final BUTTON_VIRTUAL_TOP_RIGHT_U:Lcom/parrot/freeflight/gamepad/GamePad$Input;

.field private static final BUTTON_VIRTUAL_TOP_RIGHT_U_ID:I = 0x16

.field private static final GRAB_ALL_AXES:I = 0xff

.field private static final GRAB_ALL_BUTTONS:I = -0x1

.field private static final GRAB_NAVIGATION_BUTTONS:I = 0x3

.field private static final GRAB_NOTHING:I = 0x0

.field private static final KEY_CODE_TO_BUTTON_ID:Landroid/util/SparseArray;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final RES_ID_NUMBER:I = 0x6


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x2

    .line 275
    new-instance v0, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v1, "1"

    invoke-direct {v0, v1, v3, v5, v3}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->BUTTON_BACK:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    .line 276
    new-instance v0, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v1, "2"

    invoke-direct {v0, v1, v3, v5, v6}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->BUTTON_HOME:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    .line 277
    new-instance v0, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v1, "3"

    invoke-direct {v0, v1, v3, v5, v4}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->BUTTON_RECORD:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    .line 278
    new-instance v0, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v1, "4"

    invoke-direct {v0, v1, v3, v5, v7}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->BUTTON_TAKEOFF:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    .line 279
    new-instance v0, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v1, "5"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v3, v5, v2}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->BUTTON_RETURN_HOME:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    .line 280
    new-instance v0, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v1, "6"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v3, v5, v2}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->BUTTON_EMERGENCY:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    .line 281
    new-instance v0, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v1, "L1"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v3, v5, v2}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->BUTTON_SETTING:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    .line 282
    new-instance v0, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v1, "R1"

    invoke-direct {v0, v1, v3, v5, v5}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->BUTTON_PHOTO:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    .line 283
    new-instance v0, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v1, "J1"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v4, v6, v2}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->BUTTON_VIRTUAL_LEFT_L:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    .line 284
    new-instance v0, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v1, "J1"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v4, v4, v2}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->BUTTON_VIRTUAL_LEFT_R:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    .line 285
    new-instance v0, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v1, "J1"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v4, v3, v2}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->BUTTON_VIRTUAL_LEFT_U:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    .line 286
    new-instance v0, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v1, "J1"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v4, v7, v2}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->BUTTON_VIRTUAL_LEFT_D:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    .line 287
    new-instance v0, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v1, "J2"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v4, v6, v2}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->BUTTON_VIRTUAL_RIGHT_L:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    .line 288
    new-instance v0, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v1, "J2"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v4, v4, v2}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->BUTTON_VIRTUAL_RIGHT_R:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    .line 289
    new-instance v0, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v1, "J2"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v4, v3, v2}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->BUTTON_VIRTUAL_RIGHT_U:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    .line 290
    new-instance v0, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v1, "J2"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v4, v7, v2}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->BUTTON_VIRTUAL_RIGHT_D:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    .line 291
    new-instance v0, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v1, "J3"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v4, v6, v2}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->BUTTON_VIRTUAL_TOP_LEFT_L:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    .line 292
    new-instance v0, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v1, "J3"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v4, v4, v2}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->BUTTON_VIRTUAL_TOP_LEFT_R:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    .line 293
    new-instance v0, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v1, "J3"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v4, v3, v2}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->BUTTON_VIRTUAL_TOP_LEFT_U:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    .line 294
    new-instance v0, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v1, "J3"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v4, v7, v2}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->BUTTON_VIRTUAL_TOP_LEFT_D:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    .line 295
    new-instance v0, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v1, "J4"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v4, v6, v2}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->BUTTON_VIRTUAL_TOP_RIGHT_L:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    .line 296
    new-instance v0, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v1, "J4"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v4, v4, v2}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->BUTTON_VIRTUAL_TOP_RIGHT_R:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    .line 297
    new-instance v0, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v1, "J4"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v4, v3, v2}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->BUTTON_VIRTUAL_TOP_RIGHT_U:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    .line 298
    new-instance v0, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v1, "J4"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v4, v7, v2}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->BUTTON_VIRTUAL_TOP_RIGHT_D:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    .line 300
    new-instance v0, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v1, "J1"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->AXIS_LEFT_HORIZONTAL:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    .line 301
    new-instance v0, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v1, "J1"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v4, v2, v6}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->AXIS_LEFT_VERTICAL:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    .line 302
    new-instance v0, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v1, "J2"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v4, v2, v4}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->AXIS_RIGHT_HORIZONTAL:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    .line 303
    new-instance v0, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v1, "J2"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v4, v2, v7}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->AXIS_RIGHT_VERTICAL:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    .line 304
    new-instance v0, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v1, "J3"

    const/4 v2, 0x4

    const/4 v3, 0x4

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->AXIS_TOP_LEFT_HORIZONTAL:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    .line 305
    new-instance v0, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v1, "J3"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->AXIS_TOP_LEFT_VERTICAL:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    .line 306
    new-instance v0, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v1, "J4"

    const/4 v2, 0x4

    const/4 v3, 0x6

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->AXIS_TOP_RIGHT_HORIZONTAL:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    .line 307
    new-instance v0, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v1, "J4"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v4, v2, v5}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->AXIS_TOP_RIGHT_VERTICAL:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    .line 314
    new-instance v0, Landroid/util/SparseArray;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->BUTTONS:Landroid/util/SparseArray;

    .line 317
    new-instance v0, Landroid/util/SparseArray;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->AXIS:Landroid/util/SparseArray;

    .line 320
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->BUTTONS_RES_ID_BEBOP_VARIANT:Ljava/util/Map;

    .line 323
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->BUTTONS_RES_ID_BEBOP2_VARIANT:Ljava/util/Map;

    .line 326
    new-instance v0, Landroid/util/SparseArray;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->BUTTONS_ID_TO_KEY_CODE:Landroid/util/SparseArray;

    .line 329
    new-instance v0, Landroid/util/SparseArray;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->KEY_CODE_TO_BUTTON_ID:Landroid/util/SparseArray;

    .line 332
    invoke-static {}, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->createInputs()V

    .line 333
    invoke-static {}, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->createResourcesMap()V

    .line 334
    invoke-static {}, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->createButtonIdAndKeyCodeEquivalence()V

    .line 335
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(I)Z
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 231
    invoke-static {p0}, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->isVirtualButton(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(I)I
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 231
    invoke-static {p0}, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->getButtonIdFromKeyCode(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$200()Ljava/util/Map;
    .locals 1

    .prologue
    .line 231
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->BUTTONS_RES_ID_BEBOP_VARIANT:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/Map;
    .locals 1

    .prologue
    .line 231
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->BUTTONS_RES_ID_BEBOP2_VARIANT:Ljava/util/Map;

    return-object v0
.end method

.method private static createButtonIdAndKeyCodeEquivalence()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 391
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->BUTTONS_ID_TO_KEY_CODE:Landroid/util/SparseArray;

    const/16 v1, 0x63

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 392
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->KEY_CODE_TO_BUTTON_ID:Landroid/util/SparseArray;

    const/16 v1, 0x63

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 394
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->BUTTONS_ID_TO_KEY_CODE:Landroid/util/SparseArray;

    const/16 v1, 0x65

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 395
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->KEY_CODE_TO_BUTTON_ID:Landroid/util/SparseArray;

    const/16 v1, 0x65

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 397
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->BUTTONS_ID_TO_KEY_CODE:Landroid/util/SparseArray;

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 398
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->KEY_CODE_TO_BUTTON_ID:Landroid/util/SparseArray;

    const/16 v1, 0x64

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 400
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->BUTTONS_ID_TO_KEY_CODE:Landroid/util/SparseArray;

    const/16 v1, 0x1e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 401
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->KEY_CODE_TO_BUTTON_ID:Landroid/util/SparseArray;

    const/16 v1, 0x1e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 403
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->BUTTONS_ID_TO_KEY_CODE:Landroid/util/SparseArray;

    const/16 v1, 0x1d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 404
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->KEY_CODE_TO_BUTTON_ID:Landroid/util/SparseArray;

    const/16 v1, 0x1d

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 406
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->BUTTONS_ID_TO_KEY_CODE:Landroid/util/SparseArray;

    const/4 v1, 0x5

    const/16 v2, 0x1f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 407
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->KEY_CODE_TO_BUTTON_ID:Landroid/util/SparseArray;

    const/16 v1, 0x1f

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 409
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->BUTTONS_ID_TO_KEY_CODE:Landroid/util/SparseArray;

    const/4 v1, 0x6

    const/16 v2, 0x66

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 410
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->KEY_CODE_TO_BUTTON_ID:Landroid/util/SparseArray;

    const/16 v1, 0x66

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 412
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->BUTTONS_ID_TO_KEY_CODE:Landroid/util/SparseArray;

    const/4 v1, 0x7

    const/16 v2, 0x67

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 413
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->KEY_CODE_TO_BUTTON_ID:Landroid/util/SparseArray;

    const/16 v1, 0x67

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 415
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->BUTTONS_ID_TO_KEY_CODE:Landroid/util/SparseArray;

    const/16 v1, 0x8

    const/16 v2, 0x15

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 416
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->KEY_CODE_TO_BUTTON_ID:Landroid/util/SparseArray;

    const/16 v1, 0x15

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 418
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->BUTTONS_ID_TO_KEY_CODE:Landroid/util/SparseArray;

    const/16 v1, 0x9

    const/16 v2, 0x16

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 419
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->KEY_CODE_TO_BUTTON_ID:Landroid/util/SparseArray;

    const/16 v1, 0x16

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 421
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->BUTTONS_ID_TO_KEY_CODE:Landroid/util/SparseArray;

    const/16 v1, 0xa

    const/16 v2, 0x13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 422
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->KEY_CODE_TO_BUTTON_ID:Landroid/util/SparseArray;

    const/16 v1, 0x13

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 424
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->BUTTONS_ID_TO_KEY_CODE:Landroid/util/SparseArray;

    const/16 v1, 0xb

    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 425
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->KEY_CODE_TO_BUTTON_ID:Landroid/util/SparseArray;

    const/16 v1, 0x14

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 426
    return-void
.end method

.method private static createInputs()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 338
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->BUTTONS:Landroid/util/SparseArray;

    sget-object v1, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->BUTTON_BACK:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 339
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->BUTTONS:Landroid/util/SparseArray;

    sget-object v1, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->BUTTON_HOME:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 340
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->BUTTONS:Landroid/util/SparseArray;

    sget-object v1, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->BUTTON_RECORD:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 341
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->BUTTONS:Landroid/util/SparseArray;

    sget-object v1, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->BUTTON_TAKEOFF:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 342
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->BUTTONS:Landroid/util/SparseArray;

    sget-object v1, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->BUTTON_RETURN_HOME:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 343
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->BUTTONS:Landroid/util/SparseArray;

    const/4 v1, 0x5

    sget-object v2, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->BUTTON_EMERGENCY:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 344
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->BUTTONS:Landroid/util/SparseArray;

    const/4 v1, 0x6

    sget-object v2, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->BUTTON_SETTING:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 345
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->BUTTONS:Landroid/util/SparseArray;

    const/4 v1, 0x7

    sget-object v2, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->BUTTON_PHOTO:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 346
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->BUTTONS:Landroid/util/SparseArray;

    const/16 v1, 0x8

    sget-object v2, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->BUTTON_VIRTUAL_LEFT_L:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 347
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->BUTTONS:Landroid/util/SparseArray;

    const/16 v1, 0x9

    sget-object v2, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->BUTTON_VIRTUAL_LEFT_R:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 348
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->BUTTONS:Landroid/util/SparseArray;

    const/16 v1, 0xa

    sget-object v2, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->BUTTON_VIRTUAL_LEFT_U:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 349
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->BUTTONS:Landroid/util/SparseArray;

    const/16 v1, 0xb

    sget-object v2, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->BUTTON_VIRTUAL_LEFT_D:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 350
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->BUTTONS:Landroid/util/SparseArray;

    const/16 v1, 0xc

    sget-object v2, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->BUTTON_VIRTUAL_RIGHT_L:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 351
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->BUTTONS:Landroid/util/SparseArray;

    const/16 v1, 0xd

    sget-object v2, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->BUTTON_VIRTUAL_RIGHT_R:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 352
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->BUTTONS:Landroid/util/SparseArray;

    const/16 v1, 0xe

    sget-object v2, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->BUTTON_VIRTUAL_RIGHT_U:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 353
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->BUTTONS:Landroid/util/SparseArray;

    const/16 v1, 0xf

    sget-object v2, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->BUTTON_VIRTUAL_RIGHT_D:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 354
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->BUTTONS:Landroid/util/SparseArray;

    const/16 v1, 0x10

    sget-object v2, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->BUTTON_VIRTUAL_TOP_LEFT_L:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 355
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->BUTTONS:Landroid/util/SparseArray;

    const/16 v1, 0x11

    sget-object v2, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->BUTTON_VIRTUAL_TOP_LEFT_R:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 356
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->BUTTONS:Landroid/util/SparseArray;

    const/16 v1, 0x12

    sget-object v2, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->BUTTON_VIRTUAL_TOP_LEFT_U:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 357
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->BUTTONS:Landroid/util/SparseArray;

    const/16 v1, 0x13

    sget-object v2, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->BUTTON_VIRTUAL_TOP_LEFT_D:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 358
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->BUTTONS:Landroid/util/SparseArray;

    const/16 v1, 0x14

    sget-object v2, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->BUTTON_VIRTUAL_TOP_RIGHT_L:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 359
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->BUTTONS:Landroid/util/SparseArray;

    const/16 v1, 0x15

    sget-object v2, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->BUTTON_VIRTUAL_TOP_RIGHT_R:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 360
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->BUTTONS:Landroid/util/SparseArray;

    const/16 v1, 0x16

    sget-object v2, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->BUTTON_VIRTUAL_TOP_RIGHT_U:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 361
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->BUTTONS:Landroid/util/SparseArray;

    const/16 v1, 0x17

    sget-object v2, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->BUTTON_VIRTUAL_TOP_RIGHT_D:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 363
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->AXIS:Landroid/util/SparseArray;

    sget-object v1, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->AXIS_LEFT_HORIZONTAL:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 364
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->AXIS:Landroid/util/SparseArray;

    sget-object v1, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->AXIS_LEFT_VERTICAL:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 365
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->AXIS:Landroid/util/SparseArray;

    sget-object v1, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->AXIS_RIGHT_HORIZONTAL:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 366
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->AXIS:Landroid/util/SparseArray;

    sget-object v1, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->AXIS_RIGHT_VERTICAL:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 367
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->AXIS:Landroid/util/SparseArray;

    sget-object v1, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->AXIS_TOP_LEFT_HORIZONTAL:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 368
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->AXIS:Landroid/util/SparseArray;

    const/4 v1, 0x5

    sget-object v2, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->AXIS_TOP_LEFT_VERTICAL:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 369
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->AXIS:Landroid/util/SparseArray;

    const/4 v1, 0x6

    sget-object v2, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->AXIS_TOP_RIGHT_HORIZONTAL:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 370
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->AXIS:Landroid/util/SparseArray;

    const/4 v1, 0x7

    sget-object v2, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->AXIS_TOP_RIGHT_VERTICAL:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 371
    return-void
.end method

.method private static createResourcesMap()V
    .locals 7

    .prologue
    const v6, 0x7f0703eb

    const v5, 0x7f0703e6

    const v4, 0x7f0703e3

    const v3, 0x7f0703df

    .line 374
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->BUTTONS_RES_ID_BEBOP_VARIANT:Ljava/util/Map;

    const-string v1, "1"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->BUTTONS_RES_ID_BEBOP_VARIANT:Ljava/util/Map;

    const-string v1, "2"

    const v2, 0x7f0703e2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->BUTTONS_RES_ID_BEBOP_VARIANT:Ljava/util/Map;

    const-string v1, "3"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->BUTTONS_RES_ID_BEBOP_VARIANT:Ljava/util/Map;

    const-string v1, "4"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->BUTTONS_RES_ID_BEBOP_VARIANT:Ljava/util/Map;

    const-string v1, "5"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->BUTTONS_RES_ID_BEBOP_VARIANT:Ljava/util/Map;

    const-string v1, "6"

    const v2, 0x7f0703e1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->BUTTONS_RES_ID_BEBOP2_VARIANT:Ljava/util/Map;

    const-string v1, "1"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->BUTTONS_RES_ID_BEBOP2_VARIANT:Ljava/util/Map;

    const-string v1, "2"

    const v2, 0x7f0703e7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->BUTTONS_RES_ID_BEBOP2_VARIANT:Ljava/util/Map;

    const-string v1, "3"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->BUTTONS_RES_ID_BEBOP2_VARIANT:Ljava/util/Map;

    const-string v1, "4"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->BUTTONS_RES_ID_BEBOP2_VARIANT:Ljava/util/Map;

    const-string v1, "5"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->BUTTONS_RES_ID_BEBOP2_VARIANT:Ljava/util/Map;

    const-string v1, "6"

    const v2, 0x7f0703e0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    return-void
.end method

.method private static getButtonIdFromKeyCode(I)I
    .locals 2
    .param p0, "keyCode"    # I

    .prologue
    .line 437
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->KEY_CODE_TO_BUTTON_ID:Landroid/util/SparseArray;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static getButtonsFromBitfield(I)Ljava/util/List;
    .locals 4
    .param p0, "bitfield"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/gamepad/GamePad$Input;",
            ">;"
        }
    .end annotation

    .prologue
    .line 446
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 447
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/gamepad/GamePad$Input;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v2, 0x18

    if-ge v0, v2, :cond_1

    .line 448
    shr-int v2, p0, v0

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 449
    sget-object v2, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->BUTTONS:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 447
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 452
    :cond_1
    return-object v1
.end method

.method public static getInputById(IZ)Lcom/parrot/freeflight/gamepad/GamePad$Input;
    .locals 1
    .param p0, "id"    # I
    .param p1, "isButton"    # Z
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 430
    if-eqz p1, :cond_0

    .line 431
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->BUTTONS:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    .line 433
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->AXIS:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    goto :goto_0
.end method

.method public static getKeyCodeFromButtonId(I)I
    .locals 2
    .param p0, "buttonId"    # I

    .prologue
    .line 441
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$Inputs;->BUTTONS_ID_TO_KEY_CODE:Landroid/util/SparseArray;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private static isVirtualButton(I)Z
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 456
    packed-switch p0, :pswitch_data_0

    .line 475
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 473
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 456
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
