.class public final enum Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;
.super Ljava/lang/Enum;
.source "SkyControllerCommand.java"

# interfaces
.implements Lcom/parrot/freeflight/gamepad/command/Command;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;",
        ">;",
        "Lcom/parrot/freeflight/gamepad/command/Command",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;

.field public static final enum CMD_BACK:Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;

.field public static final enum CMD_CAMERA_PAN:Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;

.field public static final enum CMD_CAMERA_TILT:Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;

.field public static final enum CMD_EMERGENCY:Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;

.field public static final enum CMD_GAZ:Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;

.field public static final enum CMD_PHOTO:Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;

.field public static final enum CMD_PITCH:Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;

.field public static final enum CMD_RECORD:Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;

.field public static final enum CMD_RESET_CAMERA:Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;

.field public static final enum CMD_RETURN_HOME:Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;

.field public static final enum CMD_ROLL:Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;

.field public static final enum CMD_SETTINGS:Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;

.field public static final enum CMD_TAKEOFF:Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;

.field public static final enum CMD_YAW:Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;

.field private static final DEBUG_JOYSTICK:Z = false

.field public static final NO_CMD_ASSOCIATED:Ljava/lang/String; = "No Action"


# instance fields
.field private final mAnalog:Z

.field private final mResId:I
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation
.end field

.field private final mStringId:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 12
    new-instance v0, Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;

    const-string v1, "CMD_BACK"

    const/4 v2, 0x0

    const-string v3, "Back"

    const v4, 0x7f1102cc

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;-><init>(Ljava/lang/String;ILjava/lang/String;IZI)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;->CMD_BACK:Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;

    .line 13
    new-instance v0, Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;

    const-string v1, "CMD_RESET_CAMERA"

    const/4 v2, 0x1

    const-string v3, "Reset Camera"

    const v4, 0x7f110319

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;-><init>(Ljava/lang/String;ILjava/lang/String;IZI)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;->CMD_RESET_CAMERA:Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;

    .line 14
    new-instance v0, Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;

    const-string v1, "CMD_RECORD"

    const/4 v2, 0x2

    const-string v3, "Record"

    const v4, 0x7f110318

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;-><init>(Ljava/lang/String;ILjava/lang/String;IZI)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;->CMD_RECORD:Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;

    .line 15
    new-instance v0, Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;

    const-string v1, "CMD_TAKEOFF"

    const/4 v2, 0x3

    const-string v3, "Takeoff/Landing"

    const v4, 0x7f1102f7

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;-><init>(Ljava/lang/String;ILjava/lang/String;IZI)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;->CMD_TAKEOFF:Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;

    .line 16
    new-instance v0, Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;

    const-string v1, "CMD_RETURN_HOME"

    const/4 v2, 0x4

    const-string v3, "Return Home"

    const v4, 0x7f11031a

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;-><init>(Ljava/lang/String;ILjava/lang/String;IZI)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;->CMD_RETURN_HOME:Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;

    .line 17
    new-instance v0, Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;

    const-string v1, "CMD_EMERGENCY"

    const/4 v2, 0x5

    const-string v3, "Emergency"

    const v4, 0x7f110314

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;-><init>(Ljava/lang/String;ILjava/lang/String;IZI)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;->CMD_EMERGENCY:Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;

    .line 18
    new-instance v0, Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;

    const-string v1, "CMD_SETTINGS"

    const/4 v2, 0x6

    const-string v3, "Settings"

    const v4, 0x7f11031c

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;-><init>(Ljava/lang/String;ILjava/lang/String;IZI)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;->CMD_SETTINGS:Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;

    .line 19
    new-instance v0, Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;

    const-string v1, "CMD_PHOTO"

    const/4 v2, 0x7

    const-string v3, "Photo"

    const v4, 0x7f1102f6

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;-><init>(Ljava/lang/String;ILjava/lang/String;IZI)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;->CMD_PHOTO:Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;

    .line 20
    new-instance v0, Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;

    const-string v1, "CMD_YAW"

    const/16 v2, 0x8

    const-string v3, "Yaw"

    const v4, 0x7f1102fe

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;-><init>(Ljava/lang/String;ILjava/lang/String;IZI)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;->CMD_YAW:Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;

    .line 21
    new-instance v0, Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;

    const-string v1, "CMD_GAZ"

    const/16 v2, 0x9

    const-string v3, "Gaz"

    const v4, 0x7f1102dc

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;-><init>(Ljava/lang/String;ILjava/lang/String;IZI)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;->CMD_GAZ:Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;

    .line 22
    new-instance v0, Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;

    const-string v1, "CMD_PITCH"

    const/16 v2, 0xa

    const-string v3, "Pitch"

    const v4, 0x7f1102e8

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;-><init>(Ljava/lang/String;ILjava/lang/String;IZI)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;->CMD_PITCH:Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;

    .line 23
    new-instance v0, Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;

    const-string v1, "CMD_ROLL"

    const/16 v2, 0xb

    const-string v3, "Roll"

    const v4, 0x7f1102f3

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;-><init>(Ljava/lang/String;ILjava/lang/String;IZI)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;->CMD_ROLL:Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;

    .line 24
    new-instance v0, Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;

    const-string v1, "CMD_CAMERA_TILT"

    const/16 v2, 0xc

    const-string v3, "Camera Tilt"

    const v4, 0x7f110313

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;-><init>(Ljava/lang/String;ILjava/lang/String;IZI)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;->CMD_CAMERA_TILT:Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;

    .line 25
    new-instance v0, Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;

    const-string v1, "CMD_CAMERA_PAN"

    const/16 v2, 0xd

    const-string v3, "Camera Pan"

    const v4, 0x7f110312

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;-><init>(Ljava/lang/String;ILjava/lang/String;IZI)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;->CMD_CAMERA_PAN:Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;

    .line 9
    const/16 v0, 0xe

    new-array v0, v0, [Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;

    const/4 v1, 0x0

    sget-object v2, Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;->CMD_BACK:Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;->CMD_RESET_CAMERA:Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;->CMD_RECORD:Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;->CMD_TAKEOFF:Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;->CMD_RETURN_HOME:Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;->CMD_EMERGENCY:Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;->CMD_SETTINGS:Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;->CMD_PHOTO:Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;->CMD_YAW:Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;->CMD_GAZ:Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;->CMD_PITCH:Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;->CMD_ROLL:Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;->CMD_CAMERA_TILT:Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;->CMD_CAMERA_PAN:Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;

    aput-object v2, v0, v1

    sput-object v0, Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;->$VALUES:[Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;IZI)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p3, "stringId"    # Ljava/lang/String;
    .param p4, "resId"    # I
    .param p5, "analog"    # Z
    .param p6, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZI)V"
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 39
    iput-object p3, p0, Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;->mStringId:Ljava/lang/String;

    .line 40
    iput p4, p0, Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;->mResId:I

    .line 41
    iput-boolean p5, p0, Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;->mAnalog:Z

    .line 42
    iput p6, p0, Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;->mType:I

    .line 43
    return-void
