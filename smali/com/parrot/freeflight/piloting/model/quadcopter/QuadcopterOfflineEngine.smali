.class public Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine;
.super Ljava/lang/Object;
.source "QuadcopterOfflineEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine$BooleanCommand;,
        Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine$IntCommand;,
        Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine$DoubleCommand;,
        Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine$CachedCommand;
    }
.end annotation


# instance fields
.field private final mCachedCommands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine$CachedCommand;",
            ">;"
        }
    .end annotation
.end field

.field private final mModel:Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;)V
    .locals 1
    .param p1, "model"    # Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine;->mModel:Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine;->mCachedCommands:Ljava/util/List;

    .line 18
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine;)Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine;

    .prologue
    .line 10
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine;->mModel:Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    return-object v0
.end method


# virtual methods
.method public reset()V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine;->mCachedCommands:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 167
    return-void
.end method

.method public restore()V
    .locals 3

    .prologue
    .line 159
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine;->mCachedCommands:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine$CachedCommand;

    .line 160
    .local v0, "cachedCommand":Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine$CachedCommand;
    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine$CachedCommand;->execute()V

    goto :goto_0

    .line 162
    .end local v0    # "cachedCommand":Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine$CachedCommand;
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine;->mCachedCommands:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 163
    return-void
.end method

.method public save()V
    .locals 4

    .prologue
    .line 21
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine;->mCachedCommands:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 22
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine;->mCachedCommands:Ljava/util/List;

    new-instance v1, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine$1;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine;->mModel:Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->getReturnHomeType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine$1;-><init>(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine;Ljava/lang/Integer;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine;->mCachedCommands:Ljava/util/List;

    new-instance v1, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine$2;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine;->mModel:Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->getReturnHomeDelay()Lcom/parrot/freeflight/util/DoubleBoundedState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/util/DoubleBoundedState;->getCurrentValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine$2;-><init>(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine;Ljava/lang/Double;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine;->mCachedCommands:Ljava/util/List;

    new-instance v1, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine$3;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine;->mModel:Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->getFlightDistanceRestrictionStatus()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine$3;-><init>(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine;Ljava/lang/Integer;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine;->mCachedCommands:Ljava/util/List;

    new-instance v1, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine$4;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine;->mModel:Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->getPictureFormat()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine$4;-><init>(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine;Ljava/lang/Integer;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine;->mCachedCommands:Ljava/util/List;

    new-instance v1, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine$5;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine;->mModel:Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->getVideoResolutions()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine$5;-><init>(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine;Ljava/lang/Integer;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine;->mCachedCommands:Ljava/util/List;

    new-instance v1, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine$6;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine;->mModel:Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->getRecordingMode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine$6;-><init>(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine;Ljava/lang/Integer;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine;->mCachedCommands:Ljava/util/List;

    new-instance v1, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine$7;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine;->mModel:Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->getFrameRate()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine$7;-><init>(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine;Ljava/lang/Integer;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine;->mCachedCommands:Ljava/util/List;

    new-instance v1, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine$8;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine;->mModel:Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->getAntiFlickeringMode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine$8;-><init>(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine;Ljava/lang/Integer;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine;->mCachedCommands:Ljava/util/List;

    new-instance v1, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine$9;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine;->mModel:Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->isAutoRecordEnabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine$9;-><init>(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine;Ljava/lang/Boolean;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine;->mCachedCommands:Ljava/util/List;

    new-instance v1, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine$10;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine;->mModel:Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->getMaxAltitudeState()Lcom/parrot/freeflight/util/DoubleBoundedState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/util/DoubleBoundedState;->getCurrentValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine$10;-><init>(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine;Ljava/lang/Double;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine;->mCachedCommands:Ljava/util/List;

    new-instance v1, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine$11;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine;->mModel:Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->getMaxDistanceState()Lcom/parrot/freeflight/util/DoubleBoundedState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/util/DoubleBoundedState;->getCurrentValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine$11;-><init>(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine;Ljava/lang/Double;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine;->mCachedCommands:Ljava/util/List;

    new-instance v1, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine$12;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine;->mModel:Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->getMaxPitchState()Lcom/parrot/freeflight/util/DoubleBoundedState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/util/DoubleBoundedState;->getCurrentValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine$12;-><init>(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine;Ljava/lang/Double;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine;->mCachedCommands:Ljava/util/List;

    new-instance v1, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine$13;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine;->mModel:Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->getMaxPitchSpeedState()Lcom/parrot/freeflight/util/DoubleBoundedState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/util/DoubleBoundedState;->getCurrentValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine$13;-><init>(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine;Ljava/lang/Double;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine;->mCachedCommands:Ljava/util/List;

    new-instance v1, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine$14;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine;->mModel:Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->getMaxRotationSpeedState()Lcom/parrot/freeflight/util/DoubleBoundedState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/util/DoubleBoundedState;->getCurrentValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine$14;-><init>(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine;Ljava/lang/Double;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine;->mCachedCommands:Ljava/util/List;

    new-instance v1, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine$15;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine;->mModel:Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->getMaxVerticalSpeedState()Lcom/parrot/freeflight/util/DoubleBoundedState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/util/DoubleBoundedState;->getCurrentValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine$15;-><init>(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine;Ljava/lang/Double;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine;->mCachedCommands:Ljava/util/List;

    new-instance v1, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine$16;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine;->mModel:Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->getBankedTurnedState()Lcom/parrot/freeflight/util/ToggleState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/util/ToggleState;->getToggleState()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine$16;-><init>(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine;Ljava/lang/Boolean;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine;->mCachedCommands:Ljava/util/List;

    new-instance v1, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine$17;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine;->mModel:Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->getMotionDetectionState()Lcom/parrot/freeflight/util/ToggleState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/util/ToggleState;->getToggleState()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine$17;-><init>(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine;Ljava/lang/Boolean;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine;->mCachedCommands:Ljava/util/List;

    new-instance v1, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine$18;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine;->mModel:Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->getRollStabilizationState()Lcom/parrot/freeflight/util/ToggleState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/util/ToggleState;->getToggleState()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine$18;-><init>(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine;Ljava/lang/Boolean;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine;->mCachedCommands:Ljava/util/List;

    new-instance v1, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine$19;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine;->mModel:Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->getHullProtectionState()Lcom/parrot/freeflight/util/ToggleState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/util/ToggleState;->getToggleState()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine$19;-><init>(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine;Ljava/lang/Boolean;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine;->mCachedCommands:Ljava/util/List;

    new-instance v1, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine$20;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine;->mModel:Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->isTimeLapseEnabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine$20;-><init>(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine;Ljava/lang/Boolean;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine;->mCachedCommands:Ljava/util/List;

    new-instance v1, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine$21;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine;->mModel:Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->getTimeLapseInterval()Lcom/parrot/freeflight/util/DoubleBoundedState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/util/DoubleBoundedState;->getCurrentValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine$21;-><init>(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine;Ljava/lang/Double;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    return-void
.end method
