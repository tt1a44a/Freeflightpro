.class public Lcom/parrot/freeflight/piloting/ui/util/CalibrationState;
.super Ljava/lang/Object;
.source "CalibrationState.java"


# instance fields
.field private mAxisToCalibrate:I

.field private mMagnetoCalibrationProcedureState:I

.field protected mMagnetoCalibrationStatus:I

.field private mPitotCalibrationState:I

.field private mXAxisCalibrated:Z

.field private mYAxisCalibrated:Z

.field private mZAxisCalibrated:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput v1, p0, Lcom/parrot/freeflight/piloting/ui/util/CalibrationState;->mAxisToCalibrate:I

    .line 11
    const/4 v0, 0x2

    iput v0, p0, Lcom/parrot/freeflight/piloting/ui/util/CalibrationState;->mMagnetoCalibrationStatus:I

    .line 21
    iput v1, p0, Lcom/parrot/freeflight/piloting/ui/util/CalibrationState;->mPitotCalibrationState:I

    return-void
.end method


# virtual methods
.method public getAxisToCalibrate()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/util/CalibrationState;->mAxisToCalibrate:I

    return v0
.end method

.method public getMagnetoCalibrationProcedureState()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/util/CalibrationState;->mMagnetoCalibrationProcedureState:I

    return v0
.end method

.method public getMagnetoCalibrationStatus()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/util/CalibrationState;->mMagnetoCalibrationStatus:I

    return v0
.end method

.method public getPitotCalibrationState()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/util/CalibrationState;->mPitotCalibrationState:I

    return v0
.end method

.method public isDroneCalibrated()Z
    .locals 2

    .prologue
    .line 100
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/util/CalibrationState;->mMagnetoCalibrationStatus:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/util/CalibrationState;->mPitotCalibrationState:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/util/CalibrationState;->mPitotCalibrationState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPitotCalibrationAvailable()Z
    .locals 2

    .prologue
    .line 110
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/util/CalibrationState;->mPitotCalibrationState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isXAxisCalibrated()Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/util/CalibrationState;->mXAxisCalibrated:Z

    return v0
.end method

.method public isYAxisCalibrated()Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/util/CalibrationState;->mYAxisCalibrated:Z

    return v0
.end method

.method public isZAxisCalibrated()Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/util/CalibrationState;->mZAxisCalibrated:Z

    return v0
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 114
    iput v1, p0, Lcom/parrot/freeflight/piloting/ui/util/CalibrationState;->mAxisToCalibrate:I

    .line 115
    iput v1, p0, Lcom/parrot/freeflight/piloting/ui/util/CalibrationState;->mMagnetoCalibrationProcedureState:I

    .line 117
    iput-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/util/CalibrationState;->mXAxisCalibrated:Z

    .line 118
    iput-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/util/CalibrationState;->mYAxisCalibrated:Z

    .line 119
    iput-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/util/CalibrationState;->mZAxisCalibrated:Z

    .line 120
    return-void
.end method

.method public updateAxisCalibrated(ZZZ)Z
    .locals 2
    .param p1, "xAxisCalibrated"    # Z
    .param p2, "yAxisCalibrated"    # Z
    .param p3, "zAxisCalibrated"    # Z

    .prologue
    .line 25
    const/4 v0, 0x0

    .line 26
    .local v0, "updated":Z
    iget-boolean v1, p0, Lcom/parrot/freeflight/piloting/ui/util/CalibrationState;->mXAxisCalibrated:Z

    if-eq v1, p1, :cond_0

    .line 27
    const/4 v0, 0x1

    .line 28
    iput-boolean p1, p0, Lcom/parrot/freeflight/piloting/ui/util/CalibrationState;->mXAxisCalibrated:Z

    .line 30
    :cond_0
    iget-boolean v1, p0, Lcom/parrot/freeflight/piloting/ui/util/CalibrationState;->mYAxisCalibrated:Z

    if-eq v1, p2, :cond_1

    .line 31
    const/4 v0, 0x1

    .line 32
    iput-boolean p2, p0, Lcom/parrot/freeflight/piloting/ui/util/CalibrationState;->mYAxisCalibrated:Z

    .line 34
    :cond_1
    iget-boolean v1, p0, Lcom/parrot/freeflight/piloting/ui/util/CalibrationState;->mZAxisCalibrated:Z

    if-eq v1, p3, :cond_2

    .line 35
    const/4 v0, 0x1

    .line 36
    iput-boolean p3, p0, Lcom/parrot/freeflight/piloting/ui/util/CalibrationState;->mZAxisCalibrated:Z

    .line 38
    :cond_2
    return v0
.end method

.method public updateAxisToCalibrate(I)Z
    .locals 1
    .param p1, "axisToCalibrate"    # I

    .prologue
    .line 50
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/util/CalibrationState;->mAxisToCalibrate:I

    if-eq v0, p1, :cond_0

    .line 51
    iput p1, p0, Lcom/parrot/freeflight/piloting/ui/util/CalibrationState;->mAxisToCalibrate:I

    .line 52
    const/4 v0, 0x1

    .line 54
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateMagnetoCalibrationProcedureState(I)Z
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 42
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/util/CalibrationState;->mMagnetoCalibrationProcedureState:I

    if-eq v0, p1, :cond_0

    .line 43
    iput p1, p0, Lcom/parrot/freeflight/piloting/ui/util/CalibrationState;->mMagnetoCalibrationProcedureState:I

    .line 44
    const/4 v0, 0x1

    .line 46
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateMagnetoCalibrationStatus(I)Z
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 58
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/util/CalibrationState;->mMagnetoCalibrationStatus:I

    if-eq v0, p1, :cond_0

    .line 59
    iput p1, p0, Lcom/parrot/freeflight/piloting/ui/util/CalibrationState;->mMagnetoCalibrationStatus:I

    .line 60
    const/4 v0, 0x1

    .line 62
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updatePitotCalibrationState(I)Z
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 66
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/util/CalibrationState;->mPitotCalibrationState:I

    if-eq v0, p1, :cond_0

    .line 67
    iput p1, p0, Lcom/parrot/freeflight/piloting/ui/util/CalibrationState;->mPitotCalibrationState:I

    .line 68
    const/4 v0, 0x1

    .line 70
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
