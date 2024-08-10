.class public Lcom/parrot/freeflight/piloting/model/bebop/BebopPreset;
.super Ljava/lang/Object;
.source "BebopPreset.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/piloting/model/bebop/BebopPreset$PresetMode;,
        Lcom/parrot/freeflight/piloting/model/bebop/BebopPreset$Racing;,
        Lcom/parrot/freeflight/piloting/model/bebop/BebopPreset$Film;
    }
.end annotation


# static fields
.field public static final BANKED_TURN_STATE:Lcom/parrot/freeflight/util/ToggleState;

.field public static final FLIGHTPLAN_RETURN_HOME_STATE:Lcom/parrot/freeflight/util/ToggleState;

.field public static final HULL_PROTECTION_SET_STATE:Lcom/parrot/freeflight/util/ToggleState;

.field public static final MAX_ALTITUDE_STATE:Lcom/parrot/freeflight/util/DoubleBoundedState;

.field public static final MAX_DISTANCE_STATE:Lcom/parrot/freeflight/util/DoubleBoundedState;

.field public static final MAX_PITCH_SPEED_STATE:Lcom/parrot/freeflight/util/DoubleBoundedState;

.field public static final MAX_PITCH_STATE:Lcom/parrot/freeflight/util/DoubleBoundedState;

.field public static final MAX_ROTATION_SPEED_STATE:Lcom/parrot/freeflight/util/DoubleBoundedState;

.field public static final MAX_VERTICAL_SPEED_STATE:Lcom/parrot/freeflight/util/DoubleBoundedState;

.field public static final MOTION_DETECTION_STATE:Lcom/parrot/freeflight/util/ToggleState;

.field public static final NO_VALUE:I = -0x270f

.field public static final RECORDING_MODE:I = 0x1

.field public static final RETURN_HOME_DELAY_STATE:Lcom/parrot/freeflight/util/DoubleBoundedState;

