.class public abstract enum Lcom/parrot/freeflight/gamepad/command/FpvCommand;
.super Ljava/lang/Enum;
.source "FpvCommand.java"

# interfaces
.implements Lcom/parrot/freeflight/gamepad/command/Command;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/parrot/freeflight/gamepad/command/FpvCommand;",
        ">;",
        "Lcom/parrot/freeflight/gamepad/command/Command",
        "<",
        "Lcom/parrot/freeflight/piloting/ui/fpv/FpvUiCommandController;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/parrot/freeflight/gamepad/command/FpvCommand;

.field public static final enum CMD_DISPLAY_MODE:Lcom/parrot/freeflight/gamepad/command/FpvCommand;

.field public static final enum CMD_VIDEO_POV:Lcom/parrot/freeflight/gamepad/command/FpvCommand;


# instance fields
.field private final mAnalog:Z

.field private final mId:I

.field private final mResId:I
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 12
    new-instance v0, Lcom/parrot/freeflight/gamepad/command/FpvCommand$1;

    const-string v1, "CMD_VIDEO_POV"

    const/16 v3, 0x190

    const v4, 0x7f1102db

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/parrot/freeflight/gamepad/command/FpvCommand$1;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/command/FpvCommand;->CMD_VIDEO_POV:Lcom/parrot/freeflight/gamepad/command/FpvCommand;

    .line 19
    new-instance v3, Lcom/parrot/freeflight/gamepad/command/FpvCommand$2;

    const-string v4, "CMD_DISPLAY_MODE"

    const/16 v6, 0x191

    const v7, 0x7f1102da

    move v5, v9

    move v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/parrot/freeflight/gamepad/command/FpvCommand$2;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v3, Lcom/parrot/freeflight/gamepad/command/FpvCommand;->CMD_DISPLAY_MODE:Lcom/parrot/freeflight/gamepad/command/FpvCommand;

    .line 10
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/parrot/freeflight/gamepad/command/FpvCommand;

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/FpvCommand;->CMD_VIDEO_POV:Lcom/parrot/freeflight/gamepad/command/FpvCommand;

    aput-object v1, v0, v2

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/FpvCommand;->CMD_DISPLAY_MODE:Lcom/parrot/freeflight/gamepad/command/FpvCommand;

    aput-object v1, v0, v9

    sput-object v0, Lcom/parrot/freeflight/gamepad/command/FpvCommand;->$VALUES:[Lcom/parrot/freeflight/gamepad/command/FpvCommand;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIZ)V
    .locals 0
    .param p2    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p3, "id"    # I
    .param p4, "resId"    # I
    .param p5, "analog"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ)V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 33
    iput p3, p0, Lcom/parrot/freeflight/gamepad/command/FpvCommand;->mId:I

    .line 34
    iput p4, p0, Lcom/parrot/freeflight/gamepad/command/FpvCommand;->mResId:I

    .line 35
    iput-boolean p5, p0, Lcom/parrot/freeflight/gamepad/command/FpvCommand;->mAnalog:Z

    .line 36
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IIIZLcom/parrot/freeflight/gamepad/command/FpvCommand$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # Z
    .param p6, "x5"    # Lcom/parrot/freeflight/gamepad/command/FpvCommand$1;

    .prologue
    .line 10
    invoke-direct/range {p0 .. p5}, Lcom/parrot/freeflight/gamepad/command/FpvCommand;-><init>(Ljava/lang/String;IIIZ)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/parrot/freeflight/gamepad/command/FpvCommand;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 10
    const-class v0, Lcom/parrot/freeflight/gamepad/command/FpvCommand;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/gamepad/command/FpvCommand;

    return-object v0
.end method

.method public static values()[Lcom/parrot/freeflight/gamepad/command/FpvCommand;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/parrot/freeflight/gamepad/command/FpvCommand;->$VALUES:[Lcom/parrot/freeflight/gamepad/command/FpvCommand;

    invoke-virtual {v0}, [Lcom/parrot/freeflight/gamepad/command/FpvCommand;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/parrot/freeflight/gamepad/command/FpvCommand;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/parrot/freeflight/gamepad/command/FpvCommand;->mId:I

    return v0
.end method

.method public getRepeatingIntervalInMs()I
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public getResId()I
    .locals 1
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation

    .prologue
    .line 46
    iget v0, p0, Lcom/parrot/freeflight/gamepad/command/FpvCommand;->mResId:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x1

    return v0
.end method

.method public isAnalog()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/parrot/freeflight/gamepad/command/FpvCommand;->mAnalog:Z

    return v0
.end method

.method public needRepetition()Z
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public shouldAccelerate()Z
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method
