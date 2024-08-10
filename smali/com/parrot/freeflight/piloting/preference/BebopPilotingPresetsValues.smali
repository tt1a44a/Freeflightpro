.class public Lcom/parrot/freeflight/piloting/preference/BebopPilotingPresetsValues;
.super Ljava/lang/Object;
.source "BebopPilotingPresetsValues.java"


# instance fields
.field private mFilmPresetsPreference:Lcom/parrot/freeflight/piloting/preference/BebopFilmMakingPresetsPreference;

.field private mRacingPresetsPreference:Lcom/parrot/freeflight/piloting/preference/BebopRacingPresetsPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lcom/parrot/freeflight/piloting/preference/BebopFilmMakingPresetsPreference;

    invoke-direct {v0, p1}, Lcom/parrot/freeflight/piloting/preference/BebopFilmMakingPresetsPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/preference/BebopPilotingPresetsValues;->mFilmPresetsPreference:Lcom/parrot/freeflight/piloting/preference/BebopFilmMakingPresetsPreference;

    .line 52
    new-instance v0, Lcom/parrot/freeflight/piloting/preference/BebopRacingPresetsPreference;

    invoke-direct {v0, p1}, Lcom/parrot/freeflight/piloting/preference/BebopRacingPresetsPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/preference/BebopPilotingPresetsValues;->mRacingPresetsPreference:Lcom/parrot/freeflight/piloting/preference/BebopRacingPresetsPreference;

    .line 53
    return-void
.end method

.method public static applyValues(ILcom/parrot/freeflight/piloting/preference/BebopPilotingPresetsValues;Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;)V
    .locals 4
    .param p0, "mode"    # I
    .param p1, "values"    # Lcom/parrot/freeflight/piloting/preference/BebopPilotingPresetsValues;
    .param p2, "model"    # Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    .prologue
    .line 28
    packed-switch p0, :pswitch_data_0

    .line 31
    invoke-virtual {p1}, Lcom/parrot/freeflight/piloting/preference/BebopPilotingPresetsValues;->getFilmPresetsPreference()Lcom/parrot/freeflight/piloting/preference/BebopFilmMakingPresetsPreference;

    move-result-object v0

    .line 37
    .local v0, "prefs":Lcom/parrot/freeflight/piloting/preference/ABebopPresetsPreference;
    :goto_0
    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/preference/ABebopPresetsPreference;->getMaxTilt()F

    move-result v1

    float-to-double v2, v1

    invoke-virtual {p2, v2, v3}, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->setMaxPitch(D)V

    .line 38
    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/preference/ABebopPresetsPreference;->getMaxTiltSpeed()F

    move-result v1

    float-to-double v2, v1

    invoke-virtual {p2, v2, v3}, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->setMaxPitchSpeed(D)V

    .line 39
    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/preference/ABebopPresetsPreference;->getMaxVerticalSpeed()F

    move-result v1

    float-to-double v2, v1

    invoke-virtual {p2, v2, v3}, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->setMaxVerticalSpeed(D)V

    .line 40
    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/preference/ABebopPresetsPreference;->getMaxRotationSpeed()F

    move-result v1

    float-to-double v2, v1

    invoke-virtual {p2, v2, v3}, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->setMaxRotationSpeed(D)V

    .line 41
    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/preference/ABebopPresetsPreference;->getBankedTurn()Z

    move-result v1

    invoke-virtual {p2, v1}, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->setBankTurn(Z)V

    .line 42
    return-void

    .line 34
    .end local v0    # "prefs":Lcom/parrot/freeflight/piloting/preference/ABebopPresetsPreference;
    :pswitch_0
    invoke-virtual {p1}, Lcom/parrot/freeflight/piloting/preference/BebopPilotingPresetsValues;->getRacingPresetsPreference()Lcom/parrot/freeflight/piloting/preference/BebopRacingPresetsPreference;

    move-result-object v0

    .restart local v0    # "prefs":Lcom/parrot/freeflight/piloting/preference/ABebopPresetsPreference;
    goto :goto_0

    .line 28
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 85
    if-ne p0, p1, :cond_1

    .line 106
    :cond_0
    :goto_0
    return v1

    .line 86
    :cond_1
    instance-of v3, p1, Lcom/parrot/freeflight/piloting/preference/BebopPilotingPresetsValues;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 88
    check-cast v0, Lcom/parrot/freeflight/piloting/preference/BebopPilotingPresetsValues;

    .line 90
    .local v0, "that":Lcom/parrot/freeflight/piloting/preference/BebopPilotingPresetsValues;
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/preference/BebopPilotingPresetsValues;->mFilmPresetsPreference:Lcom/parrot/freeflight/piloting/preference/BebopFilmMakingPresetsPreference;

    if-nez v3, :cond_3

    iget-object v3, v0, Lcom/parrot/freeflight/piloting/preference/BebopPilotingPresetsValues;->mFilmPresetsPreference:Lcom/parrot/freeflight/piloting/preference/BebopFilmMakingPresetsPreference;

    if-eqz v3, :cond_0

    .line 92
    :cond_3
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/preference/BebopPilotingPresetsValues;->mFilmPresetsPreference:Lcom/parrot/freeflight/piloting/preference/BebopFilmMakingPresetsPreference;

    if-eqz v3, :cond_4

    iget-object v3, v0, Lcom/parrot/freeflight/piloting/preference/BebopPilotingPresetsValues;->mFilmPresetsPreference:Lcom/parrot/freeflight/piloting/preference/BebopFilmMakingPresetsPreference;

    if-nez v3, :cond_5

    :cond_4
    move v1, v2

    .line 93
    goto :goto_0

    .line 94
    :cond_5
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/preference/BebopPilotingPresetsValues;->mFilmPresetsPreference:Lcom/parrot/freeflight/piloting/preference/BebopFilmMakingPresetsPreference;

    iget-object v4, v0, Lcom/parrot/freeflight/piloting/preference/BebopPilotingPresetsValues;->mFilmPresetsPreference:Lcom/parrot/freeflight/piloting/preference/BebopFilmMakingPresetsPreference;

    invoke-virtual {v3, v4}, Lcom/parrot/freeflight/piloting/preference/BebopFilmMakingPresetsPreference;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    move v1, v2

    .line 95
    goto :goto_0

    .line 98
    :cond_6
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/preference/BebopPilotingPresetsValues;->mRacingPresetsPreference:Lcom/parrot/freeflight/piloting/preference/BebopRacingPresetsPreference;

    if-nez v3, :cond_7

    iget-object v3, v0, Lcom/parrot/freeflight/piloting/preference/BebopPilotingPresetsValues;->mRacingPresetsPreference:Lcom/parrot/freeflight/piloting/preference/BebopRacingPresetsPreference;

    if-eqz v3, :cond_0

    .line 100
    :cond_7
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/preference/BebopPilotingPresetsValues;->mRacingPresetsPreference:Lcom/parrot/freeflight/piloting/preference/BebopRacingPresetsPreference;

    if-eqz v3, :cond_8

    iget-object v3, v0, Lcom/parrot/freeflight/piloting/preference/BebopPilotingPresetsValues;->mRacingPresetsPreference:Lcom/parrot/freeflight/piloting/preference/BebopRacingPresetsPreference;

    if-nez v3, :cond_9

    :cond_8
    move v1, v2

    .line 101
    goto :goto_0

    .line 102
    :cond_9
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/preference/BebopPilotingPresetsValues;->mRacingPresetsPreference:Lcom/parrot/freeflight/piloting/preference/BebopRacingPresetsPreference;

    iget-object v4, v0, Lcom/parrot/freeflight/piloting/preference/BebopPilotingPresetsValues;->mRacingPresetsPreference:Lcom/parrot/freeflight/piloting/preference/BebopRacingPresetsPreference;

    invoke-virtual {v3, v4}, Lcom/parrot/freeflight/piloting/preference/BebopRacingPresetsPreference;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 103
    goto :goto_0
