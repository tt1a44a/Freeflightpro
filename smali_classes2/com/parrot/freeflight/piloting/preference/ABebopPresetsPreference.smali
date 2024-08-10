.class public abstract Lcom/parrot/freeflight/piloting/preference/ABebopPresetsPreference;
.super Lcom/parrot/freeflight/piloting/preference/APresetsPreference;
.source "ABebopPresetsPreference.java"


# static fields
.field private static final PREFS_BANKED_TURN:Ljava/lang/String; = "PREFS_BANKED_TURN"

.field private static final PREFS_MAX_ROTATION_SPEED:Ljava/lang/String; = "PREFS_MAX_ROTATION_SPEED"

.field private static final PREFS_MAX_TILT:Ljava/lang/String; = "PREFS_MAX_TILT"

.field private static final PREFS_MAX_TILT_SPEED:Ljava/lang/String; = "PREFS_MAX_TILT_SPEED"

.field private static final PREFS_MAX_VERTICAL_SPEED:Ljava/lang/String; = "PREFS_MAX_VERTICAL_SPEED"


# instance fields
.field private mBankedTurn:Z

.field private mMaxRotationSpeed:F

.field private mMaxTilt:F

.field private mMaxTiltSpeed:F

.field private mMaxVerticalSpeed:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/piloting/preference/APresetsPreference;-><init>(Landroid/content/Context;)V

    .line 38
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/preference/ABebopPresetsPreference;->update()V

    .line 39
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 154
    if-ne p0, p1, :cond_1

    move v2, v1

    .line 163
    :cond_0
    :goto_0
    return v2

    .line 155
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v3, v4, :cond_0

    move-object v0, p1

    .line 157
    check-cast v0, Lcom/parrot/freeflight/piloting/preference/ABebopPresetsPreference;

    .line 159
    .local v0, "that":Lcom/parrot/freeflight/piloting/preference/ABebopPresetsPreference;
    iget v3, v0, Lcom/parrot/freeflight/piloting/preference/ABebopPresetsPreference;->mMaxTilt:F

    iget v4, p0, Lcom/parrot/freeflight/piloting/preference/ABebopPresetsPreference;->mMaxTilt:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_0

    .line 160
    iget v3, v0, Lcom/parrot/freeflight/piloting/preference/ABebopPresetsPreference;->mMaxTiltSpeed:F

    iget v4, p0, Lcom/parrot/freeflight/piloting/preference/ABebopPresetsPreference;->mMaxTiltSpeed:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_0

    .line 161
    iget v3, v0, Lcom/parrot/freeflight/piloting/preference/ABebopPresetsPreference;->mMaxVerticalSpeed:F

    iget v4, p0, Lcom/parrot/freeflight/piloting/preference/ABebopPresetsPreference;->mMaxVerticalSpeed:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_0

    .line 162
    iget v3, v0, Lcom/parrot/freeflight/piloting/preference/ABebopPresetsPreference;->mMaxRotationSpeed:F

    iget v4, p0, Lcom/parrot/freeflight/piloting/preference/ABebopPresetsPreference;->mMaxRotationSpeed:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_0

    .line 163
    iget-boolean v3, p0, Lcom/parrot/freeflight/piloting/preference/ABebopPresetsPreference;->mBankedTurn:Z

    iget-boolean v4, v0, Lcom/parrot/freeflight/piloting/preference/ABebopPresetsPreference;->mBankedTurn:Z

    if-ne v3, v4, :cond_2

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method public getBankedTurn()Z
    .locals 1

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/preference/ABebopPresetsPreference;->mBankedTurn:Z

    return v0
.end method

.method public abstract getDefaultBankedTurn()Z
.end method

.method public abstract getDefaultMaxRotationSpeed()I
.end method

.method public abstract getDefaultMaxTilt()I
.end method

.method public abstract getDefaultMaxTiltSpeed()I
.end method

.method public abstract getDefaultMaxVerticalSpeed()I
.end method

.method public getMaxRotationSpeed()F
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/parrot/freeflight/piloting/preference/ABebopPresetsPreference;->mMaxRotationSpeed:F

    return v0
.end method

