.class public abstract enum Lcom/parrot/freeflight/gamepad/command/FixedWingCommand;
.super Ljava/lang/Enum;
.source "FixedWingCommand.java"

# interfaces
.implements Lcom/parrot/freeflight/gamepad/command/Command;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/parrot/freeflight/gamepad/command/FixedWingCommand;",
        ">;",
        "Lcom/parrot/freeflight/gamepad/command/Command",
        "<",
        "Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/parrot/freeflight/gamepad/command/FixedWingCommand;

.field private static final CAMERA_TILT_SPEED_FACTOR:I = 0x4

.field public static final enum CMD_CAMERA_EXP_DEC:Lcom/parrot/freeflight/gamepad/command/FixedWingCommand;

.field public static final enum CMD_CAMERA_EXP_INC:Lcom/parrot/freeflight/gamepad/command/FixedWingCommand;

.field public static final enum CMD_CAMERA_TILT:Lcom/parrot/freeflight/gamepad/command/FixedWingCommand;

.field public static final enum CMD_EMERGENCY:Lcom/parrot/freeflight/gamepad/command/FixedWingCommand;

.field public static final enum CMD_GAZ:Lcom/parrot/freeflight/gamepad/command/FixedWingCommand;

.field public static final enum CMD_LOITER:Lcom/parrot/freeflight/gamepad/command/FixedWingCommand;

.field public static final enum CMD_PITCH:Lcom/parrot/freeflight/gamepad/command/FixedWingCommand;

.field public static final enum CMD_RECORD:Lcom/parrot/freeflight/gamepad/command/FixedWingCommand;

.field public static final enum CMD_RETURN_HOME:Lcom/parrot/freeflight/gamepad/command/FixedWingCommand;

.field public static final enum CMD_ROLL:Lcom/parrot/freeflight/gamepad/command/FixedWingCommand;

.field public static final enum CMD_TAKE_OFF:Lcom/parrot/freeflight/gamepad/command/FixedWingCommand;

.field public static final enum CMD_TAKE_PHOTO:Lcom/parrot/freeflight/gamepad/command/FixedWingCommand;

.field private static final DEBUG_JOYSTICK:Z


# instance fields
.field private final mAnalog:Z

.field private final mId:I

.field private final mRepeatable:Z

.field private final mRepeatingIntervalInMs:I