.field public static final ROLL_STABILIZATION_STATE:Lcom/parrot/freeflight/util/ToggleState;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .prologue
    const-wide/high16 v14, 0x4054000000000000L    # 80.0

    const-wide/high16 v12, 0x4024000000000000L    # 10.0

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 13
    const-wide/16 v0, 0x0

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    const-wide/high16 v4, 0x405e000000000000L    # 120.0

    invoke-static/range {v0 .. v5}, Lcom/parrot/freeflight/util/DoubleBoundedState;->createFromValue(DDD)Lcom/parrot/freeflight/util/DoubleBoundedState;

    move-result-object v0

    sput-object v0, Lcom/parrot/freeflight/piloting/model/bebop/BebopPreset;->RETURN_HOME_DELAY_STATE:Lcom/parrot/freeflight/util/DoubleBoundedState;

    .line 14
    const-wide/high16 v4, 0x403e000000000000L    # 30.0

    const-wide v6, 0x4062c00000000000L    # 150.0

    move-wide v2, v10

    invoke-static/range {v2 .. v7}, Lcom/parrot/freeflight/util/DoubleBoundedState;->createFromValue(DDD)Lcom/parrot/freeflight/util/DoubleBoundedState;

    move-result-object v0

    sput-object v0, Lcom/parrot/freeflight/piloting/model/bebop/BebopPreset;->MAX_ALTITUDE_STATE:Lcom/parrot/freeflight/util/DoubleBoundedState;

    .line 15
    const-wide v4, 0x409f400000000000L    # 2000.0

    const-wide v6, 0x409f400000000000L    # 2000.0

    move-wide v2, v12

    invoke-static/range {v2 .. v7}, Lcom/parrot/freeflight/util/DoubleBoundedState;->createFromValue(DDD)Lcom/parrot/freeflight/util/DoubleBoundedState;

    move-result-object v0

    sput-object v0, Lcom/parrot/freeflight/piloting/model/bebop/BebopPreset;->MAX_DISTANCE_STATE:Lcom/parrot/freeflight/util/DoubleBoundedState;

    .line 16
    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    const-wide/high16 v2, 0x4020000000000000L    # 8.0

    const-wide v4, 0x4041800000000000L    # 35.0

    invoke-static/range {v0 .. v5}, Lcom/parrot/freeflight/util/DoubleBoundedState;->createFromValue(DDD)Lcom/parrot/freeflight/util/DoubleBoundedState;

    move-result-object v0

    sput-object v0, Lcom/parrot/freeflight/piloting/model/bebop/BebopPreset;->MAX_PITCH_STATE:Lcom/parrot/freeflight/util/DoubleBoundedState;

    .line 17
    const-wide v6, 0x4072c00000000000L    # 300.0

    move-wide v2, v14

    move-wide v4, v14

    invoke-static/range {v2 .. v7}, Lcom/parrot/freeflight/util/DoubleBoundedState;->createFromValue(DDD)Lcom/parrot/freeflight/util/DoubleBoundedState;

    move-result-object v0

    sput-object v0, Lcom/parrot/freeflight/piloting/model/bebop/BebopPreset;->MAX_PITCH_SPEED_STATE:Lcom/parrot/freeflight/util/DoubleBoundedState;

    .line 18
    const-wide/high16 v4, 0x402a000000000000L    # 13.0

    const-wide/high16 v6, 0x4069000000000000L    # 200.0

    move-wide v2, v12

    invoke-static/range {v2 .. v7}, Lcom/parrot/freeflight/util/DoubleBoundedState;->createFromValue(DDD)Lcom/parrot/freeflight/util/DoubleBoundedState;

    move-result-object v0

    sput-object v0, Lcom/parrot/freeflight/piloting/model/bebop/BebopPreset;->MAX_ROTATION_SPEED_STATE:Lcom/parrot/freeflight/util/DoubleBoundedState;

    .line 19
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v6, 0x4018000000000000L    # 6.0

    move-wide v2, v10

    invoke-static/range {v2 .. v7}, Lcom/parrot/freeflight/util/DoubleBoundedState;->createFromValue(DDD)Lcom/parrot/freeflight/util/DoubleBoundedState;

    move-result-object v0

    sput-object v0, Lcom/parrot/freeflight/piloting/model/bebop/BebopPreset;->MAX_VERTICAL_SPEED_STATE:Lcom/parrot/freeflight/util/DoubleBoundedState;

    .line 20
    invoke-static {v8, v8}, Lcom/parrot/freeflight/util/ToggleState;->createFromValue(ZZ)Lcom/parrot/freeflight/util/ToggleState;

    move-result-object v0

    sput-object v0, Lcom/parrot/freeflight/piloting/model/bebop/BebopPreset;->BANKED_TURN_STATE:Lcom/parrot/freeflight/util/ToggleState;

    .line 21
    invoke-static {v9, v8}, Lcom/parrot/freeflight/util/ToggleState;->createFromValue(ZZ)Lcom/parrot/freeflight/util/ToggleState;

    move-result-object v0

    sput-object v0, Lcom/parrot/freeflight/piloting/model/bebop/BebopPreset;->FLIGHTPLAN_RETURN_HOME_STATE:Lcom/parrot/freeflight/util/ToggleState;

    .line 22
    invoke-static {v8, v8}, Lcom/parrot/freeflight/util/ToggleState;->createFromValue(ZZ)Lcom/parrot/freeflight/util/ToggleState;

    move-result-object v0

    sput-object v0, Lcom/parrot/freeflight/piloting/model/bebop/BebopPreset;->ROLL_STABILIZATION_STATE:Lcom/parrot/freeflight/util/ToggleState;

    .line 25
    invoke-static {v8, v9}, Lcom/parrot/freeflight/util/ToggleState;->createFromValue(ZZ)Lcom/parrot/freeflight/util/ToggleState;

    move-result-object v0

    sput-object v0, Lcom/parrot/freeflight/piloting/model/bebop/BebopPreset;->HULL_PROTECTION_SET_STATE:Lcom/parrot/freeflight/util/ToggleState;

    .line 26
    invoke-static {v8, v9}, Lcom/parrot/freeflight/util/ToggleState;->createFromValue(ZZ)Lcom/parrot/freeflight/util/ToggleState;

    move-result-object v0

    sput-object v0, Lcom/parrot/freeflight/piloting/model/bebop/BebopPreset;->MOTION_DETECTION_STATE:Lcom/parrot/freeflight/util/ToggleState;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
