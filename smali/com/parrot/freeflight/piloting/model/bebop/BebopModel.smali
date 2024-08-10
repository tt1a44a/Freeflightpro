.class public Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;
.super Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;
.source "BebopModel.java"


# static fields
.field private static final FIRMWARE_DEV_MAX_VERSION:Lcom/parrot/freeflight/util/Version;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private static final FIRMWARE_FOLLOW_ME_MIN_VERSION:Lcom/parrot/freeflight/util/Version;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    new-instance v0, Lcom/parrot/freeflight/util/Version;

    const-string v1, "4.0.3"

    invoke-direct {v0, v1}, Lcom/parrot/freeflight/util/Version;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->FIRMWARE_FOLLOW_ME_MIN_VERSION:Lcom/parrot/freeflight/util/Version;

    .line 22
    new-instance v0, Lcom/parrot/freeflight/util/Version;

    const-string v1, "1.0.0"

    invoke-direct {v0, v1}, Lcom/parrot/freeflight/util/Version;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->FIRMWARE_DEV_MAX_VERSION:Lcom/parrot/freeflight/util/Version;

    return-void
.end method

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
    .line 35
    invoke-direct/range {p0 .. p5}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;-><init>(Lcom/parrot/freeflight/core/model/LocalStorage;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Lcom/parrot/freeflight/core/connection/ConnectionManager;Lcom/parrot/freeflight/location/SmartLocationManager;Lcom/parrot/freeflight/location/Barometer;)V

    .line 36
    return-void
.end method


# virtual methods
.method public getBankedTurnedPreset()Lcom/parrot/freeflight/util/ToggleState;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 89
    sget-object v0, Lcom/parrot/freeflight/piloting/model/bebop/BebopPreset;->BANKED_TURN_STATE:Lcom/parrot/freeflight/util/ToggleState;

    return-object v0
.end method

.method public getFlightPlanReturnHomePreset()Lcom/parrot/freeflight/util/ToggleState;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 95
    sget-object v0, Lcom/parrot/freeflight/piloting/model/bebop/BebopPreset;->FLIGHTPLAN_RETURN_HOME_STATE:Lcom/parrot/freeflight/util/ToggleState;

    return-object v0
.end method

.method public getHullProtectionPreset()Lcom/parrot/freeflight/util/ToggleState;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 113
    sget-object v0, Lcom/parrot/freeflight/piloting/model/bebop/BebopPreset;->HULL_PROTECTION_SET_STATE:Lcom/parrot/freeflight/util/ToggleState;

    return-object v0
.end method

.method public getMaxAltitudePreset()Lcom/parrot/freeflight/util/DoubleBoundedState;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 53
    sget-object v0, Lcom/parrot/freeflight/piloting/model/bebop/BebopPreset;->MAX_ALTITUDE_STATE:Lcom/parrot/freeflight/util/DoubleBoundedState;

    return-object v0
.end method

.method public getMaxDistancePreset()Lcom/parrot/freeflight/util/DoubleBoundedState;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 59
    sget-object v0, Lcom/parrot/freeflight/piloting/model/bebop/BebopPreset;->MAX_DISTANCE_STATE:Lcom/parrot/freeflight/util/DoubleBoundedState;

    return-object v0
.end method

.method public getMaxPitchPreset()Lcom/parrot/freeflight/util/DoubleBoundedState;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 65
    sget-object v0, Lcom/parrot/freeflight/piloting/model/bebop/BebopPreset;->MAX_PITCH_STATE:Lcom/parrot/freeflight/util/DoubleBoundedState;

    return-object v0
.end method

.method public getMaxPitchSpeedPreset()Lcom/parrot/freeflight/util/DoubleBoundedState;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 71
    sget-object v0, Lcom/parrot/freeflight/piloting/model/bebop/BebopPreset;->MAX_PITCH_SPEED_STATE:Lcom/parrot/freeflight/util/DoubleBoundedState;

    return-object v0
.end method

.method public getMaxRotationSpeedPreset()Lcom/parrot/freeflight/util/DoubleBoundedState;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 77
    sget-object v0, Lcom/parrot/freeflight/piloting/model/bebop/BebopPreset;->MAX_ROTATION_SPEED_STATE:Lcom/parrot/freeflight/util/DoubleBoundedState;

    return-object v0
.end method

.method public getMaxVerticalSpeedPreset()Lcom/parrot/freeflight/util/DoubleBoundedState;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 83
    sget-object v0, Lcom/parrot/freeflight/piloting/model/bebop/BebopPreset;->MAX_VERTICAL_SPEED_STATE:Lcom/parrot/freeflight/util/DoubleBoundedState;

    return-object v0
.end method

.method public getMotionDetectionPreset()Lcom/parrot/freeflight/util/ToggleState;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 107
    sget-object v0, Lcom/parrot/freeflight/piloting/model/bebop/BebopPreset;->MOTION_DETECTION_STATE:Lcom/parrot/freeflight/util/ToggleState;

    return-object v0
.end method

.method public getRecordingModePreset()I
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x1

    return v0
.end method

.method public getReturnHomeDelayPreset()Lcom/parrot/freeflight/util/DoubleBoundedState;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 47
    sget-object v0, Lcom/parrot/freeflight/piloting/model/bebop/BebopPreset;->RETURN_HOME_DELAY_STATE:Lcom/parrot/freeflight/util/DoubleBoundedState;

    return-object v0
.end method

.method public getRollStabilizationPreset()Lcom/parrot/freeflight/util/ToggleState;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 101
    sget-object v0, Lcom/parrot/freeflight/piloting/model/bebop/BebopPreset;->ROLL_STABILIZATION_STATE:Lcom/parrot/freeflight/util/ToggleState;

    return-object v0
.end method

.method protected isFollowMeCorrectlySupportedByFirmware()Z
    .locals 2

    .prologue
    .line 128
    sget-object v0, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->FIRMWARE_DEV_MAX_VERSION:Lcom/parrot/freeflight/util/Version;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->mSoftwareVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/util/Version;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_0

    sget-object v0, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->FIRMWARE_FOLLOW_ME_MIN_VERSION:Lcom/parrot/freeflight/util/Version;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->mSoftwareVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/util/Version;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
