.class public Lcom/parrot/freeflight/util/DoubleBoundedRecommendedState;
.super Lcom/parrot/freeflight/util/DoubleBoundedState;
.source "DoubleBoundedRecommendedState.java"


# instance fields
.field private mRecommendedValue:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/parrot/freeflight/util/DoubleBoundedState;-><init>()V

    .line 9
    const-wide v0, -0x3f3c788000000000L    # -9999.0

    iput-wide v0, p0, Lcom/parrot/freeflight/util/DoubleBoundedRecommendedState;->mRecommendedValue:D

    return-void
.end method

.method public static copyOf(Lcom/parrot/freeflight/util/DoubleBoundedRecommendedState;)Lcom/parrot/freeflight/util/DoubleBoundedRecommendedState;
    .locals 10
    .param p0, "originalState"    # Lcom/parrot/freeflight/util/DoubleBoundedRecommendedState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 33
    new-instance v1, Lcom/parrot/freeflight/util/DoubleBoundedRecommendedState;

    invoke-direct {v1}, Lcom/parrot/freeflight/util/DoubleBoundedRecommendedState;-><init>()V

    .line 34
    .local v1, "boundedState":Lcom/parrot/freeflight/util/DoubleBoundedRecommendedState;
    invoke-virtual {p0}, Lcom/parrot/freeflight/util/DoubleBoundedRecommendedState;->getCurrentValue()D

    move-result-wide v2

    iget-wide v4, p0, Lcom/parrot/freeflight/util/DoubleBoundedRecommendedState;->mRecommendedValue:D

    invoke-virtual {p0}, Lcom/parrot/freeflight/util/DoubleBoundedRecommendedState;->getMaxBound()D

    move-result-wide v6

    invoke-virtual {p0}, Lcom/parrot/freeflight/util/DoubleBoundedRecommendedState;->getMinBound()D

    move-result-wide v8

    invoke-virtual/range {v1 .. v9}, Lcom/parrot/freeflight/util/DoubleBoundedRecommendedState;->updateState(DDDD)Z

    .line 35
    return-object v1
.end method

.method public static createFromBoundedState(Lcom/parrot/freeflight/util/DoubleBoundedState;D)Lcom/parrot/freeflight/util/DoubleBoundedRecommendedState;
    .locals 11
    .param p0, "state"    # Lcom/parrot/freeflight/util/DoubleBoundedState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "recommendedValue"    # D
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 26
    new-instance v1, Lcom/parrot/freeflight/util/DoubleBoundedRecommendedState;

    invoke-direct {v1}, Lcom/parrot/freeflight/util/DoubleBoundedRecommendedState;-><init>()V

    .line 27
    .local v1, "boundedState":Lcom/parrot/freeflight/util/DoubleBoundedRecommendedState;
    invoke-virtual {p0}, Lcom/parrot/freeflight/util/DoubleBoundedState;->getCurrentValue()D

    move-result-wide v2

    invoke-virtual {p0}, Lcom/parrot/freeflight/util/DoubleBoundedState;->getMaxBound()D

    move-result-wide v6

    invoke-virtual {p0}, Lcom/parrot/freeflight/util/DoubleBoundedState;->getMinBound()D

    move-result-wide v8

    move-wide v4, p1

    invoke-virtual/range {v1 .. v9}, Lcom/parrot/freeflight/util/DoubleBoundedRecommendedState;->updateState(DDDD)Z

    .line 28
    return-object v1
.end method

.method public static createFromValue(DDDD)Lcom/parrot/freeflight/util/DoubleBoundedRecommendedState;
    .locals 10
    .param p0, "minBound"    # D
    .param p2, "currentValue"    # D
    .param p4, "maxBound"    # D
    .param p6, "recommendedValue"    # D
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 19
    new-instance v1, Lcom/parrot/freeflight/util/DoubleBoundedRecommendedState;

    invoke-direct {v1}, Lcom/parrot/freeflight/util/DoubleBoundedRecommendedState;-><init>()V

    .local v1, "boundedState":Lcom/parrot/freeflight/util/DoubleBoundedRecommendedState;
    move-wide v2, p2

    move-wide/from16 v4, p6

    move-wide v6, p4

    move-wide v8, p0

    .line 20
    invoke-virtual/range {v1 .. v9}, Lcom/parrot/freeflight/util/DoubleBoundedRecommendedState;->updateState(DDDD)Z

    .line 21
    return-object v1
