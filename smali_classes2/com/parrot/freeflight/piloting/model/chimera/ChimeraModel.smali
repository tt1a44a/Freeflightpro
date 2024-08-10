.class public Lcom/parrot/freeflight/piloting/model/chimera/ChimeraModel;
.super Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;
.source "ChimeraModel.java"


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/core/model/LocalStorage;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Lcom/parrot/freeflight/core/connection/ConnectionManager;Lcom/parrot/freeflight/location/SmartLocationManager;Lcom/parrot/freeflight/location/Barometer;)V
    .locals 0
    .param p1, "localStorage"    # Lcom/parrot/freeflight/core/model/LocalStorage;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "connectionManager"    # Lcom/parrot/freeflight/core/connection/ConnectionManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "smartLocationManager"    # Lcom/parrot/freeflight/location/SmartLocationManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "barometer"    # Lcom/parrot/freeflight/location/Barometer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 27
    invoke-direct/range {p0 .. p5}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;-><init>(Lcom/parrot/freeflight/core/model/LocalStorage;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Lcom/parrot/freeflight/core/connection/ConnectionManager;Lcom/parrot/freeflight/location/SmartLocationManager;Lcom/parrot/freeflight/location/Barometer;)V

    .line 28
    return-void
.end method


# virtual methods
.method public getBankedTurnedPreset()Lcom/parrot/freeflight/util/ToggleState;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 81
    sget-object v0, Lcom/parrot/freeflight/piloting/model/chimera/ChimeraPreset;->BANKED_TURN_STATE:Lcom/parrot/freeflight/util/ToggleState;

    return-object v0
.end method

.method public getFlightPlanReturnHomePreset()Lcom/parrot/freeflight/util/ToggleState;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 87
    sget-object v0, Lcom/parrot/freeflight/piloting/model/chimera/ChimeraPreset;->FLIGHTPLAN_RETURN_HOME_STATE:Lcom/parrot/freeflight/util/ToggleState;

    return-object v0
.end method

.method public getHullProtectionPreset()Lcom/parrot/freeflight/util/ToggleState;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 105
    sget-object v0, Lcom/parrot/freeflight/piloting/model/chimera/ChimeraPreset;->HULL_PROTECTION_SET_STATE:Lcom/parrot/freeflight/util/ToggleState;

    return-object v0
.end method

.method public getMaxAltitudePreset()Lcom/parrot/freeflight/util/DoubleBoundedState;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 45
    sget-object v0, Lcom/parrot/freeflight/piloting/model/chimera/ChimeraPreset;->MAX_ALTITUDE_STATE:Lcom/parrot/freeflight/util/DoubleBoundedState;

    return-object v0
.end method

.method public getMaxDistancePreset()Lcom/parrot/freeflight/util/DoubleBoundedState;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 51
    sget-object v0, Lcom/parrot/freeflight/piloting/model/chimera/ChimeraPreset;->MAX_DISTANCE_STATE:Lcom/parrot/freeflight/util/DoubleBoundedState;

    return-object v0
.end method

.method public getMaxPitchPreset()Lcom/parrot/freeflight/util/DoubleBoundedState;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 57
    sget-object v0, Lcom/parrot/freeflight/piloting/model/chimera/ChimeraPreset;->MAX_PITCH_STATE:Lcom/parrot/freeflight/util/DoubleBoundedState;

    return-object v0
.end method

.method public getMaxPitchSpeedPreset()Lcom/parrot/freeflight/util/DoubleBoundedState;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 63
    sget-object v0, Lcom/parrot/freeflight/piloting/model/chimera/ChimeraPreset;->MAX_PITCH_SPEED_STATE:Lcom/parrot/freeflight/util/DoubleBoundedState;

    return-object v0
.end method

.method public getMaxRotationSpeedPreset()Lcom/parrot/freeflight/util/DoubleBoundedState;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 69
    sget-object v0, Lcom/parrot/freeflight/piloting/model/chimera/ChimeraPreset;->MAX_ROTATION_SPEED_STATE:Lcom/parrot/freeflight/util/DoubleBoundedState;

    return-object v0
.end method

.method public getMaxVerticalSpeedPreset()Lcom/parrot/freeflight/util/DoubleBoundedState;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 75
    sget-object v0, Lcom/parrot/freeflight/piloting/model/chimera/ChimeraPreset;->MAX_VERTICAL_SPEED_STATE:Lcom/parrot/freeflight/util/DoubleBoundedState;

    return-object v0
.end method

.method public getMotionDetectionPreset()Lcom/parrot/freeflight/util/ToggleState;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 99
    sget-object v0, Lcom/parrot/freeflight/piloting/model/chimera/ChimeraPreset;->MOTION_DETECTION_STATE:Lcom/parrot/freeflight/util/ToggleState;

    return-object v0
.end method

.method public getRecordingModePreset()I
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x1

    return v0
.end method

.method public getReturnHomeDelayPreset()Lcom/parrot/freeflight/util/DoubleBoundedState;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 39
    sget-object v0, Lcom/parrot/freeflight/piloting/model/chimera/ChimeraPreset;->RETURN_HOME_DELAY_STATE:Lcom/parrot/freeflight/util/DoubleBoundedState;

    return-object v0
.end method

.method public getRollStabilizationPreset()Lcom/parrot/freeflight/util/ToggleState;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 93
    sget-object v0, Lcom/parrot/freeflight/piloting/model/chimera/ChimeraPreset;->ROLL_STABILIZATION_STATE:Lcom/parrot/freeflight/util/ToggleState;

    return-object v0
.end method

.method protected isFollowMeCorrectlySupportedByFirmware()Z
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    return v0
.end method
