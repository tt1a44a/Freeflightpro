.class public Lcom/parrot/freeflight/flightplan/FlightPlanManager;
.super Ljava/lang/Object;
.source "FlightPlanManager.java"

# interfaces
.implements Lcom/parrot/freeflight/flightplan/mavlink/MavlinkStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/flightplan/FlightPlanManager$TimeElaspedListener;
    }
.end annotation


# instance fields
.field mCurrentState:I

.field private final mMavlinkController:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkController;

.field private mTimeElapsedInSeconds:J

.field private mTimeElaspedListener:Lcom/parrot/freeflight/flightplan/FlightPlanManager$TimeElaspedListener;

.field private mTimer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkController;

    invoke-direct {v0, p1}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/FlightPlanManager;->mMavlinkController:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkController;

    .line 28
    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/FlightPlanManager;->resetTimer()V

    .line 29
    return-void
.end method

.method static synthetic access$008(Lcom/parrot/freeflight/flightplan/FlightPlanManager;)J
    .locals 4
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/FlightPlanManager;

    .prologue
    .line 18
    iget-wide v0, p0, Lcom/parrot/freeflight/flightplan/FlightPlanManager;->mTimeElapsedInSeconds:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/parrot/freeflight/flightplan/FlightPlanManager;->mTimeElapsedInSeconds:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/flightplan/FlightPlanManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/FlightPlanManager;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/FlightPlanManager;->notifyTimeElaspedListener()V

    return-void
.end method

.method private notifyTimeElaspedListener()V
    .locals 4

    .prologue
    .line 95
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/FlightPlanManager;->mTimeElaspedListener:Lcom/parrot/freeflight/flightplan/FlightPlanManager$TimeElaspedListener;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/FlightPlanManager;->mTimeElaspedListener:Lcom/parrot/freeflight/flightplan/FlightPlanManager$TimeElaspedListener;

    iget-wide v2, p0, Lcom/parrot/freeflight/flightplan/FlightPlanManager;->mTimeElapsedInSeconds:J

    invoke-interface {v0, v2, v3}, Lcom/parrot/freeflight/flightplan/FlightPlanManager$TimeElaspedListener;->onTimeElapsedChanged(J)V

    .line 98
    :cond_0
    return-void
.end method

.method private onPaused()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/FlightPlanManager;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/FlightPlanManager;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 120
    :cond_0
    return-void
.end method

.method private onPlaying()V
    .locals 6

    .prologue
    .line 106
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/FlightPlanManager;->mTimer:Ljava/util/Timer;

    .line 107
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/FlightPlanManager;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/parrot/freeflight/flightplan/FlightPlanManager$1;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/flightplan/FlightPlanManager$1;-><init>(Lcom/parrot/freeflight/flightplan/FlightPlanManager;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 114
    return-void
.end method

.method private onStopped()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/FlightPlanManager;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/FlightPlanManager;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 126
    :cond_0
    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/FlightPlanManager;->resetTimer()V

    .line 127
    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/FlightPlanManager;->notifyTimeElaspedListener()V

    .line 128
    return-void
.end method

.method private resetTimer()V
    .locals 2

    .prologue
    .line 101
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/parrot/freeflight/flightplan/FlightPlanManager;->mTimeElapsedInSeconds:J

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/FlightPlanManager;->mTimer:Ljava/util/Timer;

    .line 103
    return-void
.end method


# virtual methods
.method public addMavlinkStateListener(Lcom/parrot/freeflight/flightplan/mavlink/MavlinkStateListener;)V
    .locals 1
    .param p1, "mavlinkStateListener"    # Lcom/parrot/freeflight/flightplan/mavlink/MavlinkStateListener;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/FlightPlanManager;->mMavlinkController:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkController;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkController;->addMavlinkStateListener(Lcom/parrot/freeflight/flightplan/mavlink/MavlinkStateListener;)V

    .line 55
    return-void
.end method

.method public goToMavlinkState(I)V
    .locals 1
    .param p1, "mavlinkState"    # I

    .prologue
    .line 50
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/FlightPlanManager;->mMavlinkController:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkController;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkController;->goToMavlinkState(I)V

    .line 51
    return-void
.end method

.method public onCreateMavlinkFileToSend(Ljava/lang/String;)V
    .locals 0
    .param p1, "filePath"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 92
    return-void
.end method

.method public onMavlinkStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 74
    iget v0, p0, Lcom/parrot/freeflight/flightplan/FlightPlanManager;->mCurrentState:I

    if-eq v0, p1, :cond_0

    if-nez p1, :cond_1

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    iput p1, p0, Lcom/parrot/freeflight/flightplan/FlightPlanManager;->mCurrentState:I

    .line 76
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 78
    :pswitch_0
    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/FlightPlanManager;->onPlaying()V

    goto :goto_0

    .line 81
    :pswitch_1
    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/FlightPlanManager;->onPaused()V

    goto :goto_0

    .line 84
    :pswitch_2
    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/FlightPlanManager;->onStopped()V

    goto :goto_0

    .line 76
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public removeMavlinkStateListener(Lcom/parrot/freeflight/flightplan/mavlink/MavlinkStateListener;)V
    .locals 1
    .param p1, "mavlinkStateListener"    # Lcom/parrot/freeflight/flightplan/mavlink/MavlinkStateListener;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/FlightPlanManager;->mMavlinkController:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkController;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkController;->removeMavlinkStateListener(Lcom/parrot/freeflight/flightplan/mavlink/MavlinkStateListener;)V

    .line 59
    return-void
.end method

.method public requestPlayOrPause(Lcom/parrot/freeflight/core/model/DroneModel;)V
    .locals 1
    .param p1, "droneModel"    # Lcom/parrot/freeflight/core/model/DroneModel;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/FlightPlanManager;->mMavlinkController:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkController;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkController;->requestPlayOrPause(Lcom/parrot/freeflight/core/model/DroneModel;)V

    .line 43
    return-void
.end method

.method public resetController()V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/FlightPlanManager;->mMavlinkController:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkController;->resetController()V

    .line 47
    return-void
.end method

.method public setSkyControllerModel(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;)V
    .locals 1
    .param p1, "skyControllerModel"    # Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/FlightPlanManager;->mMavlinkController:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkController;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkController;->setSkyControllerModel(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;)V

    .line 132
    return-void
.end method

.method public setTimeElaspedListener(Lcom/parrot/freeflight/flightplan/FlightPlanManager$TimeElaspedListener;)V
    .locals 0
    .param p1, "timeElaspedListener"    # Lcom/parrot/freeflight/flightplan/FlightPlanManager$TimeElaspedListener;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/FlightPlanManager;->mTimeElaspedListener:Lcom/parrot/freeflight/flightplan/FlightPlanManager$TimeElaspedListener;

    .line 67
    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/FlightPlanManager;->notifyTimeElaspedListener()V

    .line 68
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/FlightPlanManager;->mMavlinkController:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkController;

    invoke-virtual {v0, p0}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkController;->addMavlinkStateListener(Lcom/parrot/freeflight/flightplan/mavlink/MavlinkStateListener;)V

    .line 33
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/FlightPlanManager;->resetTimer()V

    .line 37
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/FlightPlanManager;->mMavlinkController:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkController;

    invoke-virtual {v0, p0}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkController;->removeMavlinkStateListener(Lcom/parrot/freeflight/flightplan/mavlink/MavlinkStateListener;)V

    .line 38
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/FlightPlanManager;->mMavlinkController:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkController;->dispose()V

    .line 39
    return-void
.end method