.field private final mResId:I
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 15
    new-instance v0, Lcom/parrot/freeflight/gamepad/command/FixedWingCommand$1;

    const-string v1, "CMD_GAZ"

    const/4 v2, 0x0

    const/16 v3, 0x258

    const v4, 0x7f1102dc

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/parrot/freeflight/gamepad/command/FixedWingCommand$1;-><init>(Ljava/lang/String;IIIZZI)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/command/FixedWingCommand;->CMD_GAZ:Lcom/parrot/freeflight/gamepad/command/FixedWingCommand;

    .line 22
    new-instance v0, Lcom/parrot/freeflight/gamepad/command/FixedWingCommand$2;

    const-string v1, "CMD_PITCH"

    const/4 v2, 0x1

    const/16 v3, 0x259

    const v4, 0x7f1102e8

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/parrot/freeflight/gamepad/command/FixedWingCommand$2;-><init>(Ljava/lang/String;IIIZZI)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/command/FixedWingCommand;->CMD_PITCH:Lcom/parrot/freeflight/gamepad/command/FixedWingCommand;

    .line 29
    new-instance v0, Lcom/parrot/freeflight/gamepad/command/FixedWingCommand$3;

    const-string v1, "CMD_ROLL"

    const/4 v2, 0x2

    const/16 v3, 0x25a

    const v4, 0x7f1102f3

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/parrot/freeflight/gamepad/command/FixedWingCommand$3;-><init>(Ljava/lang/String;IIIZZI)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/command/FixedWingCommand;->CMD_ROLL:Lcom/parrot/freeflight/gamepad/command/FixedWingCommand;

    .line 36
    new-instance v0, Lcom/parrot/freeflight/gamepad/command/FixedWingCommand$4;

    const-string v1, "CMD_LOITER"

    const/4 v2, 0x3

    const/16 v3, 0x25b

    const v4, 0x7f1102e3

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/parrot/freeflight/gamepad/command/FixedWingCommand$4;-><init>(Ljava/lang/String;IIIZZI)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/command/FixedWingCommand;->CMD_LOITER:Lcom/parrot/freeflight/gamepad/command/FixedWingCommand;

    .line 43
    new-instance v0, Lcom/parrot/freeflight/gamepad/command/FixedWingCommand$5;

    const-string v1, "CMD_CAMERA_TILT"

    const/4 v2, 0x4

    const/16 v3, 0x25c

    const v4, 0x7f110313

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/16 v7, 0x64

    invoke-direct/range {v0 .. v7}, Lcom/parrot/freeflight/gamepad/command/FixedWingCommand$5;-><init>(Ljava/lang/String;IIIZZI)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/command/FixedWingCommand;->CMD_CAMERA_TILT:Lcom/parrot/freeflight/gamepad/command/FixedWingCommand;

    .line 53
    new-instance v0, Lcom/parrot/freeflight/gamepad/command/FixedWingCommand$6;

    const-string v1, "CMD_TAKE_OFF"

    const/4 v2, 0x5

    const/16 v3, 0x25d

    const v4, 0x7f1102f7

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/parrot/freeflight/gamepad/command/FixedWingCommand$6;-><init>(Ljava/lang/String;IIIZZI)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/command/FixedWingCommand;->CMD_TAKE_OFF:Lcom/parrot/freeflight/gamepad/command/FixedWingCommand;

    .line 75
    new-instance v0, Lcom/parrot/freeflight/gamepad/command/FixedWingCommand$7;

    const-string v1, "CMD_TAKE_PHOTO"

    const/4 v2, 0x6

    const/16 v3, 0x25e

    const v4, 0x7f1102f6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/parrot/freeflight/gamepad/command/FixedWingCommand$7;-><init>(Ljava/lang/String;IIIZZI)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/command/FixedWingCommand;->CMD_TAKE_PHOTO:Lcom/parrot/freeflight/gamepad/command/FixedWingCommand;

    .line 82
    new-instance v0, Lcom/parrot/freeflight/gamepad/command/FixedWingCommand$8;

    const-string v1, "CMD_RECORD"

    const/4 v2, 0x7

    const/16 v3, 0x25f

    const v4, 0x7f110318

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/parrot/freeflight/gamepad/command/FixedWingCommand$8;-><init>(Ljava/lang/String;IIIZZI)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/command/FixedWingCommand;->CMD_RECORD:Lcom/parrot/freeflight/gamepad/command/FixedWingCommand;

    .line 93
    new-instance v0, Lcom/parrot/freeflight/gamepad/command/FixedWingCommand$9;

    const-string v1, "CMD_CAMERA_EXP_INC"

    const/16 v2, 0x8

    const/16 v3, 0x260

    const v4, 0x7f11030d

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/parrot/freeflight/gamepad/command/FixedWingCommand$9;-><init>(Ljava/lang/String;IIIZZI)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/command/FixedWingCommand;->CMD_CAMERA_EXP_INC:Lcom/parrot/freeflight/gamepad/command/FixedWingCommand;

    .line 105
    new-instance v0, Lcom/parrot/freeflight/gamepad/command/FixedWingCommand$10;

    const-string v1, "CMD_CAMERA_EXP_DEC"

    const/16 v2, 0x9

    const/16 v3, 0x261

    const v4, 0x7f11030c

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/parrot/freeflight/gamepad/command/FixedWingCommand$10;-><init>(Ljava/lang/String;IIIZZI)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/command/FixedWingCommand;->CMD_CAMERA_EXP_DEC:Lcom/parrot/freeflight/gamepad/command/FixedWingCommand;

    .line 117
    new-instance v0, Lcom/parrot/freeflight/gamepad/command/FixedWingCommand$11;

    const-string v1, "CMD_RETURN_HOME"

    const/16 v2, 0xa

    const/16 v3, 0x262

    const v4, 0x7f11031a

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/parrot/freeflight/gamepad/command/FixedWingCommand$11;-><init>(Ljava/lang/String;IIIZZI)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/command/FixedWingCommand;->CMD_RETURN_HOME:Lcom/parrot/freeflight/gamepad/command/FixedWingCommand;

    .line 124
    new-instance v0, Lcom/parrot/freeflight/gamepad/command/FixedWingCommand$12;

    const-string v1, "CMD_EMERGENCY"

    const/16 v2, 0xb

    const/16 v3, 0x263

    const v4, 0x7f1102d2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/parrot/freeflight/gamepad/command/FixedWingCommand$12;-><init>(Ljava/lang/String;IIIZZI)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/command/FixedWingCommand;->CMD_EMERGENCY:Lcom/parrot/freeflight/gamepad/command/FixedWingCommand;

    .line 13
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/parrot/freeflight/gamepad/command/FixedWingCommand;

    const/4 v1, 0x0

    sget-object v2, Lcom/parrot/freeflight/gamepad/command/FixedWingCommand;->CMD_GAZ:Lcom/parrot/freeflight/gamepad/command/FixedWingCommand;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/parrot/freeflight/gamepad/command/FixedWingCommand;->CMD_PITCH:Lcom/parrot/freeflight/gamepad/command/FixedWingCommand;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/parrot/freeflight/gamepad/command/FixedWingCommand;->CMD_ROLL:Lcom/parrot/freeflight/gamepad/command/FixedWingCommand;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/parrot/freeflight/gamepad/command/FixedWingCommand;->CMD_LOITER:Lcom/parrot/freeflight/gamepad/command/FixedWingCommand;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/parrot/freeflight/gamepad/command/FixedWingCommand;->CMD_CAMERA_TILT:Lcom/parrot/freeflight/gamepad/command/FixedWingCommand;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/parrot/freeflight/gamepad/command/FixedWingCommand;->CMD_TAKE_OFF:Lcom/parrot/freeflight/gamepad/command/FixedWingCommand;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/parrot/freeflight/gamepad/command/FixedWingCommand;->CMD_TAKE_PHOTO:Lcom/parrot/freeflight/gamepad/command/FixedWingCommand;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/parrot/freeflight/gamepad/command/FixedWingCommand;->CMD_RECORD:Lcom/parrot/freeflight/gamepad/command/FixedWingCommand;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/parrot/freeflight/gamepad/command/FixedWingCommand;->CMD_CAMERA_EXP_INC:Lcom/parrot/freeflight/gamepad/command/FixedWingCommand;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/parrot/freeflight/gamepad/command/FixedWingCommand;->CMD_CAMERA_EXP_DEC:Lcom/parrot/freeflight/gamepad/command/FixedWingCommand;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/parrot/freeflight/gamepad/command/FixedWingCommand;->CMD_RETURN_HOME:Lcom/parrot/freeflight/gamepad/command/FixedWingCommand;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/parrot/freeflight/gamepad/command/FixedWingCommand;->CMD_EMERGENCY:Lcom/parrot/freeflight/gamepad/command/FixedWingCommand;

    aput-object v2, v0, v1

    sput-object v0, Lcom/parrot/freeflight/gamepad/command/FixedWingCommand;->$VALUES:[Lcom/parrot/freeflight/gamepad/command/FixedWingCommand;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIZZI)V
    .locals 0
    .param p2    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p3, "id"    # I
    .param p4, "resId"    # I
    .param p5, "analog"    # Z
    .param p6, "repeatable"    # Z
    .param p7, "repeatingIntervalInMs"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZZI)V"
        }
    .end annotation

    .prologue
    .line 146
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 147
    iput p3, p0, Lcom/parrot/freeflight/gamepad/command/FixedWingCommand;->mId:I

    .line 148
    iput p4, p0, Lcom/parrot/freeflight/gamepad/command/FixedWingCommand;->mResId:I

    .line 149
    iput-boolean p5, p0, Lcom/parrot/freeflight/gamepad/command/FixedWingCommand;->mAnalog:Z

    .line 150
    iput-boolean p6, p0, Lcom/parrot/freeflight/gamepad/command/FixedWingCommand;->mRepeatable:Z

    .line 151
    iput p7, p0, Lcom/parrot/freeflight/gamepad/command/FixedWingCommand;->mRepeatingIntervalInMs:I

    .line 152
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IIIZZILcom/parrot/freeflight/gamepad/command/FixedWingCommand$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # Z
    .param p6, "x5"    # Z
    .param p7, "x6"    # I
    .param p8, "x7"    # Lcom/parrot/freeflight/gamepad/command/FixedWingCommand$1;

    .prologue
    .line 13
    invoke-direct/range {p0 .. p7}, Lcom/parrot/freeflight/gamepad/command/FixedWingCommand;-><init>(Ljava/lang/String;IIIZZI)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/parrot/freeflight/gamepad/command/FixedWingCommand;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 13
    const-class v0, Lcom/parrot/freeflight/gamepad/command/FixedWingCommand;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/gamepad/command/FixedWingCommand;

    return-object v0
