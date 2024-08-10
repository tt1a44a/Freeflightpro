.class public Lcom/parrot/freeflight/piloting/model/DroneCamera;
.super Ljava/lang/Object;
.source "DroneCamera.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/piloting/model/DroneCamera$StabilizationMode;
    }
.end annotation


# static fields
.field private static final DEFAULT_HORIZONTAL_FOV_DEG:F = 80.0f

.field private static final DEFAULT_MAX_PAN_DEG:F = 60.0f

.field private static final DEFAULT_MAX_TILT_DEG:F = 60.0f

.field private static final DEFAULT_MIN_PAN_DEG:F = -60.0f

.field private static final DEFAULT_MIN_TILT_DEG:F = -60.0f

.field public static final DEFAULT_VIDEO_HEIGHT:F = 368.0f

.field public static final DEFAULT_VIDEO_WIDTH:F = 640.0f

.field public static final STABILIZATION_NONE:I = 0x3

.field public static final STABILIZATION_PITCH:I = 0x1

.field public static final STABILIZATION_ROLL:I = 0x2

.field public static final STABILIZATION_ROLL_PITCH:I = 0x0

.field public static final STABILIZATION_UNKNOWN:I = -0x1


# instance fields
.field private mCurrentStabilizationMode:I

.field private mFocalLength:F

.field private mHorizontalFov:F

.field private mPan:I

.field private mPanMax:F

.field private mPanMin:F

.field private mTilt:I

.field private mTiltMax:F

.field private mTiltMin:F

.field private mVerticalFov:F

.field private mVideoHeight:F

.field private mVideoWidth:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/high16 v2, 0x42700000    # 60.0f

    const/high16 v1, -0x3d900000    # -60.0f

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Lcom/parrot/freeflight/piloting/model/DroneCamera;->mCurrentStabilizationMode:I

    .line 49
    const/high16 v0, 0x42a00000    # 80.0f

    iput v0, p0, Lcom/parrot/freeflight/piloting/model/DroneCamera;->mHorizontalFov:F

    .line 51
    iput v1, p0, Lcom/parrot/freeflight/piloting/model/DroneCamera;->mPanMin:F

    .line 52
    iput v2, p0, Lcom/parrot/freeflight/piloting/model/DroneCamera;->mPanMax:F

    .line 54
    iput v1, p0, Lcom/parrot/freeflight/piloting/model/DroneCamera;->mTiltMin:F

    .line 55
    iput v2, p0, Lcom/parrot/freeflight/piloting/model/DroneCamera;->mTiltMax:F

    .line 57
    const/high16 v0, 0x44200000    # 640.0f

    iput v0, p0, Lcom/parrot/freeflight/piloting/model/DroneCamera;->mVideoWidth:F

    .line 58
    const/high16 v0, 0x43b80000    # 368.0f

    iput v0, p0, Lcom/parrot/freeflight/piloting/model/DroneCamera;->mVideoHeight:F

    .line 59
    return-void
.end method

.method public constructor <init>(FFFFF)V
    .locals 1
    .param p1, "horizontalFov"    # F
    .param p2, "panMin"    # F
    .param p3, "panMax"    # F
    .param p4, "tiltMin"    # F
    .param p5, "tiltMax"    # F

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Lcom/parrot/freeflight/piloting/model/DroneCamera;->mCurrentStabilizationMode:I

    .line 62
    iput p1, p0, Lcom/parrot/freeflight/piloting/model/DroneCamera;->mHorizontalFov:F

    .line 63
    iput p2, p0, Lcom/parrot/freeflight/piloting/model/DroneCamera;->mPanMin:F

    .line 64
    iput p3, p0, Lcom/parrot/freeflight/piloting/model/DroneCamera;->mPanMax:F

    .line 65
    iput p4, p0, Lcom/parrot/freeflight/piloting/model/DroneCamera;->mTiltMin:F

    .line 66
    iput p5, p0, Lcom/parrot/freeflight/piloting/model/DroneCamera;->mTiltMax:F

    .line 67
    const/high16 v0, 0x44200000    # 640.0f

    iput v0, p0, Lcom/parrot/freeflight/piloting/model/DroneCamera;->mVideoWidth:F

    .line 68
    const/high16 v0, 0x43b80000    # 368.0f

    iput v0, p0, Lcom/parrot/freeflight/piloting/model/DroneCamera;->mVideoHeight:F

    .line 69
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/model/DroneCamera;->updateFocalLength()V

    .line 70
    return-void
