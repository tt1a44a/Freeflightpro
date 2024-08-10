.class public Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$Attitude;
.super Ljava/lang/Object;
.source "SkyControllerModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Attitude"
.end annotation


# instance fields
.field private mHasHeading:Z

.field private mHeading:D

.field private mPitch:D

.field private mQw:F

.field private mQx:F

.field private mQy:F

.field private mQz:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 405
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHeading()D
    .locals 2

    .prologue
    .line 461
    iget-wide v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$Attitude;->mHeading:D

    return-wide v0
.end method

.method public hasHeading()Z
    .locals 1

    .prologue
    .line 457
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$Attitude;->mHasHeading:Z

    return v0
.end method

.method protected update(FFFF)Z
    .locals 24
    .param p1, "q0"    # F
    .param p2, "q1"    # F
    .param p3, "q2"    # F
    .param p4, "q3"    # F

    .prologue
    .line 417
    move-object/from16 v0, p0

    iget v0, v0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$Attitude;->mQw:F

    move/from16 v18, v0

    cmpl-float v18, v18, p1

    if-nez v18, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$Attitude;->mQx:F

    move/from16 v18, v0

    cmpl-float v18, v18, p2

    if-nez v18, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$Attitude;->mQy:F

    move/from16 v18, v0

    cmpl-float v18, v18, p3

    if-nez v18, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$Attitude;->mQz:F

    move/from16 v18, v0

    cmpl-float v18, v18, p4

    if-eqz v18, :cond_3

    .line 418
    :cond_0
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$Attitude;->mQw:F

    .line 419
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$Attitude;->mQx:F

    .line 420
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$Attitude;->mQy:F

    .line 421
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$Attitude;->mQz:F

    .line 423
    move-object/from16 v0, p0

    iget v0, v0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$Attitude;->mQx:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$Attitude;->mQy:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$Attitude;->mQz:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$Attitude;->mQw:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v16, v0

    .line 424
    .local v16, "test":D
    const-wide/16 v6, 0x0

    .line 425
    .local v6, "pitch":D
    const-wide/16 v8, 0x0

    .line 426
    .local v8, "roll":D
    const-wide/16 v4, 0x0

    .line 427
    .local v4, "heading":D
    const-wide v18, 0x3fdfef9db22d0e56L    # 0.499

    cmpl-double v18, v16, v18

    if-lez v18, :cond_1

    .line 428
    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$Attitude;->mQx:F

    move/from16 v20, v0

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$Attitude;->mQw:F

    move/from16 v22, v0

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v20

    mul-double v6, v18, v20

    .line 430
    const-wide/16 v4, 0x0

    .line 443
    :goto_0
    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$Attitude;->mPitch:D

    .line 445
    const-wide v18, 0x4076800000000000L    # 360.0

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v20

    const-wide v22, 0x4076800000000000L    # 360.0

    add-double v20, v20, v22

    const-wide v22, 0x4076800000000000L    # 360.0

    rem-double v20, v20, v22

    sub-double v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$Attitude;->mHeading:D

    .line 446
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$Attitude;->mHasHeading:Z

    .line 449
    const-string v18, "debug_mpp"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "mpp heading = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$Attitude;->mHeading:D

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    const/16 v18, 0x1

    .line 453
    .end local v4    # "heading":D
    .end local v6    # "pitch":D
    .end local v8    # "roll":D
    .end local v16    # "test":D
    :goto_1
    return v18

    .line 431
    .restart local v4    # "heading":D
    .restart local v6    # "pitch":D
    .restart local v8    # "roll":D
    .restart local v16    # "test":D
    :cond_1
    const-wide v18, -0x402010624dd2f1aaL    # -0.499

    cmpg-double v18, v16, v18

    if-gez v18, :cond_2

    .line 432
    const-wide/high16 v18, -0x4000000000000000L    # -2.0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$Attitude;->mQx:F

    move/from16 v20, v0

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$Attitude;->mQw:F

    move/from16 v22, v0

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v20

    mul-double v6, v18, v20

    .line 434
    const-wide/16 v4, 0x0

    goto :goto_0

    .line 436
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$Attitude;->mQx:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$Attitude;->mQx:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-double v10, v0

    .line 437
    .local v10, "sqx":D
    move-object/from16 v0, p0

    iget v0, v0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$Attitude;->mQy:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$Attitude;->mQy:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-double v12, v0

    .line 438
    .local v12, "sqy":D
    move-object/from16 v0, p0

    iget v0, v0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$Attitude;->mQz:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$Attitude;->mQz:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-double v14, v0

    .line 439
    .local v14, "sqz":D
    const/high16 v18, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$Attitude;->mQy:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$Attitude;->mQw:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    const/high16 v19, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$Attitude;->mQx:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$Attitude;->mQz:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    sub-float v18, v18, v19

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    mul-double v22, v22, v12

    sub-double v20, v20, v22

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    mul-double v22, v22, v14

    sub-double v20, v20, v22

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    .line 441
    const/high16 v18, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$Attitude;->mQx:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$Attitude;->mQw:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    const/high16 v19, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$Attitude;->mQy:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$Attitude;->mQz:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    sub-float v18, v18, v19

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    mul-double v22, v22, v10

    sub-double v20, v20, v22

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    mul-double v22, v22, v14

    sub-double v20, v20, v22

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    goto/16 :goto_0

    .line 453
    .end local v4    # "heading":D
    .end local v6    # "pitch":D
    .end local v8    # "roll":D
    .end local v10    # "sqx":D
    .end local v12    # "sqy":D
    .end local v14    # "sqz":D
    .end local v16    # "test":D
    :cond_3
    const/16 v18, 0x0

    goto/16 :goto_1
.end method
