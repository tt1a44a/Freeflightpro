.class public Lcom/parrot/freeflight/piloting/ui/util/GpsStatusesState;
.super Ljava/lang/Object;
.source "GpsStatusesState.java"


# instance fields
.field private mControllerGpsAccuracy:F

.field private mControllerGpsFixed:Z

.field private mControllerGpsLevel:I

.field private mDroneGpsFixed:Z

.field private mDroneGpsLevel:I

.field private mDroneGpsSatelliteCount:I

.field private mReturnHomeStatus:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, -0x1

    iput v0, p0, Lcom/parrot/freeflight/piloting/ui/util/GpsStatusesState;->mReturnHomeStatus:I

    return-void
.end method


# virtual methods
.method public getControllerGpsLevel()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/util/GpsStatusesState;->mControllerGpsLevel:I

    return v0
.end method

.method public getDroneGpsLevel()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/util/GpsStatusesState;->mDroneGpsLevel:I

    return v0
.end method

.method public isReturnHomeAvailable()Z
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/util/GpsStatusesState;->mDroneGpsFixed:Z

    return v0
.end method

.method public update(Lcom/parrot/freeflight/piloting/ui/util/GpsStatusesState;)Z
    .locals 3
    .param p1, "newGpsStatusesState"    # Lcom/parrot/freeflight/piloting/ui/util/GpsStatusesState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 21
    iget v1, p1, Lcom/parrot/freeflight/piloting/ui/util/GpsStatusesState;->mReturnHomeStatus:I

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/piloting/ui/util/GpsStatusesState;->updateReturnHomeStatus(I)Z

    move-result v0

    .line 22
    .local v0, "updated":Z
    iget-boolean v1, p1, Lcom/parrot/freeflight/piloting/ui/util/GpsStatusesState;->mDroneGpsFixed:Z

    iget v2, p1, Lcom/parrot/freeflight/piloting/ui/util/GpsStatusesState;->mDroneGpsSatelliteCount:I

    invoke-virtual {p0, v1, v2}, Lcom/parrot/freeflight/piloting/ui/util/GpsStatusesState;->updateDroneGpsStatus(ZI)Z

    move-result v1

    or-int/2addr v0, v1

    .line 23
    iget-boolean v1, p1, Lcom/parrot/freeflight/piloting/ui/util/GpsStatusesState;->mControllerGpsFixed:Z

    iget v2, p1, Lcom/parrot/freeflight/piloting/ui/util/GpsStatusesState;->mControllerGpsAccuracy:F

    invoke-virtual {p0, v1, v2}, Lcom/parrot/freeflight/piloting/ui/util/GpsStatusesState;->updateControllerGpsStatus(ZF)Z

    move-result v1

    or-int/2addr v0, v1

    .line 24
    return v0
.end method

.method public updateControllerGpsStatus(ZF)Z
    .locals 4
    .param p1, "isGpsFixed"    # Z
    .param p2, "accuracy"    # F

    .prologue
    const/4 v3, 0x0

    .line 63
    const/4 v0, 0x0

    .line 64
    .local v0, "updated":Z
    iget v1, p0, Lcom/parrot/freeflight/piloting/ui/util/GpsStatusesState;->mControllerGpsAccuracy:F

    cmpl-float v1, v1, p2

    if-eqz v1, :cond_0

    .line 65
    iput p2, p0, Lcom/parrot/freeflight/piloting/ui/util/GpsStatusesState;->mControllerGpsAccuracy:F

    .line 66
    const/4 v0, 0x1

    .line 68
    :cond_0
    iget-boolean v1, p0, Lcom/parrot/freeflight/piloting/ui/util/GpsStatusesState;->mControllerGpsFixed:Z

    if-eq v1, p1, :cond_1

    .line 69
    iput-boolean p1, p0, Lcom/parrot/freeflight/piloting/ui/util/GpsStatusesState;->mControllerGpsFixed:Z

    .line 70
    const/4 v0, 0x1

    .line 72
    :cond_1
    if-eqz v0, :cond_2

    .line 74
    iget v1, p0, Lcom/parrot/freeflight/piloting/ui/util/GpsStatusesState;->mControllerGpsAccuracy:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    .line 75
    iput v3, p0, Lcom/parrot/freeflight/piloting/ui/util/GpsStatusesState;->mControllerGpsLevel:I

    .line 88
    :cond_2
    :goto_0
    return v0

    .line 76
    :cond_3
    iget v1, p0, Lcom/parrot/freeflight/piloting/ui/util/GpsStatusesState;->mControllerGpsAccuracy:F

    const/high16 v2, 0x40a00000    # 5.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_4

    .line 77
    const/4 v1, 0x4

    iput v1, p0, Lcom/parrot/freeflight/piloting/ui/util/GpsStatusesState;->mControllerGpsLevel:I

    goto :goto_0

    .line 78
    :cond_4
    iget v1, p0, Lcom/parrot/freeflight/piloting/ui/util/GpsStatusesState;->mControllerGpsAccuracy:F

    const/high16 v2, 0x41700000    # 15.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_5

    .line 79
    const/4 v1, 0x3

    iput v1, p0, Lcom/parrot/freeflight/piloting/ui/util/GpsStatusesState;->mControllerGpsLevel:I

    goto :goto_0

    .line 80
    :cond_5
    iget v1, p0, Lcom/parrot/freeflight/piloting/ui/util/GpsStatusesState;->mControllerGpsAccuracy:F

    const/high16 v2, 0x42480000    # 50.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_6

    .line 81
    const/4 v1, 0x2

    iput v1, p0, Lcom/parrot/freeflight/piloting/ui/util/GpsStatusesState;->mControllerGpsLevel:I

    goto :goto_0

    .line 82
    :cond_6
    iget v1, p0, Lcom/parrot/freeflight/piloting/ui/util/GpsStatusesState;->mControllerGpsAccuracy:F

    const/high16 v2, 0x42c80000    # 100.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_7

    .line 83
    const/4 v1, 0x1

    iput v1, p0, Lcom/parrot/freeflight/piloting/ui/util/GpsStatusesState;->mControllerGpsLevel:I

    goto :goto_0

    .line 85
    :cond_7
    iput v3, p0, Lcom/parrot/freeflight/piloting/ui/util/GpsStatusesState;->mControllerGpsLevel:I

    goto :goto_0