.end method


# virtual methods
.method public ensurePanRange(D)D
    .locals 7
    .param p1, "pan"    # D

    .prologue
    .line 145
    iget v0, p0, Lcom/parrot/freeflight/piloting/model/DroneCamera;->mPanMin:F

    float-to-double v2, v0

    iget v0, p0, Lcom/parrot/freeflight/piloting/model/DroneCamera;->mPanMax:F

    float-to-double v4, v0

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Lcom/parrot/freeflight/util/Limit;->getLimitedValue(DDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public ensureTiltRange(D)D
    .locals 7
    .param p1, "tilt"    # D

    .prologue
    .line 149
    iget v0, p0, Lcom/parrot/freeflight/piloting/model/DroneCamera;->mTiltMin:F

    float-to-double v2, v0

    iget v0, p0, Lcom/parrot/freeflight/piloting/model/DroneCamera;->mTiltMax:F

    float-to-double v4, v0

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Lcom/parrot/freeflight/util/Limit;->getLimitedValue(DDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public ensureTiltRange(F)F
    .locals 2
    .param p1, "tilt"    # F

    .prologue
    .line 153
    iget v0, p0, Lcom/parrot/freeflight/piloting/model/DroneCamera;->mTiltMin:F

    iget v1, p0, Lcom/parrot/freeflight/piloting/model/DroneCamera;->mTiltMax:F

    invoke-static {p1, v0, v1}, Lcom/parrot/freeflight/util/Limit;->getLimitedValue(FFF)F

    move-result v0

    return v0
.end method

.method public getFocalLength()F
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/parrot/freeflight/piloting/model/DroneCamera;->mFocalLength:F

    return v0
.end method

.method public getHorizontalFov()F
    .locals 1

    .prologue
    .line 178
    iget v0, p0, Lcom/parrot/freeflight/piloting/model/DroneCamera;->mHorizontalFov:F

    return v0
.end method

.method public getPan()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/parrot/freeflight/piloting/model/DroneCamera;->mPan:I

    return v0
.end method

.method public getPanProjection()F
    .locals 2

    .prologue
    .line 137
    iget v0, p0, Lcom/parrot/freeflight/piloting/model/DroneCamera;->mPan:I

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    neg-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float v0, v0

    iget v1, p0, Lcom/parrot/freeflight/piloting/model/DroneCamera;->mFocalLength:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public getPitchProjection(F)F
    .locals 2
    .param p1, "pitch"    # F

    .prologue
    .line 165
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float v0, v0

    iget v1, p0, Lcom/parrot/freeflight/piloting/model/DroneCamera;->mFocalLength:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public getStabilizationMode()I
    .locals 1

    .prologue
    .line 170
    iget v0, p0, Lcom/parrot/freeflight/piloting/model/DroneCamera;->mCurrentStabilizationMode:I

    return v0
.end method

.method public getTilt()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcom/parrot/freeflight/piloting/model/DroneCamera;->mTilt:I

    return v0
.end method

.method public getTiltProjection()F
    .locals 2

    .prologue
    .line 141
    iget v0, p0, Lcom/parrot/freeflight/piloting/model/DroneCamera;->mTilt:I

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float v0, v0

    iget v1, p0, Lcom/parrot/freeflight/piloting/model/DroneCamera;->mFocalLength:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public getVerticalFov()F
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Lcom/parrot/freeflight/piloting/model/DroneCamera;->mVerticalFov:F

    return v0
.end method

.method public getVideoHeight()F
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/parrot/freeflight/piloting/model/DroneCamera;->mVideoHeight:F

    return v0
.end method

.method public getVideoWidth()F
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/parrot/freeflight/piloting/model/DroneCamera;->mVideoWidth:F

    return v0
.end method

.method public panHundredPercentInDeg()F
    .locals 2

    .prologue
    .line 157
    iget v0, p0, Lcom/parrot/freeflight/piloting/model/DroneCamera;->mPanMin:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/parrot/freeflight/piloting/model/DroneCamera;->mPanMax:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public setFov(F)V
    .locals 0
    .param p1, "fov"    # F

    .prologue
    .line 73
    iput p1, p0, Lcom/parrot/freeflight/piloting/model/DroneCamera;->mHorizontalFov:F

    .line 74
    return-void
.end method

.method public setPan(I)V
    .locals 0
    .param p1, "pan"    # I

    .prologue
    .line 125
    iput p1, p0, Lcom/parrot/freeflight/piloting/model/DroneCamera;->mPan:I

    .line 126
    return-void
.end method

.method public setPanMax(F)V
    .locals 0
    .param p1, "panMax"    # F

    .prologue
    .line 81
    iput p1, p0, Lcom/parrot/freeflight/piloting/model/DroneCamera;->mPanMax:F

    .line 82
    return-void
.end method

.method public setPanMin(F)V
    .locals 0
    .param p1, "panMin"    # F

    .prologue
    .line 77
    iput p1, p0, Lcom/parrot/freeflight/piloting/model/DroneCamera;->mPanMin:F

    .line 78
    return-void
.end method

.method public setStabilizationMode(I)V
    .locals 0
    .param p1, "stabilizationMode"    # I

    .prologue
    .line 174
    iput p1, p0, Lcom/parrot/freeflight/piloting/model/DroneCamera;->mCurrentStabilizationMode:I

    .line 175
    return-void
.end method

.method public setTilt(I)V
    .locals 0
    .param p1, "tilt"    # I

    .prologue
    .line 133
    iput p1, p0, Lcom/parrot/freeflight/piloting/model/DroneCamera;->mTilt:I

    .line 134
    return-void
.end method

.method public setTiltMax(F)V
    .locals 0
    .param p1, "tiltMax"    # F

    .prologue
    .line 89
    iput p1, p0, Lcom/parrot/freeflight/piloting/model/DroneCamera;->mTiltMax:F

    .line 90
    return-void
.end method

.method public setTiltMin(F)V
    .locals 0
    .param p1, "tiltMin"    # F

    .prologue
    .line 85
    iput p1, p0, Lcom/parrot/freeflight/piloting/model/DroneCamera;->mTiltMin:F

    .line 86
    return-void
.end method

.method public setVideoHeight(F)V
    .locals 0
    .param p1, "videoHeight"    # F

    .prologue
    .line 105
    iput p1, p0, Lcom/parrot/freeflight/piloting/model/DroneCamera;->mVideoHeight:F

    .line 106
    return-void
.end method

.method public setVideoWidth(F)V
    .locals 0
    .param p1, "videoWidth"    # F

    .prologue
    .line 97
    iput p1, p0, Lcom/parrot/freeflight/piloting/model/DroneCamera;->mVideoWidth:F

    .line 98
    return-void
.end method

.method public tiltHundredPercentInDeg()F
    .locals 2

    .prologue
    .line 161
    iget v0, p0, Lcom/parrot/freeflight/piloting/model/DroneCamera;->mTiltMin:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/parrot/freeflight/piloting/model/DroneCamera;->mTiltMax:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public updateFocalLength()V
    .locals 10

    .prologue
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    .line 113
    iget v4, p0, Lcom/parrot/freeflight/piloting/model/DroneCamera;->mHorizontalFov:F

    float-to-double v4, v4

    div-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    .line 114
    .local v0, "halfAngle":D
    iget v4, p0, Lcom/parrot/freeflight/piloting/model/DroneCamera;->mVideoWidth:F

    float-to-double v4, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v6

    mul-double/2addr v6, v8

    div-double/2addr v4, v6

    double-to-float v4, v4

    iput v4, p0, Lcom/parrot/freeflight/piloting/model/DroneCamera;->mFocalLength:F

    .line 116
    iget v4, p0, Lcom/parrot/freeflight/piloting/model/DroneCamera;->mVideoHeight:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    iget v5, p0, Lcom/parrot/freeflight/piloting/model/DroneCamera;->mFocalLength:F

    div-float/2addr v4, v5

    float-to-double v2, v4

    .line 117
    .local v2, "halfVerticalAngle":D
    mul-double v4, v8, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->atan(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float v4, v4

    iput v4, p0, Lcom/parrot/freeflight/piloting/model/DroneCamera;->mVerticalFov:F

    .line 118
    return-void
.end method
