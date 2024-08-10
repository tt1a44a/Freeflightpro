.class public Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;
.super Ljava/lang/Object;
.source "SkyController2GamePad.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/gamepad/SkyController2GamePad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Inputs"
.end annotation


# static fields
.field private static final AXIS:Landroid/util/SparseArray;
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

.field public static final AXIS_LEFT_LR:Lcom/parrot/freeflight/gamepad/GamePad$Input;

.field public static final AXIS_LEFT_LR_ID:I = 0x0

.field public static final AXIS_LEFT_UD:Lcom/parrot/freeflight/gamepad/GamePad$Input;

.field public static final AXIS_LEFT_UD_ID:I = 0x1

.field private static final AXIS_NUMBER:I = 0x5

.field public static final AXIS_RIGHT_LR:Lcom/parrot/freeflight/gamepad/GamePad$Input;

.field public static final AXIS_RIGHT_LR_ID:I = 0x2

.field public static final AXIS_RIGHT_UD:Lcom/parrot/freeflight/gamepad/GamePad$Input;

.field public static final AXIS_RIGHT_UD_ID:I = 0x3

.field public static final AXIS_SLIDER_LR:Lcom/parrot/freeflight/gamepad/GamePad$Input;

.field public static final AXIS_SLIDER_LR_ID:I = 0x4

.field private static final BUTTONS:Landroid/util/SparseArray;
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

.field private static final BUTTONS_NUMBER:I = 0x16

.field private static final BUTTONS_RES_IDS:Ljava/util/Map;
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

.field private static final BUTTONS_RES_ID_NUMBER:I = 0x9

.field public static final BUTTON_A:Lcom/parrot/freeflight/gamepad/GamePad$Input;

.field public static final BUTTON_A_ID:I = 0x0

.field public static final BUTTON_B:Lcom/parrot/freeflight/gamepad/GamePad$Input;

.field public static final BUTTON_B_ID:I = 0x1

.field public static final BUTTON_C:Lcom/parrot/freeflight/gamepad/GamePad$Input;

.field public static final BUTTON_C_ID:I = 0x2

.field private static final BUTTON_ID_TO_KEY_CODE:Landroid/util/SparseArray;
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

.field public static final BUTTON_L1:Lcom/parrot/freeflight/gamepad/GamePad$Input;

.field public static final BUTTON_L1_ID:I = 0x5

.field public static final BUTTON_L2:Lcom/parrot/freeflight/gamepad/GamePad$Input;

.field public static final BUTTON_L2_ID:I = 0xa

.field public static final BUTTON_LEFT_JS:Lcom/parrot/freeflight/gamepad/GamePad$Input;

.field public static final BUTTON_LEFT_JS_ID:I = 0x8

.field public static final BUTTON_R1:Lcom/parrot/freeflight/gamepad/GamePad$Input;

.field public static final BUTTON_R1_ID:I = 0x6

.field public static final BUTTON_R2:Lcom/parrot/freeflight/gamepad/GamePad$Input;

.field public static final BUTTON_R2_ID:I = 0xb

.field public static final BUTTON_RIGHT_JS:Lcom/parrot/freeflight/gamepad/GamePad$Input;

.field public static final BUTTON_RIGHT_JS_ID:I = 0x9

.field public static final BUTTON_START:Lcom/parrot/freeflight/gamepad/GamePad$Input;

.field public static final BUTTON_START_ID:I = 0x7

.field public static final BUTTON_VIRTUAL_LEFT_D:Lcom/parrot/freeflight/gamepad/GamePad$Input;

.field public static final BUTTON_VIRTUAL_LEFT_D_ID:I = 0xf

.field public static final BUTTON_VIRTUAL_LEFT_L:Lcom/parrot/freeflight/gamepad/GamePad$Input;

.field public static final BUTTON_VIRTUAL_LEFT_L_ID:I = 0xc

.field public static final BUTTON_VIRTUAL_LEFT_R:Lcom/parrot/freeflight/gamepad/GamePad$Input;

.field public static final BUTTON_VIRTUAL_LEFT_R_ID:I = 0xd

.field public static final BUTTON_VIRTUAL_LEFT_U:Lcom/parrot/freeflight/gamepad/GamePad$Input;

.field public static final BUTTON_VIRTUAL_LEFT_U_ID:I = 0xe

.field public static final BUTTON_VIRTUAL_RIGHT_D:Lcom/parrot/freeflight/gamepad/GamePad$Input;

.field public static final BUTTON_VIRTUAL_RIGHT_D_ID:I = 0x13

.field public static final BUTTON_VIRTUAL_RIGHT_L:Lcom/parrot/freeflight/gamepad/GamePad$Input;

