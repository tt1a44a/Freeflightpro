.class public Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;
.super Ljava/lang/Object;
.source "Radar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/piloting/ui/radar/Radar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Position"
.end annotation


# static fields
.field private static final FLAT_MULTIPLICATOR:D = 0.9966471893352525

.field public static final INVALID:D = 3.4028234663852886E38

.field private static final R:D = 6378137.0


# instance fields
.field private mAlt1:D

.field private mAlt2:D

.field private mLat1:D

.field private mLat2:D

.field private mLocation:Landroid/location/Location;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mLon1:D

.field private mLon2:D

.field private mPitch:D

.field private mRelativePitch:D

.field private mRoll:D

.field private mYaw:D


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide v2, 0x47efffffe0000000L    # 3.4028234663852886E38

    const-wide/16 v0, 0x0

    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 324
    iput-wide v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;->mLat1:D

    .line 325
    iput-wide v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;->mLat2:D

    .line 326
    iput-wide v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;->mLon1:D

    .line 327
    iput-wide v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;->mLon2:D

    .line 328
    iput-wide v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;->mAlt1:D

    .line 329
    iput-wide v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;->mAlt2:D

    .line 330
    iput-wide v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;->mRelativePitch:D

    .line 333
    iput-wide v2, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;->mYaw:D

    .line 334
    iput-wide v2, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;->mPitch:D

    .line 335
    iput-wide v2, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;->mRoll:D

    .line 336
    return-void
.end method

.method static synthetic access$102(Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;D)D
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;
    .param p1, "x1"    # D

    .prologue
    .line 307
    iput-wide p1, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;->mYaw:D

    return-wide p1
.end method

.method static synthetic access$202(Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;D)D
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;
    .param p1, "x1"    # D

    .prologue
    .line 307
    iput-wide p1, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;->mPitch:D

    return-wide p1
.end method

.method static synthetic access$302(Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;D)D
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;
    .param p1, "x1"    # D

    .prologue
    .line 307
    iput-wide p1, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;->mRoll:D

    return-wide p1
.end method

.method private computeRelativePitch(Landroid/location/Location;Landroid/location/Location;)D
    .locals 38
    .param p1, "fromLocation"    # Landroid/location/Location;
    .param p2, "toLocation"    # Landroid/location/Location;

    .prologue
    .line 427
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    const-wide v6, 0x4056800000000000L    # 90.0

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v20

    .line 430
    .local v20, "theta1":D
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    const-wide v6, 0x4066800000000000L    # 180.0

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v12

    .line 432
    .local v12, "phi1":D
    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    const-wide v6, 0x4056800000000000L    # 90.0

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v22

    .line 433
    .local v22, "theta2":D
    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    const-wide v6, 0x4066800000000000L    # 180.0

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v14

    .line 440
    .local v14, "phi2":D
    const-wide v4, 0x415854a640000000L    # 6378137.0

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v6

    add-double v16, v4, v6

    .line 441
    .local v16, "r1":D
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double v4, v4, v16

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double v24, v4, v6

    .line 442
    .local v24, "x1":D
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double v4, v4, v16

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double v28, v4, v6

    .line 443
    .local v28, "y1":D
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double v32, v16, v4

    .line 445
    .local v32, "z1":D
    const-wide v4, 0x3fefe488a57b0c1fL    # 0.9966471893352525

    mul-double v32, v32, v4

    .line 447
    const-wide v4, 0x415854a640000000L    # 6378137.0

    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->getAltitude()D

    move-result-wide v6

    add-double v18, v4, v6

    .line 448
    .local v18, "r2":D
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double v4, v4, v18

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double v26, v4, v6

    .line 449
    .local v26, "x2":D
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double v4, v4, v18

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double v30, v4, v6

    .line 450
    .local v30, "y2":D
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double v34, v18, v4

    .line 451
    .local v34, "z2":D
    const-wide v4, 0x3fefe488a57b0c1fL    # 0.9966471893352525

    mul-double v34, v34, v4

    .line 456
    sub-double v4, v26, v24

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    sub-double v6, v30, v28

    const-wide/high16 v36, 0x4000000000000000L    # 2.0

    move-wide/from16 v0, v36

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v4, v6

    sub-double v6, v34, v32

    const-wide/high16 v36, 0x4000000000000000L    # 2.0

    move-wide/from16 v0, v36

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    .line 463
    .local v10, "distanceInSpace":D
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    move-wide/from16 v0, v18

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    sub-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double v6, v6, v16

    mul-double/2addr v6, v10

    div-double v2, v4, v6

    .line 465
    .local v2, "cosA":D
    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v2 .. v7}, Lcom/parrot/freeflight/util/Limit;->getLimitedValue(DDD)D

    move-result-wide v2

    .line 466
    invoke-static {v2, v3}, Ljava/lang/Math;->acos(D)D

    move-result-wide v8

    .line 470
    .local v8, "angle":D
    invoke-static {v8, v9}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    return-wide v4
.end method