.end method

.method public static values()[Lcom/parrot/freeflight/gamepad/command/FixedWingCommand;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/parrot/freeflight/gamepad/command/FixedWingCommand;->$VALUES:[Lcom/parrot/freeflight/gamepad/command/FixedWingCommand;

    invoke-virtual {v0}, [Lcom/parrot/freeflight/gamepad/command/FixedWingCommand;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/parrot/freeflight/gamepad/command/FixedWingCommand;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lcom/parrot/freeflight/gamepad/command/FixedWingCommand;->mId:I

    return v0
.end method

.method public getRepeatingIntervalInMs()I
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Lcom/parrot/freeflight/gamepad/command/FixedWingCommand;->mRepeatingIntervalInMs:I

    return v0
.end method

.method public getResId()I
    .locals 1
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation

    .prologue
    .line 162
    iget v0, p0, Lcom/parrot/freeflight/gamepad/command/FixedWingCommand;->mResId:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x1

    return v0
.end method

.method public isAnalog()Z
    .locals 1

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/parrot/freeflight/gamepad/command/FixedWingCommand;->mAnalog:Z

    return v0
.end method

.method public needRepetition()Z
    .locals 1

    .prologue
    .line 179
    iget-boolean v0, p0, Lcom/parrot/freeflight/gamepad/command/FixedWingCommand;->mRepeatable:Z

    return v0
.end method

.method public shouldAccelerate()Z
    .locals 1

    .prologue
    .line 189
    const/4 v0, 0x0

    return v0
.end method