.field public static final BUTTON_VIRTUAL_RIGHT_L_ID:I = 0x10

.field public static final BUTTON_VIRTUAL_RIGHT_R:Lcom/parrot/freeflight/gamepad/GamePad$Input;

.field public static final BUTTON_VIRTUAL_RIGHT_R_ID:I = 0x11

.field public static final BUTTON_VIRTUAL_RIGHT_U:Lcom/parrot/freeflight/gamepad/GamePad$Input;

.field public static final BUTTON_VIRTUAL_RIGHT_U_ID:I = 0x12

.field public static final BUTTON_VIRTUAL_SLIDER_L:Lcom/parrot/freeflight/gamepad/GamePad$Input;

.field public static final BUTTON_VIRTUAL_SLIDER_L_ID:I = 0x14

.field public static final BUTTON_VIRTUAL_SLIDER_R:Lcom/parrot/freeflight/gamepad/GamePad$Input;

.field public static final BUTTON_VIRTUAL_SLIDER_R_ID:I = 0x15

.field public static final BUTTON_X:Lcom/parrot/freeflight/gamepad/GamePad$Input;

.field public static final BUTTON_X_ID:I = 0x3

.field public static final BUTTON_Y:Lcom/parrot/freeflight/gamepad/GamePad$Input;

.field public static final BUTTON_Y_ID:I = 0x4

.field private static final GRAB_ALL_AXES:I = 0xf

.field private static final GRAB_ALL_BUTTONS:I = -0x1

.field private static final GRAB_NAVIGATION_BUTTONS:I = 0xf018

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

.field private static final TRIGGERS_RES_IDS:Ljava/util/Map;
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