.end method

.method public static getCommandWithName(Ljava/lang/String;)Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;
    .locals 6
    .param p0, "name"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 94
    const/4 v1, 0x0

    .line 95
    .local v1, "commandToReturn":Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;
    if-eqz p0, :cond_0

    .line 96
    invoke-static {}, Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;->values()[Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 97
    .local v0, "command":Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;
    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;->getStringId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 98
    move-object v1, v0

    .line 103
    .end local v0    # "command":Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;
    :cond_0
    return-object v1

    .line 96
    .restart local v0    # "command":Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 9
    const-class v0, Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;

    return-object v0
.end method

.method public static values()[Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;->$VALUES:[Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;

    invoke-virtual {v0}, [Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic execute(Ljava/lang/Object;F)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 9
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;->execute(Ljava/lang/Void;F)V

    return-void
.end method

.method public execute(Ljava/lang/Void;F)V
    .locals 0
    .param p1, "obj"    # Ljava/lang/Void;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "value"    # F

    .prologue
    .line 70
    return-void
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 47
    const/4 v0, -0x1

    return v0
.end method

.method public getRepeatingIntervalInMs()I
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public getResId()I
    .locals 1
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation

    .prologue
    .line 52
    iget v0, p0, Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;->mResId:I

    return v0
.end method

.method public getStringId()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;->mStringId:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;->mType:I

    return v0
.end method

.method public isAnalog()Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;->mAnalog:Z

    return v0
.end method

.method public needRepetition()Z
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public shouldAccelerate()Z
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    return v0
.end method