.method public getMaxRotationSpeedData(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;)Lcom/parrot/freeflight/util/DoubleBoundedRecommendedState;
    .locals 4
    .param p1, "model"    # Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 143
    invoke-virtual {p1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->getMaxRotationSpeedState()Lcom/parrot/freeflight/util/DoubleBoundedState;

    move-result-object v0

    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/preference/ABebopPresetsPreference;->getRecommendedMaxRotationSpeed()I

    move-result v1

    int-to-double v2, v1

    invoke-static {v0, v2, v3}, Lcom/parrot/freeflight/util/DoubleBoundedRecommendedState;->createFromBoundedState(Lcom/parrot/freeflight/util/DoubleBoundedState;D)Lcom/parrot/freeflight/util/DoubleBoundedRecommendedState;

    move-result-object v0

    return-object v0
.end method

.method public getMaxTilt()F
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/parrot/freeflight/piloting/preference/ABebopPresetsPreference;->mMaxTilt:F

    return v0
.end method

.method public getMaxTiltData(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;)Lcom/parrot/freeflight/util/DoubleBoundedRecommendedState;
    .locals 4
    .param p1, "model"    # Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 131
    invoke-virtual {p1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->getMaxPitchState()Lcom/parrot/freeflight/util/DoubleBoundedState;

    move-result-object v0

    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/preference/ABebopPresetsPreference;->getRecommendedMaxTilt()I

    move-result v1

    int-to-double v2, v1

    invoke-static {v0, v2, v3}, Lcom/parrot/freeflight/util/DoubleBoundedRecommendedState;->createFromBoundedState(Lcom/parrot/freeflight/util/DoubleBoundedState;D)Lcom/parrot/freeflight/util/DoubleBoundedRecommendedState;

    move-result-object v0

    return-object v0
.end method

.method public getMaxTiltSpeed()F
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/parrot/freeflight/piloting/preference/ABebopPresetsPreference;->mMaxTiltSpeed:F

    return v0
.end method

.method public getMaxTiltSpeedData(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;)Lcom/parrot/freeflight/util/DoubleBoundedRecommendedState;
    .locals 4
    .param p1, "model"    # Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 135
    invoke-virtual {p1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->getMaxPitchSpeedState()Lcom/parrot/freeflight/util/DoubleBoundedState;

    move-result-object v0

    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/preference/ABebopPresetsPreference;->getRecommendedMaxTiltSpeed()I

    move-result v1

    int-to-double v2, v1

    invoke-static {v0, v2, v3}, Lcom/parrot/freeflight/util/DoubleBoundedRecommendedState;->createFromBoundedState(Lcom/parrot/freeflight/util/DoubleBoundedState;D)Lcom/parrot/freeflight/util/DoubleBoundedRecommendedState;

    move-result-object v0

    return-object v0
.end method

.method public getMaxVerticalSpeed()F
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/parrot/freeflight/piloting/preference/ABebopPresetsPreference;->mMaxVerticalSpeed:F

    return v0
.end method

.method public getMaxVerticalSpeedData(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;)Lcom/parrot/freeflight/util/DoubleBoundedRecommendedState;
    .locals 4
    .param p1, "model"    # Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 139
    invoke-virtual {p1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->getMaxVerticalSpeedState()Lcom/parrot/freeflight/util/DoubleBoundedState;

    move-result-object v0

    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/preference/ABebopPresetsPreference;->getRecommendedMaxVerticalSpeed()I

    move-result v1

    int-to-double v2, v1

    invoke-static {v0, v2, v3}, Lcom/parrot/freeflight/util/DoubleBoundedRecommendedState;->createFromBoundedState(Lcom/parrot/freeflight/util/DoubleBoundedState;D)Lcom/parrot/freeflight/util/DoubleBoundedRecommendedState;

    move-result-object v0

    return-object v0
.end method

.method public abstract getRecommendedMaxRotationSpeed()I
.end method

.method public abstract getRecommendedMaxTilt()I
.end method

.method public abstract getRecommendedMaxTiltSpeed()I
.end method

.method public abstract getRecommendedMaxVerticalSpeed()I
.end method

.method public onPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)Z
    .locals 1
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 65
    const-string v0, "PREFS_MAX_TILT"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "PREFS_MAX_TILT_SPEED"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "PREFS_MAX_VERTICAL_SPEED"

    .line 66
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "PREFS_MAX_ROTATION_SPEED"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "PREFS_BANKED_TURN"

    .line 67
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    :cond_0
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/preference/ABebopPresetsPreference;->update()V

    .line 69
    const/4 v0, 0x1

    .line 71
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/preference/ABebopPresetsPreference;->getDefaultMaxTilt()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/piloting/preference/ABebopPresetsPreference;->setMaxTilt(F)V

    .line 57
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/preference/ABebopPresetsPreference;->getDefaultMaxTiltSpeed()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/piloting/preference/ABebopPresetsPreference;->setMaxTiltSpeed(F)V

    .line 58
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/preference/ABebopPresetsPreference;->getDefaultMaxVerticalSpeed()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/piloting/preference/ABebopPresetsPreference;->setMaxVerticalSpeed(F)V

    .line 59
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/preference/ABebopPresetsPreference;->getDefaultMaxRotationSpeed()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/piloting/preference/ABebopPresetsPreference;->setMaxRotationSpeed(F)V

    .line 60
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/preference/ABebopPresetsPreference;->getDefaultBankedTurn()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/piloting/preference/ABebopPresetsPreference;->setBankedTurn(Z)V

    .line 61
    return-void
.end method

.method public setBankedTurn(Z)V
    .locals 2
    .param p1, "bankedTurn"    # Z

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/preference/ABebopPresetsPreference;->mBankedTurn:Z

    if-eq v0, p1, :cond_0

    .line 126
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/preference/ABebopPresetsPreference;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "PREFS_BANKED_TURN"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 128
    :cond_0
    return-void
.end method

.method public setMaxRotationSpeed(F)V
    .locals 2
    .param p1, "maxRotationSpeed"    # F

    .prologue
    .line 115
    iget v0, p0, Lcom/parrot/freeflight/piloting/preference/ABebopPresetsPreference;->mMaxRotationSpeed:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/preference/ABebopPresetsPreference;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "PREFS_MAX_ROTATION_SPEED"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 118
    :cond_0
    return-void
.end method

.method public setMaxTilt(F)V
    .locals 2
    .param p1, "maxTilt"    # F

    .prologue
    .line 85
    iget v0, p0, Lcom/parrot/freeflight/piloting/preference/ABebopPresetsPreference;->mMaxTilt:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/preference/ABebopPresetsPreference;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "PREFS_MAX_TILT"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 88
    :cond_0
    return-void
.end method

.method public setMaxTiltSpeed(F)V
    .locals 2
    .param p1, "maxTiltSpeed"    # F

    .prologue
    .line 95
    iget v0, p0, Lcom/parrot/freeflight/piloting/preference/ABebopPresetsPreference;->mMaxTiltSpeed:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/preference/ABebopPresetsPreference;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "PREFS_MAX_TILT_SPEED"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 98
    :cond_0
    return-void
.end method

.method public setMaxVerticalSpeed(F)V
    .locals 2
    .param p1, "maxVerticalSpeed"    # F

    .prologue
    .line 105
    iget v0, p0, Lcom/parrot/freeflight/piloting/preference/ABebopPresetsPreference;->mMaxVerticalSpeed:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/preference/ABebopPresetsPreference;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "PREFS_MAX_VERTICAL_SPEED"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 108
    :cond_0
    return-void
.end method

.method public update()V
    .locals 3

    .prologue
    .line 48
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/preference/ABebopPresetsPreference;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "PREFS_MAX_TILT"

    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/preference/ABebopPresetsPreference;->getDefaultMaxTilt()I

    move-result v2

    int-to-float v2, v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/piloting/preference/ABebopPresetsPreference;->mMaxTilt:F

    .line 49
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/preference/ABebopPresetsPreference;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "PREFS_MAX_TILT_SPEED"

    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/preference/ABebopPresetsPreference;->getDefaultMaxTiltSpeed()I

    move-result v2

    int-to-float v2, v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/piloting/preference/ABebopPresetsPreference;->mMaxTiltSpeed:F

    .line 50
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/preference/ABebopPresetsPreference;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "PREFS_MAX_VERTICAL_SPEED"

    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/preference/ABebopPresetsPreference;->getDefaultMaxVerticalSpeed()I

    move-result v2

    int-to-float v2, v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/piloting/preference/ABebopPresetsPreference;->mMaxVerticalSpeed:F

    .line 51
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/preference/ABebopPresetsPreference;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "PREFS_MAX_ROTATION_SPEED"

    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/preference/ABebopPresetsPreference;->getDefaultMaxRotationSpeed()I

    move-result v2

    int-to-float v2, v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/piloting/preference/ABebopPresetsPreference;->mMaxRotationSpeed:F

    .line 52
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/preference/ABebopPresetsPreference;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "PREFS_BANKED_TURN"

    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/preference/ABebopPresetsPreference;->getDefaultBankedTurn()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/parrot/freeflight/piloting/preference/ABebopPresetsPreference;->mBankedTurn:Z

    .line 53
    return-void
.end method
