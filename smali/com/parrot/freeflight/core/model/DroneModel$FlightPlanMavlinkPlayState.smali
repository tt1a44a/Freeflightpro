.class public Lcom/parrot/freeflight/core/model/DroneModel$FlightPlanMavlinkPlayState;
.super Ljava/lang/Object;
.source "DroneModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/core/model/DroneModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FlightPlanMavlinkPlayState"
.end annotation


# instance fields
.field private mState:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_MAVLINKSTATE_MAVLINKFILEPLAYINGSTATECHANGED_STATE_ENUM;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1370
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1372
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_MAVLINKSTATE_MAVLINKFILEPLAYINGSTATECHANGED_STATE_ENUM;->eARCOMMANDS_COMMON_MAVLINKSTATE_MAVLINKFILEPLAYINGSTATECHANGED_STATE_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_MAVLINKSTATE_MAVLINKFILEPLAYINGSTATECHANGED_STATE_ENUM;

    iput-object v0, p0, Lcom/parrot/freeflight/core/model/DroneModel$FlightPlanMavlinkPlayState;->mState:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_MAVLINKSTATE_MAVLINKFILEPLAYINGSTATECHANGED_STATE_ENUM;

    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/core/model/DroneModel$FlightPlanMavlinkPlayState;)I
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/model/DroneModel$FlightPlanMavlinkPlayState;

    .prologue
    .line 1370
    invoke-direct {p0}, Lcom/parrot/freeflight/core/model/DroneModel$FlightPlanMavlinkPlayState;->getState()I

    move-result v0

    return v0
.end method

.method private getState()I
    .locals 3

    .prologue
    .line 1395
    sget-object v1, Lcom/parrot/freeflight/core/model/DroneModel$4;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_COMMON_MAVLINKSTATE_MAVLINKFILEPLAYINGSTATECHANGED_STATE_ENUM:[I

    iget-object v2, p0, Lcom/parrot/freeflight/core/model/DroneModel$FlightPlanMavlinkPlayState;->mState:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_MAVLINKSTATE_MAVLINKFILEPLAYINGSTATECHANGED_STATE_ENUM;

    invoke-virtual {v2}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_MAVLINKSTATE_MAVLINKFILEPLAYINGSTATECHANGED_STATE_ENUM;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1406
    const/4 v0, -0x1

    .line 1409
    .local v0, "flightPlanMavlingPlayingState":I
    :goto_0
    return v0

    .line 1397
    .end local v0    # "flightPlanMavlingPlayingState":I
    :pswitch_0
    const/4 v0, 0x0

    .line 1398
    .restart local v0    # "flightPlanMavlingPlayingState":I
    goto :goto_0

    .line 1400
    .end local v0    # "flightPlanMavlingPlayingState":I
    :pswitch_1
    const/4 v0, 0x2

    .line 1401
    .restart local v0    # "flightPlanMavlingPlayingState":I
    goto :goto_0

    .line 1403
    .end local v0    # "flightPlanMavlingPlayingState":I
    :pswitch_2
    const/4 v0, 0x1

    .line 1404
    .restart local v0    # "flightPlanMavlingPlayingState":I
    goto :goto_0

    .line 1395
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public getRawValue()I
    .locals 1

    .prologue
    .line 1388
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DroneModel$FlightPlanMavlinkPlayState;->mState:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_MAVLINKSTATE_MAVLINKFILEPLAYINGSTATECHANGED_STATE_ENUM;

    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_MAVLINKSTATE_MAVLINKFILEPLAYINGSTATECHANGED_STATE_ENUM;->getValue()I

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 1384
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_MAVLINKSTATE_MAVLINKFILEPLAYINGSTATECHANGED_STATE_ENUM;->eARCOMMANDS_COMMON_MAVLINKSTATE_MAVLINKFILEPLAYINGSTATECHANGED_STATE_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_MAVLINKSTATE_MAVLINKFILEPLAYINGSTATECHANGED_STATE_ENUM;

    iput-object v0, p0, Lcom/parrot/freeflight/core/model/DroneModel$FlightPlanMavlinkPlayState;->mState:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_MAVLINKSTATE_MAVLINKFILEPLAYINGSTATECHANGED_STATE_ENUM;

    .line 1385
    return-void
.end method

.method public update(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_MAVLINKSTATE_MAVLINKFILEPLAYINGSTATECHANGED_STATE_ENUM;)Z
    .locals 1
    .param p1, "newState"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_MAVLINKSTATE_MAVLINKFILEPLAYINGSTATECHANGED_STATE_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1376
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DroneModel$FlightPlanMavlinkPlayState;->mState:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_MAVLINKSTATE_MAVLINKFILEPLAYINGSTATECHANGED_STATE_ENUM;

    if-eq v0, p1, :cond_0

    .line 1377
    iput-object p1, p0, Lcom/parrot/freeflight/core/model/DroneModel$FlightPlanMavlinkPlayState;->mState:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_MAVLINKSTATE_MAVLINKFILEPLAYINGSTATECHANGED_STATE_ENUM;

    .line 1378
    const/4 v0, 0x1

    .line 1380
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