.end method

.method public updateDroneGpsStatus(ZI)Z
    .locals 4
    .param p1, "isGpsFixed"    # Z
    .param p2, "satelliteCount"    # I

    .prologue
    const/4 v3, 0x3

    .line 36
    const/4 v0, 0x0

    .line 37
    .local v0, "updated":Z
    iget v1, p0, Lcom/parrot/freeflight/piloting/ui/util/GpsStatusesState;->mDroneGpsSatelliteCount:I

    if-eq v1, p2, :cond_0

    .line 38
    iput p2, p0, Lcom/parrot/freeflight/piloting/ui/util/GpsStatusesState;->mDroneGpsSatelliteCount:I

    .line 39
    const/4 v0, 0x1

    .line 41
    :cond_0
    iget-boolean v1, p0, Lcom/parrot/freeflight/piloting/ui/util/GpsStatusesState;->mDroneGpsFixed:Z

    if-eq v1, p1, :cond_1

    .line 42
    iput-boolean p1, p0, Lcom/parrot/freeflight/piloting/ui/util/GpsStatusesState;->mDroneGpsFixed:Z

    .line 43
    const/4 v0, 0x1

    .line 45
    :cond_1
    if-eqz v0, :cond_2

    .line 47
    iget v1, p0, Lcom/parrot/freeflight/piloting/ui/util/GpsStatusesState;->mDroneGpsSatelliteCount:I

    if-ge v1, v3, :cond_3

    .line 48
    const/4 v1, 0x0

    iput v1, p0, Lcom/parrot/freeflight/piloting/ui/util/GpsStatusesState;->mDroneGpsLevel:I

    .line 59
    :cond_2
    :goto_0
    return v0

    .line 49
    :cond_3
    iget v1, p0, Lcom/parrot/freeflight/piloting/ui/util/GpsStatusesState;->mDroneGpsSatelliteCount:I

    const/4 v2, 0x6

    if-ge v1, v2, :cond_4

    .line 50
    const/4 v1, 0x1

    iput v1, p0, Lcom/parrot/freeflight/piloting/ui/util/GpsStatusesState;->mDroneGpsLevel:I

    goto :goto_0

    .line 51
    :cond_4
    iget v1, p0, Lcom/parrot/freeflight/piloting/ui/util/GpsStatusesState;->mDroneGpsSatelliteCount:I

    const/16 v2, 0x9

    if-ge v1, v2, :cond_5

    .line 52
    const/4 v1, 0x2

    iput v1, p0, Lcom/parrot/freeflight/piloting/ui/util/GpsStatusesState;->mDroneGpsLevel:I

    goto :goto_0

    .line 53
    :cond_5
    iget v1, p0, Lcom/parrot/freeflight/piloting/ui/util/GpsStatusesState;->mDroneGpsSatelliteCount:I

    const/16 v2, 0xc

    if-ge v1, v2, :cond_6

    .line 54
    iput v3, p0, Lcom/parrot/freeflight/piloting/ui/util/GpsStatusesState;->mDroneGpsLevel:I

    goto :goto_0

    .line 56
    :cond_6
    const/4 v1, 0x4

    iput v1, p0, Lcom/parrot/freeflight/piloting/ui/util/GpsStatusesState;->mDroneGpsLevel:I

    goto :goto_0
.end method

.method public updateReturnHomeStatus(I)Z
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 28
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/util/GpsStatusesState;->mReturnHomeStatus:I

    if-eq p1, v0, :cond_0

    .line 29
    iput p1, p0, Lcom/parrot/freeflight/piloting/ui/util/GpsStatusesState;->mReturnHomeStatus:I

    .line 30
    const/4 v0, 0x1

    .line 32
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
