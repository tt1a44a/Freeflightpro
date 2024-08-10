.class public Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine;
.super Ljava/lang/Object;
.source "FixedWingOfflineEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine$BooleanCommand;,
        Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine$IntCommand;,
        Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine$DoubleCommand;,
        Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine$CachedCommand;
    }
.end annotation


# instance fields
.field private final mCachedCommands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine$CachedCommand;",
            ">;"
        }
    .end annotation
.end field

.field private final mModel:Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;)V
    .locals 1
    .param p1, "model"    # Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine;->mModel:Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine;->mCachedCommands:Ljava/util/List;

    .line 18
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine;)Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine;

    .prologue
    .line 10
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine;->mModel:Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;

    return-object v0
.end method


# virtual methods
.method public reset()V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine;->mCachedCommands:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 143
    return-void
.end method

.method public restore()V
    .locals 3

    .prologue
    .line 135
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine;->mCachedCommands:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine$CachedCommand;

    .line 136
    .local v0, "cachedCommand":Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine$CachedCommand;
    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine$CachedCommand;->execute()V

    goto :goto_0

    .line 138
    .end local v0    # "cachedCommand":Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine$CachedCommand;
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine;->mCachedCommands:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 139
    return-void
.end method

.method public save()V
    .locals 4

    .prologue
    .line 21
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine;->mCachedCommands:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 22
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine;->mCachedCommands:Ljava/util/List;

    new-instance v1, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine$1;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine;->mModel:Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->getReturnHomeType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine$1;-><init>(Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine;Ljava/lang/Integer;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine;->mCachedCommands:Ljava/util/List;

    new-instance v1, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine$2;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine;->mModel:Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->getReturnHomeDelay()Lcom/parrot/freeflight/util/DoubleBoundedState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/util/DoubleBoundedState;->getCurrentValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine$2;-><init>(Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine;Ljava/lang/Double;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine;->mCachedCommands:Ljava/util/List;

    new-instance v1, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine$3;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine;->mModel:Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->getFlightDistanceRestrictionStatus()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine$3;-><init>(Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine;Ljava/lang/Integer;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine;->mCachedCommands:Ljava/util/List;

    new-instance v1, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine$4;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine;->mModel:Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->getPictureFormat()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine$4;-><init>(Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine;Ljava/lang/Integer;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine;->mCachedCommands:Ljava/util/List;

    new-instance v1, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine$5;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine;->mModel:Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->getVideoResolutions()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine$5;-><init>(Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine;Ljava/lang/Integer;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine;->mCachedCommands:Ljava/util/List;

    new-instance v1, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine$6;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine;->mModel:Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->getRecordingMode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine$6;-><init>(Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine;Ljava/lang/Integer;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine;->mCachedCommands:Ljava/util/List;

    new-instance v1, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine$7;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine;->mModel:Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->getFrameRate()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine$7;-><init>(Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine;Ljava/lang/Integer;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine;->mCachedCommands:Ljava/util/List;

    new-instance v1, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine$8;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine;->mModel:Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->getAntiFlickeringMode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine$8;-><init>(Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine;Ljava/lang/Integer;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine;->mCachedCommands:Ljava/util/List;

    new-instance v1, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine$9;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine;->mModel:Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->isAutoRecordEnabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine$9;-><init>(Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine;Ljava/lang/Boolean;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine;->mCachedCommands:Ljava/util/List;

    new-instance v1, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine$10;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine;->mModel:Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->getMinAltitudeState()Lcom/parrot/freeflight/util/DoubleBoundedState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/util/DoubleBoundedState;->getCurrentValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine$10;-><init>(Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine;Ljava/lang/Double;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine;->mCachedCommands:Ljava/util/List;

    new-instance v1, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine$11;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine;->mModel:Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->getMaxAltitudeState()Lcom/parrot/freeflight/util/DoubleBoundedState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/util/DoubleBoundedState;->getCurrentValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine$11;-><init>(Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine;Ljava/lang/Double;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine;->mCachedCommands:Ljava/util/List;

    new-instance v1, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine$12;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine;->mModel:Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->getMaxDistanceState()Lcom/parrot/freeflight/util/DoubleBoundedState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/util/DoubleBoundedState;->getCurrentValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine$12;-><init>(Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine;Ljava/lang/Double;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine;->mCachedCommands:Ljava/util/List;

    new-instance v1, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine$13;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine;->mModel:Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->getMaxPitchState()Lcom/parrot/freeflight/util/DoubleBoundedState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/util/DoubleBoundedState;->getCurrentValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine$13;-><init>(Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine;Ljava/lang/Double;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine;->mCachedCommands:Ljava/util/List;

    new-instance v1, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine$14;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine;->mModel:Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->getCirclingDirectionState()Lcom/parrot/freeflight/piloting/ui/util/CirclingDirectionState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/ui/util/CirclingDirectionState;->getCirclingDirection()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine$14;-><init>(Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine;Ljava/lang/Integer;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine;->mModel:Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->isCirclingRadiusCmdSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine;->mCachedCommands:Ljava/util/List;

    new-instance v1, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine$15;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine;->mModel:Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->getCirclingRadiusState()Lcom/parrot/freeflight/util/DoubleBoundedState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/util/DoubleBoundedState;->getCurrentValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine$15;-><init>(Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine;Ljava/lang/Double;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine;->mCachedCommands:Ljava/util/List;

    new-instance v1, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine$16;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine;->mModel:Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->getCirclingAltitudeState()Lcom/parrot/freeflight/util/DoubleBoundedState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/util/DoubleBoundedState;->getCurrentValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine$16;-><init>(Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine;Ljava/lang/Double;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine;->mCachedCommands:Ljava/util/List;

    new-instance v1, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine$17;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine;->mModel:Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->isTimeLapseEnabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine$17;-><init>(Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine;Ljava/lang/Boolean;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine;->mCachedCommands:Ljava/util/List;

    new-instance v1, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine$18;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine;->mModel:Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->getTimeLapseInterval()Lcom/parrot/freeflight/util/DoubleBoundedState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/util/DoubleBoundedState;->getCurrentValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine$18;-><init>(Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine;Ljava/lang/Double;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    return-void
.end method
