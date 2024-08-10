.class public Lcom/parrot/freeflight/core/model/DronePreset;
.super Ljava/lang/Object;
.source "DronePreset.java"


# static fields
.field public static final ANTI_FLICKERING_MODE:I = 0x0

.field public static final AUTO_RECORD_ENABLED:Z = true

.field public static final DISTANCE_RESTRICTION_STATE:Lcom/parrot/freeflight/util/ToggleState;

.field public static final EXPOSITION_STATE:Lcom/parrot/freeflight/util/DoubleBoundedState;

.field public static final FLIGHT_DISTANCE_RESTRICTION_STATUS:I = 0x0

.field public static final FRAME_RATE:I = 0x2

.field public static final PICTURE_FORMAT:I = 0x2

.field public static final RETURN_HOME_DRONE_TYPE:I

.field public static final RETURN_HOME_TYPE:I

.field public static final SATURATION_STATE:Lcom/parrot/freeflight/util/DoubleBoundedState;

.field public static final TIME_LAPSE_ENABLED:Z

.field public static final TIME_LAPSE_INTERVAL:Lcom/parrot/freeflight/util/DoubleBoundedState;

.field public static final VIDEO_RESOLUTIONS:I

.field public static final WHITE_BALANCE_STATE:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const-wide/high16 v8, 0x4020000000000000L    # 8.0

    const-wide/16 v2, 0x0

    .line 14
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/parrot/freeflight/util/ToggleState;->createFromValue(ZZ)Lcom/parrot/freeflight/util/ToggleState;

    move-result-object v0

    sput-object v0, Lcom/parrot/freeflight/core/model/DronePreset;->DISTANCE_RESTRICTION_STATE:Lcom/parrot/freeflight/util/ToggleState;

    .line 17
    const-wide/high16 v0, -0x4008000000000000L    # -1.5

    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    invoke-static/range {v0 .. v5}, Lcom/parrot/freeflight/util/DoubleBoundedState;->createFromValue(DDD)Lcom/parrot/freeflight/util/DoubleBoundedState;

    move-result-object v0

    sput-object v0, Lcom/parrot/freeflight/core/model/DronePreset;->EXPOSITION_STATE:Lcom/parrot/freeflight/util/DoubleBoundedState;

    .line 20
    const-wide/high16 v0, -0x3fa7000000000000L    # -100.0

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    invoke-static/range {v0 .. v5}, Lcom/parrot/freeflight/util/DoubleBoundedState;->createFromValue(DDD)Lcom/parrot/freeflight/util/DoubleBoundedState;

    move-result-object v0

    sput-object v0, Lcom/parrot/freeflight/core/model/DronePreset;->SATURATION_STATE:Lcom/parrot/freeflight/util/DoubleBoundedState;

    .line 30
    const-wide v6, 0x4072c00000000000L    # 300.0

    move-wide v2, v8

    move-wide v4, v8

    invoke-static/range {v2 .. v7}, Lcom/parrot/freeflight/util/DoubleBoundedState;->createFromValue(DDD)Lcom/parrot/freeflight/util/DoubleBoundedState;

    move-result-object v0

    sput-object v0, Lcom/parrot/freeflight/core/model/DronePreset;->TIME_LAPSE_INTERVAL:Lcom/parrot/freeflight/util/DoubleBoundedState;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
