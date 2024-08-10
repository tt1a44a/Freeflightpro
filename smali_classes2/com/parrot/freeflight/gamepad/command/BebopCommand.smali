.class public abstract enum Lcom/parrot/freeflight/gamepad/command/BebopCommand;
.super Ljava/lang/Enum;
.source "BebopCommand.java"

# interfaces
.implements Lcom/parrot/freeflight/gamepad/command/Command;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/parrot/freeflight/gamepad/command/BebopCommand;",
        ">;",
        "Lcom/parrot/freeflight/gamepad/command/Command",
        "<",
        "Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/parrot/freeflight/gamepad/command/BebopCommand;

.field private static final CAMERA_TILT_SPEED_FACTOR:I = 0x4

.field public static final enum CMD_CAMERA_EXP_DEC:Lcom/parrot/freeflight/gamepad/command/BebopCommand;

.field public static final enum CMD_CAMERA_EXP_INC:Lcom/parrot/freeflight/gamepad/command/BebopCommand;

.field public static final enum CMD_CAMERA_TILT:Lcom/parrot/freeflight/gamepad/command/BebopCommand;

.field public static final enum CMD_EMERGENCY:Lcom/parrot/freeflight/gamepad/command/BebopCommand;

.field public static final enum CMD_FLIP_BACK:Lcom/parrot/freeflight/gamepad/command/BebopCommand;

.field public static final enum CMD_FLIP_FRONT:Lcom/parrot/freeflight/gamepad/command/BebopCommand;

.field public static final enum CMD_FLIP_LEFT:Lcom/parrot/freeflight/gamepad/command/BebopCommand;

.field public static final enum CMD_FLIP_RIGHT:Lcom/parrot/freeflight/gamepad/command/BebopCommand;

.field public static final enum CMD_GAZ:Lcom/parrot/freeflight/gamepad/command/BebopCommand;

.field public static final enum CMD_PITCH:Lcom/parrot/freeflight/gamepad/command/BebopCommand;

.field public static final enum CMD_RECORD:Lcom/parrot/freeflight/gamepad/command/BebopCommand;

.field public static final enum CMD_RETURN_HOME:Lcom/parrot/freeflight/gamepad/command/BebopCommand;

.field public static final enum CMD_ROLL:Lcom/parrot/freeflight/gamepad/command/BebopCommand;

.field public static final enum CMD_TAKE_OFF:Lcom/parrot/freeflight/gamepad/command/BebopCommand;

.field public static final enum CMD_TAKE_PHOTO:Lcom/parrot/freeflight/gamepad/command/BebopCommand;

