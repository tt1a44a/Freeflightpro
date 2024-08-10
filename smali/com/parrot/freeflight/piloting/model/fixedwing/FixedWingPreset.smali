.class public Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingPreset;
.super Ljava/lang/Object;
.source "FixedWingPreset.java"


# static fields
.field public static final CIRCLING_ALTITUDE_STATE:Lcom/parrot/freeflight/util/DoubleBoundedState;

.field public static final CIRCLING_DIRECTION_STATE:Lcom/parrot/freeflight/piloting/ui/util/CirclingDirectionState;

.field public static final CIRCLING_RADIUS_STATE:Lcom/parrot/freeflight/util/DoubleBoundedState;

.field public static final FLIGHTPLAN_RETURN_HOME_STATE:Lcom/parrot/freeflight/util/ToggleState;

.field public static final LANDING_MODE:I

.field public static final MAX_ALTITUDE_STATE:Lcom/parrot/freeflight/util/DoubleBoundedState;

.field public static final MAX_DISTANCE_STATE:Lcom/parrot/freeflight/util/DoubleBoundedState;

.field public static final MAX_PITCH_STATE:Lcom/parrot/freeflight/util/DoubleBoundedState;

.field public static final MIN_ALTITUDE_STATE:Lcom/parrot/freeflight/util/DoubleBoundedState;

.field public static final PITCH_MODE_STATE:Lcom/parrot/freeflight/piloting/ui/util/PitchModeState;

.field public static final RECORDING_MODE:I

.field public static final RETURN_HOME_DELAY_STATE:Lcom/parrot/freeflight/util/DoubleBoundedState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 15
    const-wide/16 v0, 0x0

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    const-wide/high16 v4, 0x405e000000000000L    # 120.0

    invoke-static/range {v0 .. v5}, Lcom/parrot/freeflight/util/DoubleBoundedState;->createFromValue(DDD)Lcom/parrot/freeflight/util/DoubleBoundedState;

    move-result-object v0

    sput-object v0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingPreset;->RETURN_HOME_DELAY_STATE:Lcom/parrot/freeflight/util/DoubleBoundedState;

    .line 16
    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    const-wide/high16 v4, 0x4049000000000000L    # 50.0

    invoke-static/range {v0 .. v5}, Lcom/parrot/freeflight/util/DoubleBoundedState;->createFromValue(DDD)Lcom/parrot/freeflight/util/DoubleBoundedState;

    move-result-object v0

    sput-object v0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingPreset;->MIN_ALTITUDE_STATE:Lcom/parrot/freeflight/util/DoubleBoundedState;

    .line 17
    const-wide/high16 v0, 0x4049000000000000L    # 50.0

    const-wide v2, 0x4062c00000000000L    # 150.0

    const-wide v4, 0x4062c00000000000L    # 150.0

    invoke-static/range {v0 .. v5}, Lcom/parrot/freeflight/util/DoubleBoundedState;->createFromValue(DDD)Lcom/parrot/freeflight/util/DoubleBoundedState;

    move-result-object v0

    sput-object v0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingPreset;->MAX_ALTITUDE_STATE:Lcom/parrot/freeflight/util/DoubleBoundedState;

    .line 18
    const-wide/high16 v0, 0x4069000000000000L    # 200.0

    const-wide v2, 0x409f400000000000L    # 2000.0

    const-wide v4, 0x409f400000000000L    # 2000.0

    invoke-static/range {v0 .. v5}, Lcom/parrot/freeflight/util/DoubleBoundedState;->createFromValue(DDD)Lcom/parrot/freeflight/util/DoubleBoundedState;

    move-result-object v0

    sput-object v0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingPreset;->MAX_DISTANCE_STATE:Lcom/parrot/freeflight/util/DoubleBoundedState;

    .line 19
    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    const-wide v4, 0x4041800000000000L    # 35.0

    invoke-static/range {v0 .. v5}, Lcom/parrot/freeflight/util/DoubleBoundedState;->createFromValue(DDD)Lcom/parrot/freeflight/util/DoubleBoundedState;

    move-result-object v0

    sput-object v0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingPreset;->MAX_PITCH_STATE:Lcom/parrot/freeflight/util/DoubleBoundedState;

    .line 20
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/util/PitchModeState;->createFromValue(I)Lcom/parrot/freeflight/piloting/ui/util/PitchModeState;

    move-result-object v0

    sput-object v0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingPreset;->PITCH_MODE_STATE:Lcom/parrot/freeflight/piloting/ui/util/PitchModeState;

    .line 21
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/util/CirclingDirectionState;->createFromValue(I)Lcom/parrot/freeflight/piloting/ui/util/CirclingDirectionState;

    move-result-object v0

    sput-object v0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingPreset;->CIRCLING_DIRECTION_STATE:Lcom/parrot/freeflight/piloting/ui/util/CirclingDirectionState;

    .line 22
    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    const-wide/high16 v2, 0x403e000000000000L    # 30.0

    const-wide/high16 v4, 0x404e000000000000L    # 60.0

    invoke-static/range {v0 .. v5}, Lcom/parrot/freeflight/util/DoubleBoundedState;->createFromValue(DDD)Lcom/parrot/freeflight/util/DoubleBoundedState;

    move-result-object v0

    sput-object v0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingPreset;->CIRCLING_RADIUS_STATE:Lcom/parrot/freeflight/util/DoubleBoundedState;

    .line 23
    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    const-wide/high16 v2, 0x4049000000000000L    # 50.0

    const-wide v4, 0x4062c00000000000L    # 150.0

    invoke-static/range {v0 .. v5}, Lcom/parrot/freeflight/util/DoubleBoundedState;->createFromValue(DDD)Lcom/parrot/freeflight/util/DoubleBoundedState;

    move-result-object v0

    sput-object v0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingPreset;->CIRCLING_ALTITUDE_STATE:Lcom/parrot/freeflight/util/DoubleBoundedState;

    .line 24
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/util/ToggleState;->createFromValue(ZZ)Lcom/parrot/freeflight/util/ToggleState;

    move-result-object v0

    sput-object v0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingPreset;->FLIGHTPLAN_RETURN_HOME_STATE:Lcom/parrot/freeflight/util/ToggleState;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