.end method


# virtual methods
.method public getRecommendedValue()D
    .locals 2

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/parrot/freeflight/util/DoubleBoundedRecommendedState;->mRecommendedValue:D

    return-wide v0
.end method

.method public setRecommendedValue(D)V
    .locals 1
    .param p1, "recommendedValue"    # D

    .prologue
    .line 68
    iput-wide p1, p0, Lcom/parrot/freeflight/util/DoubleBoundedRecommendedState;->mRecommendedValue:D

    .line 69
    return-void
.end method

.method public update(DDDDZ)Z
    .locals 3
    .param p1, "currentValue"    # D
    .param p3, "recommendedValue"    # D
    .param p5, "maxBound"    # D
    .param p7, "minBound"    # D
    .param p9, "settingEnabled"    # Z

    .prologue
    .line 45
    invoke-virtual/range {p0 .. p8}, Lcom/parrot/freeflight/util/DoubleBoundedRecommendedState;->updateState(DDDD)Z

    move-result v1

    .line 46
    .local v1, "isStateUpdated":Z
    invoke-virtual {p0, p9}, Lcom/parrot/freeflight/util/DoubleBoundedRecommendedState;->updateAvailability(Z)Z

    move-result v0

    .line 47
    .local v0, "isAvaibilityUpdated":Z
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public update(Lcom/parrot/freeflight/util/DoubleBoundedRecommendedState;)Z
    .locals 11
    .param p1, "state"    # Lcom/parrot/freeflight/util/DoubleBoundedRecommendedState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 51
    invoke-virtual {p1}, Lcom/parrot/freeflight/util/DoubleBoundedRecommendedState;->getCurrentValue()D

    move-result-wide v2

    iget-wide v4, p1, Lcom/parrot/freeflight/util/DoubleBoundedRecommendedState;->mRecommendedValue:D

    invoke-virtual {p1}, Lcom/parrot/freeflight/util/DoubleBoundedRecommendedState;->getMaxBound()D

    move-result-wide v6

    invoke-virtual {p1}, Lcom/parrot/freeflight/util/DoubleBoundedRecommendedState;->getMinBound()D

    move-result-wide v8

    invoke-virtual {p1}, Lcom/parrot/freeflight/util/DoubleBoundedRecommendedState;->isSettingEnabled()Z

    move-result v10

    move-object v1, p0

    invoke-virtual/range {v1 .. v10}, Lcom/parrot/freeflight/util/DoubleBoundedRecommendedState;->update(DDDDZ)Z

    move-result v0

    return v0
.end method

.method public updateState(DDDD)Z
    .locals 9
    .param p1, "currentValue"    # D
    .param p3, "recommendedValue"    # D
    .param p5, "maxBound"    # D
    .param p7, "minBound"    # D

    .prologue
    .line 55
    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p5

    move-wide/from16 v6, p7

    invoke-super/range {v1 .. v7}, Lcom/parrot/freeflight/util/DoubleBoundedState;->updateState(DDD)Z

    move-result v0

    .line 56
    .local v0, "updated":Z
    iget-wide v2, p0, Lcom/parrot/freeflight/util/DoubleBoundedRecommendedState;->mRecommendedValue:D

    cmpl-double v1, v2, p3

    if-eqz v1, :cond_0

    .line 57
    const/4 v0, 0x1

    .line 58
    iput-wide p3, p0, Lcom/parrot/freeflight/util/DoubleBoundedRecommendedState;->mRecommendedValue:D

    .line 60
    :cond_0
    return v0
.end method