.field public static final enum CMD_YAW:Lcom/parrot/freeflight/gamepad/command/BebopCommand;

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
    new-instance v0, Lcom/parrot/freeflight/gamepad/command/BebopCommand$1;

    const-string v1, "CMD_GAZ"

    const/4 v2, 0x0

    const/16 v3, 0x1f4

    const v4, 0x7f1102dc

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/parrot/freeflight/gamepad/command/BebopCommand$1;-><init>(Ljava/lang/String;IIIZZI)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/command/BebopCommand;->CMD_GAZ:Lcom/parrot/freeflight/gamepad/command/BebopCommand;

    .line 22
    new-instance v0, Lcom/parrot/freeflight/gamepad/command/BebopCommand$2;

    const-string v1, "CMD_PITCH"

    const/4 v2, 0x1

    const/16 v3, 0x1f5

    const v4, 0x7f1102e8

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/parrot/freeflight/gamepad/command/BebopCommand$2;-><init>(Ljava/lang/String;IIIZZI)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/command/BebopCommand;->CMD_PITCH:Lcom/parrot/freeflight/gamepad/command/BebopCommand;

    .line 29
    new-instance v0, Lcom/parrot/freeflight/gamepad/command/BebopCommand$3;

    const-string v1, "CMD_ROLL"

    const/4 v2, 0x2

    const/16 v3, 0x1f6

    const v4, 0x7f1102f3

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/parrot/freeflight/gamepad/command/BebopCommand$3;-><init>(Ljava/lang/String;IIIZZI)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/command/BebopCommand;->CMD_ROLL:Lcom/parrot/freeflight/gamepad/command/BebopCommand;

    .line 36
    new-instance v0, Lcom/parrot/freeflight/gamepad/command/BebopCommand$4;

    const-string v1, "CMD_YAW"

    const/4 v2, 0x3

    const/16 v3, 0x1f7

    const v4, 0x7f1102fe

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/parrot/freeflight/gamepad/command/BebopCommand$4;-><init>(Ljava/lang/String;IIIZZI)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/command/BebopCommand;->CMD_YAW:Lcom/parrot/freeflight/gamepad/command/BebopCommand;

    .line 43
    new-instance v0, Lcom/parrot/freeflight/gamepad/command/BebopCommand$5;

    const-string v1, "CMD_CAMERA_TILT"

    const/4 v2, 0x4

    const/16 v3, 0x1f8

    const v4, 0x7f110313

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/16 v7, 0x64

    invoke-direct/range {v0 .. v7}, Lcom/parrot/freeflight/gamepad/command/BebopCommand$5;-><init>(Ljava/lang/String;IIIZZI)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/command/BebopCommand;->CMD_CAMERA_TILT:Lcom/parrot/freeflight/gamepad/command/BebopCommand;

    .line 53
    new-instance v0, Lcom/parrot/freeflight/gamepad/command/BebopCommand$6;

    const-string v1, "CMD_TAKE_OFF"

    const/4 v2, 0x5

    const/16 v3, 0x1f9

    const v4, 0x7f1102f7

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/parrot/freeflight/gamepad/command/BebopCommand$6;-><init>(Ljava/lang/String;IIIZZI)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/command/BebopCommand;->CMD_TAKE_OFF:Lcom/parrot/freeflight/gamepad/command/BebopCommand;

    .line 76
    new-instance v0, Lcom/parrot/freeflight/gamepad/command/BebopCommand$7;

    const-string v1, "CMD_TAKE_PHOTO"

    const/4 v2, 0x6

    const/16 v3, 0x1fa

    const v4, 0x7f1102f6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/parrot/freeflight/gamepad/command/BebopCommand$7;-><init>(Ljava/lang/String;IIIZZI)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/command/BebopCommand;->CMD_TAKE_PHOTO:Lcom/parrot/freeflight/gamepad/command/BebopCommand;

    .line 83
    new-instance v0, Lcom/parrot/freeflight/gamepad/command/BebopCommand$8;

    const-string v1, "CMD_RECORD"

    const/4 v2, 0x7

    const/16 v3, 0x1fb

    const v4, 0x7f110318

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/parrot/freeflight/gamepad/command/BebopCommand$8;-><init>(Ljava/lang/String;IIIZZI)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/command/BebopCommand;->CMD_RECORD:Lcom/parrot/freeflight/gamepad/command/BebopCommand;

    .line 94
    new-instance v0, Lcom/parrot/freeflight/gamepad/command/BebopCommand$9;

    const-string v1, "CMD_CAMERA_EXP_INC"

    const/16 v2, 0x8

    const/16 v3, 0x1fc

    const v4, 0x7f11030d

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/parrot/freeflight/gamepad/command/BebopCommand$9;-><init>(Ljava/lang/String;IIIZZI)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/command/BebopCommand;->CMD_CAMERA_EXP_INC:Lcom/parrot/freeflight/gamepad/command/BebopCommand;

    .line 106
    new-instance v0, Lcom/parrot/freeflight/gamepad/command/BebopCommand$10;

    const-string v1, "CMD_CAMERA_EXP_DEC"

    const/16 v2, 0x9

    const/16 v3, 0x1fd

    const v4, 0x7f11030c

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/parrot/freeflight/gamepad/command/BebopCommand$10;-><init>(Ljava/lang/String;IIIZZI)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/command/BebopCommand;->CMD_CAMERA_EXP_DEC:Lcom/parrot/freeflight/gamepad/command/BebopCommand;

    .line 118
    new-instance v0, Lcom/parrot/freeflight/gamepad/command/BebopCommand$11;

    const-string v1, "CMD_RETURN_HOME"

    const/16 v2, 0xa

    const/16 v3, 0x1fe

    const v4, 0x7f11031a

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/parrot/freeflight/gamepad/command/BebopCommand$11;-><init>(Ljava/lang/String;IIIZZI)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/command/BebopCommand;->CMD_RETURN_HOME:Lcom/parrot/freeflight/gamepad/command/BebopCommand;

    .line 125
    new-instance v0, Lcom/parrot/freeflight/gamepad/command/BebopCommand$12;

    const-string v1, "CMD_FLIP_FRONT"

    const/16 v2, 0xb

    const/16 v3, 0x1ff

    const v4, 0x7f1102d7

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/parrot/freeflight/gamepad/command/BebopCommand$12;-><init>(Ljava/lang/String;IIIZZI)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/command/BebopCommand;->CMD_FLIP_FRONT:Lcom/parrot/freeflight/gamepad/command/BebopCommand;

    .line 132
    new-instance v0, Lcom/parrot/freeflight/gamepad/command/BebopCommand$13;

    const-string v1, "CMD_FLIP_BACK"

    const/16 v2, 0xc

    const/16 v3, 0x200

    const v4, 0x7f1102d6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/parrot/freeflight/gamepad/command/BebopCommand$13;-><init>(Ljava/lang/String;IIIZZI)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/command/BebopCommand;->CMD_FLIP_BACK:Lcom/parrot/freeflight/gamepad/command/BebopCommand;

    .line 139
    new-instance v0, Lcom/parrot/freeflight/gamepad/command/BebopCommand$14;

    const-string v1, "CMD_FLIP_LEFT"

    const/16 v2, 0xd

    const/16 v3, 0x201

    const v4, 0x7f1102d8

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/parrot/freeflight/gamepad/command/BebopCommand$14;-><init>(Ljava/lang/String;IIIZZI)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/command/BebopCommand;->CMD_FLIP_LEFT:Lcom/parrot/freeflight/gamepad/command/BebopCommand;

    .line 146
    new-instance v0, Lcom/parrot/freeflight/gamepad/command/BebopCommand$15;

    const-string v1, "CMD_FLIP_RIGHT"

    const/16 v2, 0xe

    const/16 v3, 0x202

    const v4, 0x7f1102d9

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/parrot/freeflight/gamepad/command/BebopCommand$15;-><init>(Ljava/lang/String;IIIZZI)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/command/BebopCommand;->CMD_FLIP_RIGHT:Lcom/parrot/freeflight/gamepad/command/BebopCommand;

    .line 153
    new-instance v0, Lcom/parrot/freeflight/gamepad/command/BebopCommand$16;

    const-string v1, "CMD_EMERGENCY"

    const/16 v2, 0xf

    const/16 v3, 0x203

    const v4, 0x7f1102d2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/parrot/freeflight/gamepad/command/BebopCommand$16;-><init>(Ljava/lang/String;IIIZZI)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/command/BebopCommand;->CMD_EMERGENCY:Lcom/parrot/freeflight/gamepad/command/BebopCommand;

    .line 13
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/parrot/freeflight/gamepad/command/BebopCommand;

    const/4 v1, 0x0

    sget-object v2, Lcom/parrot/freeflight/gamepad/command/BebopCommand;->CMD_GAZ:Lcom/parrot/freeflight/gamepad/command/BebopCommand;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/parrot/freeflight/gamepad/command/BebopCommand;->CMD_PITCH:Lcom/parrot/freeflight/gamepad/command/BebopCommand;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/parrot/freeflight/gamepad/command/BebopCommand;->CMD_ROLL:Lcom/parrot/freeflight/gamepad/command/BebopCommand;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/parrot/freeflight/gamepad/command/BebopCommand;->CMD_YAW:Lcom/parrot/freeflight/gamepad/command/BebopCommand;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/parrot/freeflight/gamepad/command/BebopCommand;->CMD_CAMERA_TILT:Lcom/parrot/freeflight/gamepad/command/BebopCommand;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/parrot/freeflight/gamepad/command/BebopCommand;->CMD_TAKE_OFF:Lcom/parrot/freeflight/gamepad/command/BebopCommand;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/parrot/freeflight/gamepad/command/BebopCommand;->CMD_TAKE_PHOTO:Lcom/parrot/freeflight/gamepad/command/BebopCommand;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/parrot/freeflight/gamepad/command/BebopCommand;->CMD_RECORD:Lcom/parrot/freeflight/gamepad/command/BebopCommand;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/parrot/freeflight/gamepad/command/BebopCommand;->CMD_CAMERA_EXP_INC:Lcom/parrot/freeflight/gamepad/command/BebopCommand;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/parrot/freeflight/gamepad/command/BebopCommand;->CMD_CAMERA_EXP_DEC:Lcom/parrot/freeflight/gamepad/command/BebopCommand;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/parrot/freeflight/gamepad/command/BebopCommand;->CMD_RETURN_HOME:Lcom/parrot/freeflight/gamepad/command/BebopCommand;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/parrot/freeflight/gamepad/command/BebopCommand;->CMD_FLIP_FRONT:Lcom/parrot/freeflight/gamepad/command/BebopCommand;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/parrot/freeflight/gamepad/command/BebopCommand;->CMD_FLIP_BACK:Lcom/parrot/freeflight/gamepad/command/BebopCommand;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/parrot/freeflight/gamepad/command/BebopCommand;->CMD_FLIP_LEFT:Lcom/parrot/freeflight/gamepad/command/BebopCommand;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/parrot/freeflight/gamepad/command/BebopCommand;->CMD_FLIP_RIGHT:Lcom/parrot/freeflight/gamepad/command/BebopCommand;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/parrot/freeflight/gamepad/command/BebopCommand;->CMD_EMERGENCY:Lcom/parrot/freeflight/gamepad/command/BebopCommand;

    aput-object v2, v0, v1

    sput-object v0, Lcom/parrot/freeflight/gamepad/command/BebopCommand;->$VALUES:[Lcom/parrot/freeflight/gamepad/command/BebopCommand;

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
    .line 175
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 176
    iput p3, p0, Lcom/parrot/freeflight/gamepad/command/BebopCommand;->mId:I

    .line 177
    iput p4, p0, Lcom/parrot/freeflight/gamepad/command/BebopCommand;->mResId:I

    .line 178
    iput-boolean p5, p0, Lcom/parrot/freeflight/gamepad/command/BebopCommand;->mAnalog:Z

    .line 179
    iput-boolean p6, p0, Lcom/parrot/freeflight/gamepad/command/BebopCommand;->mRepeatable:Z

    .line 180
    iput p7, p0, Lcom/parrot/freeflight/gamepad/command/BebopCommand;->mRepeatingIntervalInMs:I

    .line 181
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IIIZZILcom/parrot/freeflight/gamepad/command/BebopCommand$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # Z
    .param p6, "x5"    # Z
    .param p7, "x6"    # I
    .param p8, "x7"    # Lcom/parrot/freeflight/gamepad/command/BebopCommand$1;

    .prologue
    .line 13
    invoke-direct/range {p0 .. p7}, Lcom/parrot/freeflight/gamepad/command/BebopCommand;-><init>(Ljava/lang/String;IIIZZI)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/parrot/freeflight/gamepad/command/BebopCommand;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 13
    const-class v0, Lcom/parrot/freeflight/gamepad/command/BebopCommand;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/gamepad/command/BebopCommand;

    return-object v0
.end method

.method public static values()[Lcom/parrot/freeflight/gamepad/command/BebopCommand;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/parrot/freeflight/gamepad/command/BebopCommand;->$VALUES:[Lcom/parrot/freeflight/gamepad/command/BebopCommand;

    invoke-virtual {v0}, [Lcom/parrot/freeflight/gamepad/command/BebopCommand;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/parrot/freeflight/gamepad/command/BebopCommand;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 1

    .prologue
    .line 185
    iget v0, p0, Lcom/parrot/freeflight/gamepad/command/BebopCommand;->mId:I

    return v0
.end method

.method public getRepeatingIntervalInMs()I
    .locals 1

    .prologue
    .line 213
    iget v0, p0, Lcom/parrot/freeflight/gamepad/command/BebopCommand;->mRepeatingIntervalInMs:I

    return v0
.end method

.method public getResId()I
    .locals 1
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation

    .prologue
    .line 191
    iget v0, p0, Lcom/parrot/freeflight/gamepad/command/BebopCommand;->mResId:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 203
    const/4 v0, 0x1

    return v0
.end method

.method public isAnalog()Z
    .locals 1

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/parrot/freeflight/gamepad/command/BebopCommand;->mAnalog:Z

    return v0
.end method

.method public needRepetition()Z
    .locals 1

    .prologue
    .line 208
    iget-boolean v0, p0, Lcom/parrot/freeflight/gamepad/command/BebopCommand;->mRepeatable:Z

    return v0
.end method

.method public shouldAccelerate()Z
    .locals 1

    .prologue
    .line 218
    const/4 v0, 0x0

    return v0
.end method
