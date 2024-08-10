.class public final enum Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;
.super Ljava/lang/Enum;
.source "MavlinkCommand.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;

.field public static final enum MAV_CMD_CONDITION_DELAY:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;

.field public static final enum MAV_CMD_DO_CHANGE_SPEED:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;

.field public static final enum MAV_CMD_DO_SET_ROI:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;

.field public static final enum MAV_CMD_IMAGE_START_CAPTURE:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;

.field public static final enum MAV_CMD_IMAGE_STOP_CAPTURE:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;

.field public static final enum MAV_CMD_NAV_LAND:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;

.field public static final enum MAV_CMD_NAV_TAKEOFF:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;

.field public static final enum MAV_CMD_NAV_WAYPOINT:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;

.field public static final enum MAV_CMD_PANORAMA_CREATE:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;

.field public static final enum MAV_CMD_SET_VIEW_MODE:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;

.field public static final enum MAV_CMD_VIDEO_START_CAPTURE:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;

.field public static final enum MAV_CMD_VIDEO_STOP_CAPTURE:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;

.field public static final enum Mavlink_Command_UNKNOWN:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;


# instance fields
.field private final mCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 8
    new-instance v0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;

    const-string v1, "Mavlink_Command_UNKNOWN"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;->Mavlink_Command_UNKNOWN:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;

    .line 9
    new-instance v0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;

    const-string v1, "MAV_CMD_NAV_WAYPOINT"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v5, v2}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;->MAV_CMD_NAV_WAYPOINT:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;

    .line 10
    new-instance v0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;

    const-string v1, "MAV_CMD_NAV_LAND"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v6, v2}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;->MAV_CMD_NAV_LAND:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;

    .line 11
    new-instance v0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;

    const-string v1, "MAV_CMD_DO_CHANGE_SPEED"

    const/16 v2, 0xb2

    invoke-direct {v0, v1, v7, v2}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;->MAV_CMD_DO_CHANGE_SPEED:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;

    .line 12
    new-instance v0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;

    const-string v1, "MAV_CMD_NAV_TAKEOFF"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v8, v2}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;->MAV_CMD_NAV_TAKEOFF:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;

    .line 13
    new-instance v0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;

    const-string v1, "MAV_CMD_DO_SET_ROI"

    const/4 v2, 0x5

    const/16 v3, 0xc9

    invoke-direct {v0, v1, v2, v3}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;->MAV_CMD_DO_SET_ROI:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;

    .line 14
    new-instance v0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;

    const-string v1, "MAV_CMD_VIDEO_START_CAPTURE"

    const/4 v2, 0x6

    const/16 v3, 0x9c4

    invoke-direct {v0, v1, v2, v3}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;->MAV_CMD_VIDEO_START_CAPTURE:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;

    .line 15
    new-instance v0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;

    const-string v1, "MAV_CMD_VIDEO_STOP_CAPTURE"

    const/4 v2, 0x7

    const/16 v3, 0x9c5

    invoke-direct {v0, v1, v2, v3}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;->MAV_CMD_VIDEO_STOP_CAPTURE:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;

    .line 16
    new-instance v0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;

    const-string v1, "MAV_CMD_IMAGE_START_CAPTURE"

    const/16 v2, 0x8

    const/16 v3, 0x7d0

    invoke-direct {v0, v1, v2, v3}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;->MAV_CMD_IMAGE_START_CAPTURE:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;

    .line 17
    new-instance v0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;

    const-string v1, "MAV_CMD_IMAGE_STOP_CAPTURE"

    const/16 v2, 0x9

    const/16 v3, 0x7d1

    invoke-direct {v0, v1, v2, v3}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;->MAV_CMD_IMAGE_STOP_CAPTURE:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;

    .line 18
    new-instance v0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;

    const-string v1, "MAV_CMD_PANORAMA_CREATE"

    const/16 v2, 0xa

    const/16 v3, 0xaf0

    invoke-direct {v0, v1, v2, v3}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;->MAV_CMD_PANORAMA_CREATE:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;

    .line 19
    new-instance v0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;

    const-string v1, "MAV_CMD_CONDITION_DELAY"

    const/16 v2, 0xb

    const/16 v3, 0x70

    invoke-direct {v0, v1, v2, v3}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;->MAV_CMD_CONDITION_DELAY:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;

    .line 20
    new-instance v0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;

    const-string v1, "MAV_CMD_SET_VIEW_MODE"

    const/16 v2, 0xc

    const v3, 0xc350

    invoke-direct {v0, v1, v2, v3}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;->MAV_CMD_SET_VIEW_MODE:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;

    .line 7
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;

    sget-object v1, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;->Mavlink_Command_UNKNOWN:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;

    aput-object v1, v0, v4

    sget-object v1, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;->MAV_CMD_NAV_WAYPOINT:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;

    aput-object v1, v0, v5

    sget-object v1, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;->MAV_CMD_NAV_LAND:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;

    aput-object v1, v0, v6

    sget-object v1, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;->MAV_CMD_DO_CHANGE_SPEED:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;

    aput-object v1, v0, v7

    sget-object v1, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;->MAV_CMD_NAV_TAKEOFF:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;->MAV_CMD_DO_SET_ROI:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;->MAV_CMD_VIDEO_START_CAPTURE:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;->MAV_CMD_VIDEO_STOP_CAPTURE:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;->MAV_CMD_IMAGE_START_CAPTURE:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;->MAV_CMD_IMAGE_STOP_CAPTURE:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;->MAV_CMD_PANORAMA_CREATE:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;->MAV_CMD_CONDITION_DELAY:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;->MAV_CMD_SET_VIEW_MODE:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;

    aput-object v2, v0, v1

    sput-object v0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;->$VALUES:[Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "code"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 25
    iput p3, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;->mCode:I

    .line 26
    return-void
.end method

.method public static getCommand(I)Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;
    .locals 6
    .param p0, "value"    # I

    .prologue
    .line 29
    sget-object v0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;->Mavlink_Command_UNKNOWN:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;

    .line 31
    .local v0, "retVal":Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;
    invoke-static {}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;->values()[Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, v3, v2

    .line 32
    .local v1, "state":Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;
    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;->getCommandCode()I

    move-result v5

    if-ne p0, v5, :cond_1

    .line 33
    move-object v0, v1

    .line 37
    .end local v1    # "state":Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;
    :cond_0
    return-object v0

    .line 31
    .restart local v1    # "state":Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static getMissionItemCommandType(Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;)Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;
    .locals 1
    .param p0, "missionItem"    # Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->getCommand()I

    move-result v0

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;->getCommand(I)Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;

    return-object v0
.end method

.method public static values()[Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;->$VALUES:[Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;

    invoke-virtual {v0}, [Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;

    return-object v0
.end method


# virtual methods
.method public getCommandCode()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;->mCode:I

    return v0
.end method