.end method

.method public getFilmPresetsPreference()Lcom/parrot/freeflight/piloting/preference/BebopFilmMakingPresetsPreference;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/preference/BebopPilotingPresetsValues;->mFilmPresetsPreference:Lcom/parrot/freeflight/piloting/preference/BebopFilmMakingPresetsPreference;

    return-object v0
.end method

.method public getRacingPresetsPreference()Lcom/parrot/freeflight/piloting/preference/BebopRacingPresetsPreference;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/preference/BebopPilotingPresetsValues;->mRacingPresetsPreference:Lcom/parrot/freeflight/piloting/preference/BebopRacingPresetsPreference;

    return-object v0
.end method

.method public setFilmPresetsPreference(Lcom/parrot/freeflight/piloting/preference/BebopFilmMakingPresetsPreference;)V
    .locals 0
    .param p1, "filmPresetsPreference"    # Lcom/parrot/freeflight/piloting/preference/BebopFilmMakingPresetsPreference;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/preference/BebopPilotingPresetsValues;->mFilmPresetsPreference:Lcom/parrot/freeflight/piloting/preference/BebopFilmMakingPresetsPreference;

    .line 67
    return-void
.end method

.method public setRacingPresetsPreference(Lcom/parrot/freeflight/piloting/preference/BebopRacingPresetsPreference;)V
    .locals 0
    .param p1, "racingPresetsPreference"    # Lcom/parrot/freeflight/piloting/preference/BebopRacingPresetsPreference;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/preference/BebopPilotingPresetsValues;->mRacingPresetsPreference:Lcom/parrot/freeflight/piloting/preference/BebopRacingPresetsPreference;

    .line 75
    return-void
.end method