.field private static final TRIGGERS_RES_ID_NUMBER:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x7

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 240
    new-instance v0, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v1, "1"

    invoke-direct {v0, v1, v3, v5, v3}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->BUTTON_A:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    .line 241
    new-instance v0, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v1, "2"

    invoke-direct {v0, v1, v3, v5, v6}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->BUTTON_B:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    .line 242
    new-instance v0, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v1, "3"

    invoke-direct {v0, v1, v3, v5, v4}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->BUTTON_C:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    .line 243
    new-instance v0, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v1, "4"

    invoke-direct {v0, v1, v3, v5, v7}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->BUTTON_X:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    .line 244
    new-instance v0, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v1, "5"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v3, v5, v2}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->BUTTON_Y:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    .line 245
    new-instance v0, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v1, "L1"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v3, v5, v2}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->BUTTON_L1:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    .line 246
    new-instance v0, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v1, "R1"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v3, v5, v2}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->BUTTON_R1:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    .line 247
    new-instance v0, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v1, "6"

    invoke-direct {v0, v1, v3, v5, v5}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->BUTTON_START:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    .line 248
    new-instance v0, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v1, "J1"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v3, v5, v2}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->BUTTON_LEFT_JS:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    .line 249
    new-instance v0, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v1, "J2"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v3, v5, v2}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->BUTTON_RIGHT_JS:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    .line 250
    new-instance v0, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v1, "L2"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v3, v5, v2}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->BUTTON_L2:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    .line 251
    new-instance v0, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v1, "R2"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v3, v5, v2}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->BUTTON_R2:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    .line 252
    new-instance v0, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v1, "J1"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v4, v6, v2}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->BUTTON_VIRTUAL_LEFT_L:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    .line 253
    new-instance v0, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v1, "J1"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v4, v4, v2}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->BUTTON_VIRTUAL_LEFT_R:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    .line 254
    new-instance v0, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v1, "J1"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v4, v3, v2}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->BUTTON_VIRTUAL_LEFT_U:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    .line 255
    new-instance v0, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v1, "J1"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v4, v7, v2}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->BUTTON_VIRTUAL_LEFT_D:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    .line 256
    new-instance v0, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v1, "J2"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v4, v6, v2}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->BUTTON_VIRTUAL_RIGHT_L:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    .line 257
    new-instance v0, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v1, "J2"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v4, v4, v2}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->BUTTON_VIRTUAL_RIGHT_R:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    .line 258
    new-instance v0, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v1, "J2"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v4, v3, v2}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->BUTTON_VIRTUAL_RIGHT_U:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    .line 259
    new-instance v0, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v1, "J2"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v4, v7, v2}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->BUTTON_VIRTUAL_RIGHT_D:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    .line 260
    new-instance v0, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v1, "J3"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v3, v6, v2}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->BUTTON_VIRTUAL_SLIDER_L:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    .line 261
    new-instance v0, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v1, "J4"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->BUTTON_VIRTUAL_SLIDER_R:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    .line 263
    new-instance v0, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v1, "J1"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->AXIS_LEFT_LR:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    .line 264
    new-instance v0, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v1, "J1"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v4, v2, v6}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->AXIS_LEFT_UD:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    .line 265
    new-instance v0, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v1, "J2"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v4, v2, v4}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->AXIS_RIGHT_LR:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    .line 266
    new-instance v0, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v1, "J2"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v4, v2, v7}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->AXIS_RIGHT_UD:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    .line 267
    new-instance v0, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    const-string v1, "L2"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v7, v5, v2}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->AXIS_SLIDER_LR:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    .line 275
    new-instance v0, Landroid/util/SparseArray;

    const/16 v1, 0x16

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->BUTTONS:Landroid/util/SparseArray;

    .line 278
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->AXIS:Landroid/util/SparseArray;

    .line 281
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->BUTTONS_RES_IDS:Ljava/util/Map;

    .line 284
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v6}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->TRIGGERS_RES_IDS:Ljava/util/Map;

    .line 287
    new-instance v0, Landroid/util/SparseArray;

    const/16 v1, 0x16

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->BUTTON_ID_TO_KEY_CODE:Landroid/util/SparseArray;

    .line 290
    new-instance v0, Landroid/util/SparseArray;

    const/16 v1, 0x16

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->KEY_CODE_TO_BUTTON_ID:Landroid/util/SparseArray;

    .line 294
    invoke-static {}, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->createInputs()V

    .line 295
    invoke-static {}, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->createResourcesMap()V

    .line 296
    invoke-static {}, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->createButtonIdAndKeyCodeEquivalence()V

    .line 297
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(I)Z
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 201
    invoke-static {p0}, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->isVirtualButton(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100()Ljava/util/Map;
    .locals 1

    .prologue
    .line 201
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->BUTTONS_RES_IDS:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/Map;
    .locals 1

    .prologue
    .line 201
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->TRIGGERS_RES_IDS:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300()Landroid/util/SparseArray;
    .locals 1

    .prologue
    .line 201
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->AXIS:Landroid/util/SparseArray;

    return-object v0
.end method

.method private static createButtonIdAndKeyCodeEquivalence()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v2, 0x0

    const/16 v4, 0x15

    const/16 v3, 0x14

    .line 345
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->BUTTON_ID_TO_KEY_CODE:Landroid/util/SparseArray;

    const/16 v1, 0x60

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 346
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->KEY_CODE_TO_BUTTON_ID:Landroid/util/SparseArray;

    const/16 v1, 0x60

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 348
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->BUTTON_ID_TO_KEY_CODE:Landroid/util/SparseArray;

    const/16 v1, 0x61

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 349
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->KEY_CODE_TO_BUTTON_ID:Landroid/util/SparseArray;

    const/16 v1, 0x61

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 351
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->BUTTON_ID_TO_KEY_CODE:Landroid/util/SparseArray;

    const/16 v1, 0x62

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 352
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->KEY_CODE_TO_BUTTON_ID:Landroid/util/SparseArray;

    const/16 v1, 0x62

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 354
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->BUTTON_ID_TO_KEY_CODE:Landroid/util/SparseArray;

    const/4 v1, 0x3

    const/16 v2, 0x63

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 355
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->KEY_CODE_TO_BUTTON_ID:Landroid/util/SparseArray;

    const/16 v1, 0x63

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 357
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->BUTTON_ID_TO_KEY_CODE:Landroid/util/SparseArray;

    const/4 v1, 0x4

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 358
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->KEY_CODE_TO_BUTTON_ID:Landroid/util/SparseArray;

    const/16 v1, 0x64

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 360
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->BUTTON_ID_TO_KEY_CODE:Landroid/util/SparseArray;

    const/4 v1, 0x5

    const/16 v2, 0x66

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 361
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->KEY_CODE_TO_BUTTON_ID:Landroid/util/SparseArray;

    const/16 v1, 0x66

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 363
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->BUTTON_ID_TO_KEY_CODE:Landroid/util/SparseArray;

    const/4 v1, 0x6

    const/16 v2, 0x67

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 364
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->KEY_CODE_TO_BUTTON_ID:Landroid/util/SparseArray;

    const/16 v1, 0x67

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 366
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->BUTTON_ID_TO_KEY_CODE:Landroid/util/SparseArray;

    const/4 v1, 0x7

    const/16 v2, 0x6c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 367
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->KEY_CODE_TO_BUTTON_ID:Landroid/util/SparseArray;

    const/16 v1, 0x6c

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 369
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->BUTTON_ID_TO_KEY_CODE:Landroid/util/SparseArray;

    const/16 v1, 0x8

    const/16 v2, 0x6a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 370
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->KEY_CODE_TO_BUTTON_ID:Landroid/util/SparseArray;

    const/16 v1, 0x6a

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 372
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->BUTTON_ID_TO_KEY_CODE:Landroid/util/SparseArray;

    const/16 v1, 0x9

    const/16 v2, 0x6b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 373
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->KEY_CODE_TO_BUTTON_ID:Landroid/util/SparseArray;

    const/16 v1, 0x6b

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 375
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->BUTTON_ID_TO_KEY_CODE:Landroid/util/SparseArray;

    const/16 v1, 0xa

    const/16 v2, 0x68

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 376
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->KEY_CODE_TO_BUTTON_ID:Landroid/util/SparseArray;

    const/16 v1, 0x68

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 378
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->BUTTON_ID_TO_KEY_CODE:Landroid/util/SparseArray;

    const/16 v1, 0xb

    const/16 v2, 0x69

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 379
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->KEY_CODE_TO_BUTTON_ID:Landroid/util/SparseArray;

    const/16 v1, 0x69

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 381
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->BUTTON_ID_TO_KEY_CODE:Landroid/util/SparseArray;

    const/16 v1, 0xc

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 382
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->KEY_CODE_TO_BUTTON_ID:Landroid/util/SparseArray;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 384
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->BUTTON_ID_TO_KEY_CODE:Landroid/util/SparseArray;

    const/16 v1, 0xd

    const/16 v2, 0x16

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 385
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->KEY_CODE_TO_BUTTON_ID:Landroid/util/SparseArray;

    const/16 v1, 0x16

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 387
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->BUTTON_ID_TO_KEY_CODE:Landroid/util/SparseArray;

    const/16 v1, 0xe

    const/16 v2, 0x13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 388
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->KEY_CODE_TO_BUTTON_ID:Landroid/util/SparseArray;

    const/16 v1, 0x13

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 390
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->BUTTON_ID_TO_KEY_CODE:Landroid/util/SparseArray;

    const/16 v1, 0xf

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 391
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->KEY_CODE_TO_BUTTON_ID:Landroid/util/SparseArray;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 393
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->BUTTON_ID_TO_KEY_CODE:Landroid/util/SparseArray;

    const/16 v1, 0xbc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 394
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->KEY_CODE_TO_BUTTON_ID:Landroid/util/SparseArray;

    const/16 v1, 0xbc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 396
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->BUTTON_ID_TO_KEY_CODE:Landroid/util/SparseArray;

    const/16 v1, 0xbd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 397
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->KEY_CODE_TO_BUTTON_ID:Landroid/util/SparseArray;

    const/16 v1, 0xbd

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 398
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

    .line 300
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->BUTTONS:Landroid/util/SparseArray;

    sget-object v1, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->BUTTON_A:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 301
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->BUTTONS:Landroid/util/SparseArray;

    sget-object v1, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->BUTTON_B:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 302
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->BUTTONS:Landroid/util/SparseArray;

    sget-object v1, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->BUTTON_C:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 303
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->BUTTONS:Landroid/util/SparseArray;

    sget-object v1, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->BUTTON_X:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 304
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->BUTTONS:Landroid/util/SparseArray;

    sget-object v1, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->BUTTON_Y:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 305
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->BUTTONS:Landroid/util/SparseArray;

    const/4 v1, 0x5

    sget-object v2, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->BUTTON_L1:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 306
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->BUTTONS:Landroid/util/SparseArray;

    const/4 v1, 0x6

    sget-object v2, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->BUTTON_R1:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 307
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->BUTTONS:Landroid/util/SparseArray;

    const/4 v1, 0x7

    sget-object v2, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->BUTTON_START:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 308
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->BUTTONS:Landroid/util/SparseArray;

    const/16 v1, 0x8

    sget-object v2, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->BUTTON_LEFT_JS:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 309
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->BUTTONS:Landroid/util/SparseArray;

    const/16 v1, 0x9

    sget-object v2, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->BUTTON_RIGHT_JS:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 310
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->BUTTONS:Landroid/util/SparseArray;

    const/16 v1, 0xa

    sget-object v2, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->BUTTON_L2:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 311
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->BUTTONS:Landroid/util/SparseArray;

    const/16 v1, 0xb

    sget-object v2, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->BUTTON_R2:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 312
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->BUTTONS:Landroid/util/SparseArray;

    const/16 v1, 0xc

    sget-object v2, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->BUTTON_VIRTUAL_LEFT_L:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 313
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->BUTTONS:Landroid/util/SparseArray;

    const/16 v1, 0xd

    sget-object v2, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->BUTTON_VIRTUAL_LEFT_R:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 314
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->BUTTONS:Landroid/util/SparseArray;

    const/16 v1, 0xe

    sget-object v2, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->BUTTON_VIRTUAL_LEFT_U:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 315
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->BUTTONS:Landroid/util/SparseArray;

    const/16 v1, 0xf

    sget-object v2, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->BUTTON_VIRTUAL_LEFT_D:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 316
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->BUTTONS:Landroid/util/SparseArray;

    const/16 v1, 0x10

    sget-object v2, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->BUTTON_VIRTUAL_RIGHT_L:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 317
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->BUTTONS:Landroid/util/SparseArray;

    const/16 v1, 0x11

    sget-object v2, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->BUTTON_VIRTUAL_RIGHT_R:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 318
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->BUTTONS:Landroid/util/SparseArray;

    const/16 v1, 0x12

    sget-object v2, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->BUTTON_VIRTUAL_RIGHT_U:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 319
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->BUTTONS:Landroid/util/SparseArray;

    const/16 v1, 0x13

    sget-object v2, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->BUTTON_VIRTUAL_RIGHT_D:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 320
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->BUTTONS:Landroid/util/SparseArray;

    const/16 v1, 0x14

    sget-object v2, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->BUTTON_VIRTUAL_SLIDER_L:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 321
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->BUTTONS:Landroid/util/SparseArray;

    const/16 v1, 0x15

    sget-object v2, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->BUTTON_VIRTUAL_SLIDER_R:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 323
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->AXIS:Landroid/util/SparseArray;

    sget-object v1, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->AXIS_LEFT_LR:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 324
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->AXIS:Landroid/util/SparseArray;

    sget-object v1, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->AXIS_LEFT_UD:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 325
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->AXIS:Landroid/util/SparseArray;

    sget-object v1, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->AXIS_RIGHT_LR:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 326
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->AXIS:Landroid/util/SparseArray;

    sget-object v1, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->AXIS_RIGHT_UD:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 327
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->AXIS:Landroid/util/SparseArray;

    sget-object v1, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->AXIS_SLIDER_LR:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 328
    return-void
.end method

.method private static createResourcesMap()V
    .locals 3

    .prologue
    .line 331
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->BUTTONS_RES_IDS:Ljava/util/Map;

    const-string v1, "1"

    const v2, 0x7f0703e7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->BUTTONS_RES_IDS:Ljava/util/Map;

    const-string v1, "2"

    const v2, 0x7f0703e6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->BUTTONS_RES_IDS:Ljava/util/Map;

    const-string v1, "3"

    const v2, 0x7f0703eb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->BUTTONS_RES_IDS:Ljava/util/Map;

    const-string v1, "4"

    const v2, 0x7f0703de

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->BUTTONS_RES_IDS:Ljava/util/Map;

    const-string v1, "5"

    const v2, 0x7f0703dd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->BUTTONS_RES_IDS:Ljava/util/Map;

    const-string v1, "J3"

    const v2, 0x7f0703e8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->BUTTONS_RES_IDS:Ljava/util/Map;

    const-string v1, "J4"

    const v2, 0x7f0703e9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->BUTTONS_RES_IDS:Ljava/util/Map;

    const-string v1, "L2"

    const v2, 0x7f0703e4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->BUTTONS_RES_IDS:Ljava/util/Map;

    const-string v1, "R2"

    const v2, 0x7f0703e5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->TRIGGERS_RES_IDS:Ljava/util/Map;

    const-string v1, "L2"

    const v2, 0x7f0703ea

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    return-void
.end method

.method public static getButtonIdFromKeyCode(I)I
    .locals 2
    .param p0, "keyCode"    # I

    .prologue
    .line 409
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->KEY_CODE_TO_BUTTON_ID:Landroid/util/SparseArray;

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
    .line 418
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 419
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/gamepad/GamePad$Input;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v2, 0x16

    if-ge v0, v2, :cond_1

    .line 420
    shr-int v2, p0, v0

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 421
    sget-object v2, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->BUTTONS:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 419
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 424
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
    .line 402
    if-eqz p1, :cond_0

    .line 403
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->BUTTONS:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    .line 405
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->AXIS:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    goto :goto_0
.end method

.method public static getKeyCodeFromButtonId(I)I
    .locals 2
    .param p0, "buttonId"    # I

    .prologue
    .line 413
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->BUTTON_ID_TO_KEY_CODE:Landroid/util/SparseArray;

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
    .line 428
    packed-switch p0, :pswitch_data_0

    .line 437
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 435
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 428
    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