# virtual methods
.method public bearingTo(Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;)D
    .locals 2
    .param p1, "other"    # Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;

    .prologue
    .line 384
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;->mLocation:Landroid/location/Location;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;->mLocation:Landroid/location/Location;

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;->mLocation:Landroid/location/Location;

    iget-object v1, p1, Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;->mLocation:Landroid/location/Location;

    invoke-virtual {v0, v1}, Landroid/location/Location;->bearingTo(Landroid/location/Location;)F

    move-result v0

    float-to-double v0, v0

    .line 387
    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, 0x47efffffe0000000L    # 3.4028234663852886E38

    goto :goto_0
.end method

.method public distanceTo(Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;)D
    .locals 2
    .param p1, "other"    # Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;

    .prologue
    .line 391
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;->mLocation:Landroid/location/Location;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;->mLocation:Landroid/location/Location;

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;->mLocation:Landroid/location/Location;

    iget-object v1, p1, Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;->mLocation:Landroid/location/Location;

    invoke-virtual {v0, v1}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v0

    float-to-double v0, v0

    .line 394
    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, 0x47efffffe0000000L    # 3.4028234663852886E38

    goto :goto_0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 372
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;->mLocation:Landroid/location/Location;

    return-object v0
.end method

.method public getPitch()D
    .locals 2

    .prologue
    .line 363
    iget-wide v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;->mPitch:D

    return-wide v0
.end method

.method public getRoll()D
    .locals 2

    .prologue
    .line 367
    iget-wide v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;->mRoll:D

    return-wide v0
.end method

.method public getYaw()D
    .locals 2

    .prologue
    .line 359
    iget-wide v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;->mYaw:D

    return-wide v0
.end method

.method public isLocationAvailable()Z
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;->mLocation:Landroid/location/Location;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOrientationAvailable()Z
    .locals 4

    .prologue
    const-wide v2, 0x47efffffe0000000L    # 3.4028234663852886E38

    .line 380
    iget-wide v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;->mYaw:D

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;->mPitch:D

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;->mRoll:D

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mirror(Lcom/parrot/freeflight/core/model/DroneModel$Position;D)V
    .locals 2
    .param p1, "position"    # Lcom/parrot/freeflight/core/model/DroneModel$Position;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "relativeAltitude"    # D

    .prologue
    .line 339
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/model/DroneModel$Position;->getYaw()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;->mYaw:D

    .line 340
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/model/DroneModel$Position;->getRoll()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;->mRoll:D

    .line 341
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/model/DroneModel$Position;->getPitch()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;->mPitch:D

    .line 342
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/model/DroneModel$Position;->getLocation()Landroid/location/Location;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;->setLocation(Landroid/location/Location;D)V

    .line 343
    return-void
.end method

.method public pitchTo(Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;)D
    .locals 4
    .param p1, "other"    # Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;

    .prologue
    .line 402
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;->mLocation:Landroid/location/Location;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;->mLocation:Landroid/location/Location;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;->mLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->hasAltitude()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;->mLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->hasAltitude()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 403
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;->mLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;->mLat1:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;->mLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;->mLon1:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;->mLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getAltitude()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;->mAlt1:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;->mLocation:Landroid/location/Location;

    .line 404
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;->mLat2:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;->mLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;->mLon2:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;->mLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getAltitude()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;->mAlt2:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 405
    iget-wide v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;->mRelativePitch:D

    .line 416
    :goto_0
    return-wide v0

    .line 407
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;->mLocation:Landroid/location/Location;

    iget-object v1, p1, Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;->mLocation:Landroid/location/Location;

    invoke-direct {p0, v0, v1}, Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;->computeRelativePitch(Landroid/location/Location;Landroid/location/Location;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;->mRelativePitch:D

    .line 408
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;->mLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;->mLat1:D

    .line 409
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;->mLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;->mLon1:D

    .line 410
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;->mLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getAltitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;->mAlt1:D

    .line 411
    iget-object v0, p1, Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;->mLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;->mLat2:D

    .line 412
    iget-object v0, p1, Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;->mLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;->mLon2:D

    .line 413
    iget-object v0, p1, Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;->mLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getAltitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;->mAlt2:D

    .line 414
    iget-wide v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;->mRelativePitch:D

    goto :goto_0

    .line 416
    :cond_1
    const-wide v0, 0x47efffffe0000000L    # 3.4028234663852886E38

    goto :goto_0
.end method

.method public setLocation(Landroid/location/Location;D)V
    .locals 4
    .param p1, "location"    # Landroid/location/Location;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "forcedAltitude"    # D

    .prologue
    .line 346
    if-nez p1, :cond_0

    .line 347
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;->mLocation:Landroid/location/Location;

    .line 356
    :goto_0
    return-void

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;->mLocation:Landroid/location/Location;

    if-eqz v0, :cond_1

    .line 349
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;->mLocation:Landroid/location/Location;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setLatitude(D)V

    .line 350
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;->mLocation:Landroid/location/Location;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setLongitude(D)V

    .line 351
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;->mLocation:Landroid/location/Location;

    invoke-virtual {v0, p2, p3}, Landroid/location/Location;->setAltitude(D)V

    goto :goto_0

    .line 353
    :cond_1
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;->mLocation:Landroid/location/Location;

    .line 354
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;->mLocation:Landroid/location/Location;

    invoke-virtual {v0, p2, p3}, Landroid/location/Location;->setAltitude(D)V

    goto :goto_0
.end method
