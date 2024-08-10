.class public Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;
.super Ljava/lang/Object;
.source "ARMavlinkMissionItem.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private autocontinue:I

.field private command:I

.field private current:Z

.field private frame:I

.field private isCreateByMe:Z

.field private nativeMissionItem:J

.field private param1:F

.field private param2:F

.field private param3:F

.field private param4:F

.field private seq:I

.field private target_component:I

.field private target_system:I

.field private x:F

.field private y:F

.field private z:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    .line 115
    invoke-direct {p0}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeNew()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->isCreateByMe:Z

    .line 117
    return-void
.end method

.method public constructor <init>(J)V
    .locals 3
    .param p1, "itemPtr"    # J

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    .line 125
    iput-wide p1, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->isCreateByMe:Z

    .line 127
    return-void
.end method

.method public static CreateMavlinkChangeSpeedMissionItem(IFF)Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;
    .locals 6
    .param p0, "groundSpeed"    # I
    .param p1, "speed"    # F
    .param p2, "throttle"    # F

    .prologue
    .line 291
    new-instance v1, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;

    invoke-direct {v1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;-><init>()V

    .line 292
    .local v1, "missionItem":Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;
    invoke-virtual {v1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->getNativePointer()J

    move-result-wide v4

    invoke-static {v4, v5, p0, p1, p2}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeCreateMavlinkChangeSpeedMissionItem(JIFF)I

    move-result v2

    .line 294
    .local v2, "value":I
    invoke-static {v2}, Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;

    move-result-object v0

    .line 296
    .local v0, "error":Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;
    sget-object v3, Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;->ARMAVLINK_OK:Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;

    if-ne v0, v3, :cond_0

    .line 298
    invoke-virtual {v1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->updateFromNative()V

    .line 306
    :goto_0
    return-object v1

    .line 302
    :cond_0
    sget-object v3, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Create Mavlink Mission Item Error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    invoke-virtual {v1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->dispose()V

    .line 304
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static CreateMavlinkCreatePanoramaMissionItem(FFFF)Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;
    .locals 9
    .param p0, "horizontalAngle"    # F
    .param p1, "verticalAngle"    # F
    .param p2, "horizontalRotationSpeed"    # F
    .param p3, "verticalRotationSpeed"    # F

    .prologue
    .line 479
    new-instance v7, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;

    invoke-direct {v7}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;-><init>()V

    .line 480
    .local v7, "missionItem":Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;
    invoke-virtual {v7}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->getNativePointer()J

    move-result-wide v0

    move v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeCreateMavlinkCreatePanorama(JFFFF)I

    move-result v8

    .line 482
    .local v8, "value":I
    invoke-static {v8}, Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;

    move-result-object v6

    .line 484
    .local v6, "error":Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;
    sget-object v0, Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;->ARMAVLINK_OK:Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;

    if-ne v6, v0, :cond_0

    .line 486
    invoke-virtual {v7}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->updateFromNative()V

    .line 494
    :goto_0
    return-object v7

    .line 490
    :cond_0
    sget-object v0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Create Mavlink Mission Item Error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    invoke-virtual {v7}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->dispose()V

    .line 492
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public static CreateMavlinkDelay(F)Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;
    .locals 6
    .param p0, "durationDelay"    # F

    .prologue
    .line 420
    new-instance v1, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;

    invoke-direct {v1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;-><init>()V

    .line 421
    .local v1, "missionItem":Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;
    invoke-virtual {v1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->getNativePointer()J

    move-result-wide v4

    invoke-static {v4, v5, p0}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeCreateMavlinkDelay(JF)I

    move-result v2

    .line 423
    .local v2, "value":I
    invoke-static {v2}, Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;

    move-result-object v0

    .line 425
    .local v0, "error":Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;
    sget-object v3, Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;->ARMAVLINK_OK:Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;

    if-ne v0, v3, :cond_0

    .line 427
    invoke-virtual {v1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->updateFromNative()V

    .line 435
    :goto_0
    return-object v1

    .line 431
    :cond_0
    sget-object v3, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Create Mavlink Mission Item Error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    invoke-virtual {v1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->dispose()V

    .line 433
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static CreateMavlinkImageStartCaptureMissionItem(FFF)Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;
    .locals 6
    .param p0, "period"    # F
    .param p1, "imagesCount"    # F
    .param p2, "resolution"    # F

    .prologue
    .line 397
    new-instance v1, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;

    invoke-direct {v1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;-><init>()V

    .line 398
    .local v1, "missionItem":Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;
    invoke-virtual {v1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->getNativePointer()J

    move-result-wide v4

    invoke-static {v4, v5, p0, p1, p2}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeCreateMavlinkImageStartCapture(JFFF)I

    move-result v2

    .line 399
    .local v2, "value":I
    invoke-static {v2}, Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;

    move-result-object v0

    .line 400
    .local v0, "error":Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;
    sget-object v3, Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;->ARMAVLINK_OK:Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;

    if-ne v0, v3, :cond_0

    .line 402
    invoke-virtual {v1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->updateFromNative()V

    .line 410
    :goto_0
    return-object v1

    .line 406
    :cond_0
    sget-object v3, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Create Mavlink Mission Item Error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    invoke-virtual {v1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->dispose()V

    .line 408
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static CreateMavlinkImageStopCaptureMissionItem()Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;
    .locals 6

    .prologue
    .line 444
    new-instance v1, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;

    invoke-direct {v1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;-><init>()V

    .line 445
    .local v1, "missionItem":Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;
    invoke-virtual {v1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->getNativePointer()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeCreateMavlinkImageStopCapture(J)I

    move-result v2

    .line 447
    .local v2, "value":I
    invoke-static {v2}, Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;

    move-result-object v0

    .line 449
    .local v0, "error":Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;
    sget-object v3, Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;->ARMAVLINK_OK:Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;

    if-ne v0, v3, :cond_0

    .line 451
    invoke-virtual {v1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->updateFromNative()V

    .line 459
    :goto_0
    return-object v1

    .line 455
    :cond_0
    sget-object v3, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Create Mavlink Mission Item Error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    invoke-virtual {v1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->dispose()V

    .line 457
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static CreateMavlinkLandMissionItem(FFFF)Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;
    .locals 9
    .param p0, "latitude"    # F
    .param p1, "longitude"    # F
    .param p2, "altitude"    # F
    .param p3, "yaw"    # F

    .prologue
    .line 264
    new-instance v7, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;

    invoke-direct {v7}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;-><init>()V

    .line 265
    .local v7, "missionItem":Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;
    invoke-virtual {v7}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->getNativePointer()J

    move-result-wide v0

    move v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeCreateMavlinkLandMissionItem(JFFFF)I

    move-result v8

    .line 267
    .local v8, "value":I
    invoke-static {v8}, Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;

    move-result-object v6

    .line 269
    .local v6, "error":Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;
    sget-object v0, Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;->ARMAVLINK_OK:Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;

    if-ne v6, v0, :cond_0

    .line 271
    invoke-virtual {v7}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->updateFromNative()V

    .line 279
    :goto_0
    return-object v7

    .line 275
    :cond_0
    sget-object v0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Create Mavlink Mission Item Error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    invoke-virtual {v7}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->dispose()V

    .line 277
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public static CreateMavlinkMissionItemWithAllParams(FFFFFFFIIIII)Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;
    .locals 17
    .param p0, "param1"    # F
    .param p1, "param2"    # F
    .param p2, "param3"    # F
    .param p3, "param4"    # F
    .param p4, "latitude"    # F
    .param p5, "longitude"    # F
    .param p6, "altitude"    # F
    .param p7, "command"    # I
    .param p8, "seq"    # I
    .param p9, "frame"    # I
    .param p10, "current"    # I
    .param p11, "autocontinue"    # I

    .prologue
    .line 179
    new-instance v15, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;

    invoke-direct {v15}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;-><init>()V

    .line 180
    .local v15, "missionItem":Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;
    invoke-virtual {v15}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->getNativePointer()J

    move-result-wide v0

    move/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    invoke-static/range {v0 .. v13}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeCreateMavlinkMissionItemWithAllParams(JFFFFFFFIIIII)I

    move-result v16

    .line 182
    .local v16, "value":I
    invoke-static/range {v16 .. v16}, Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;

    move-result-object v14

    .line 184
    .local v14, "error":Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;
    sget-object v0, Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;->ARMAVLINK_OK:Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;

    if-ne v14, v0, :cond_0

    .line 186
    invoke-virtual {v15}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->updateFromNative()V

    .line 194
    :goto_0
    return-object v15

    .line 190
    :cond_0
    sget-object v0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Create Mavlink Mission Item Error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v14}, Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-virtual {v15}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->dispose()V

    .line 192
    const/4 v15, 0x0

    goto :goto_0
.end method

.method public static CreateMavlinkNavWaypointMissionItem(FFFF)Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;
    .locals 9
    .param p0, "latitude"    # F
    .param p1, "longitude"    # F
    .param p2, "altitude"    # F
    .param p3, "yaw"    # F

    .prologue
    .line 207
    new-instance v7, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;

    invoke-direct {v7}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;-><init>()V

    .line 208
    .local v7, "missionItem":Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;
    invoke-virtual {v7}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->getNativePointer()J

    move-result-wide v0

    move v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeCreateMavlinkNavWaypointMissionItem(JFFFF)I

    move-result v8

    .line 210
    .local v8, "value":I
    invoke-static {v8}, Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;

    move-result-object v6

    .line 212
    .local v6, "error":Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;
    sget-object v0, Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;->ARMAVLINK_OK:Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;

    if-ne v6, v0, :cond_0

    .line 214
    invoke-virtual {v7}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->updateFromNative()V

    .line 222
    :goto_0
    return-object v7

    .line 218
    :cond_0
    sget-object v0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Create Mavlink Mission Item Error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    invoke-virtual {v7}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->dispose()V

    .line 220
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public static CreateMavlinkNavWaypointMissionItemWithRadius(FFFF)Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;
    .locals 9
    .param p0, "latitude"    # F
    .param p1, "longitude"    # F
    .param p2, "altitude"    # F
    .param p3, "radius"    # F

    .prologue
    .line 236
    new-instance v7, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;

    invoke-direct {v7}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;-><init>()V

    .line 237
    .local v7, "missionItem":Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;
    invoke-virtual {v7}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->getNativePointer()J

    move-result-wide v0

    move v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeCreateMavlinkNavWaypointMissionItemWithRadius(JFFFF)I

    move-result v8

    .line 239
    .local v8, "value":I
    invoke-static {v8}, Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;

    move-result-object v6

    .line 241
    .local v6, "error":Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;
    sget-object v0, Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;->ARMAVLINK_OK:Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;

    if-ne v6, v0, :cond_0

    .line 243
    invoke-virtual {v7}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->updateFromNative()V

    .line 251
    :goto_0
    return-object v7

    .line 247
    :cond_0
    sget-object v0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Create Mavlink Mission Item Error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    invoke-virtual {v7}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->dispose()V

    .line 249
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public static varargs CreateMavlinkSetPhotoSensors([Lcom/parrot/arsdk/armavlink/MAV_PHOTO_SENSORS_FLAG;)Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;
    .locals 8
    .param p0, "sensors"    # [Lcom/parrot/arsdk/armavlink/MAV_PHOTO_SENSORS_FLAG;

    .prologue
    .line 594
    const/4 v0, 0x0

    .line 595
    .local v0, "bitfield":I
    array-length v6, p0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v3, p0, v5

    .line 596
    .local v3, "sensor":Lcom/parrot/arsdk/armavlink/MAV_PHOTO_SENSORS_FLAG;
    invoke-virtual {v3}, Lcom/parrot/arsdk/armavlink/MAV_PHOTO_SENSORS_FLAG;->getValue()I

    move-result v7

    or-int/2addr v0, v7

    .line 595
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 598
    .end local v3    # "sensor":Lcom/parrot/arsdk/armavlink/MAV_PHOTO_SENSORS_FLAG;
    :cond_0
    new-instance v2, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;

    invoke-direct {v2}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;-><init>()V

    .line 599
    .local v2, "missionItem":Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;
    invoke-virtual {v2}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->getNativePointer()J

    move-result-wide v6

    invoke-static {v6, v7, v0}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeCreateMavlinkSetPhotoSensors(JI)I

    move-result v4

    .line 601
    .local v4, "value":I
    invoke-static {v4}, Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;

    move-result-object v1

    .line 603
    .local v1, "error":Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;
    sget-object v5, Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;->ARMAVLINK_OK:Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;

    if-ne v1, v5, :cond_1

    .line 605
    invoke-virtual {v2}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->updateFromNative()V

    .line 613
    :goto_1
    return-object v2

    .line 609
    :cond_1
    sget-object v5, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Create Mavlink Mission Item Error : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    invoke-virtual {v2}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->dispose()V

    .line 611
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static CreateMavlinkSetPictureMode(Lcom/parrot/arsdk/armavlink/MAV_STILL_CAPTURE_MODE_TYPE;F)Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;
    .locals 6
    .param p0, "mode"    # Lcom/parrot/arsdk/armavlink/MAV_STILL_CAPTURE_MODE_TYPE;
    .param p1, "interval"    # F

    .prologue
    .line 567
    new-instance v1, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;

    invoke-direct {v1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;-><init>()V

    .line 568
    .local v1, "missionItem":Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;
    invoke-virtual {v1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->getNativePointer()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/parrot/arsdk/armavlink/MAV_STILL_CAPTURE_MODE_TYPE;->ordinal()I

    move-result v3

    invoke-static {v4, v5, v3, p1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeCreateMavlinkSetPictureMode(JIF)I

    move-result v2

    .line 570
    .local v2, "value":I
    invoke-static {v2}, Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;

    move-result-object v0

    .line 572
    .local v0, "error":Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;
    sget-object v3, Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;->ARMAVLINK_OK:Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;

    if-ne v0, v3, :cond_0

    .line 574
    invoke-virtual {v1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->updateFromNative()V

    .line 582
    :goto_0
    return-object v1

    .line 578
    :cond_0
    sget-object v3, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Create Mavlink Mission Item Error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    invoke-virtual {v1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->dispose()V

    .line 580
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static CreateMavlinkSetROI(Lcom/parrot/arsdk/armavlink/MAV_ROI;IIFFF)Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;
    .locals 11
    .param p0, "mode"    # Lcom/parrot/arsdk/armavlink/MAV_ROI;
    .param p1, "missionIndex"    # I
    .param p2, "roiIndex"    # I
    .param p3, "latitude"    # F
    .param p4, "longitude"    # F
    .param p5, "altitude"    # F

    .prologue
    .line 510
    new-instance v9, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;

    invoke-direct {v9}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;-><init>()V

    .line 511
    .local v9, "missionItem":Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;
    invoke-virtual {v9}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->getNativePointer()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/parrot/arsdk/armavlink/MAV_ROI;->ordinal()I

    move-result v2

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    invoke-static/range {v0 .. v7}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeCreateMavlinkSetROI(JIIIFFF)I

    move-result v10

    .line 513
    .local v10, "value":I
    invoke-static {v10}, Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;

    move-result-object v8

    .line 515
    .local v8, "error":Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;
    sget-object v0, Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;->ARMAVLINK_OK:Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;

    if-ne v8, v0, :cond_0

    .line 517
    invoke-virtual {v9}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->updateFromNative()V

    .line 525
    :goto_0
    return-object v9

    .line 521
    :cond_0
    sget-object v0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Create Mavlink Mission Item Error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    invoke-virtual {v9}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->dispose()V

    .line 523
    const/4 v9, 0x0

    goto :goto_0
.end method

.method public static CreateMavlinkSetViewMode(Lcom/parrot/arsdk/armavlink/MAV_VIEW_MODE_TYPE;I)Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;
    .locals 6
    .param p0, "viewModeType"    # Lcom/parrot/arsdk/armavlink/MAV_VIEW_MODE_TYPE;
    .param p1, "roiIndex"    # I

    .prologue
    .line 537
    new-instance v1, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;

    invoke-direct {v1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;-><init>()V

    .line 538
    .local v1, "missionItem":Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;
    invoke-virtual {v1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->getNativePointer()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/parrot/arsdk/armavlink/MAV_VIEW_MODE_TYPE;->ordinal()I

    move-result v3

    invoke-static {v4, v5, v3, p1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeCreateMavlinkSetViewMode(JII)I

    move-result v2

    .line 540
    .local v2, "value":I
    invoke-static {v2}, Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;

    move-result-object v0

    .line 542
    .local v0, "error":Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;
    sget-object v3, Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;->ARMAVLINK_OK:Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;

    if-ne v0, v3, :cond_0

    .line 544
    invoke-virtual {v1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->updateFromNative()V

    .line 552
    :goto_0
    return-object v1

    .line 548
    :cond_0
    sget-object v3, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Create Mavlink Mission Item Error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    invoke-virtual {v1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->dispose()V

    .line 550
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static CreateMavlinkTakeoffMissionItem(FFFFF)Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;
    .locals 10
    .param p0, "latitude"    # F
    .param p1, "longitude"    # F
    .param p2, "altitude"    # F
    .param p3, "yaw"    # F
    .param p4, "pitch"    # F

    .prologue
    .line 320
    new-instance v8, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;

    invoke-direct {v8}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;-><init>()V

    .line 321
    .local v8, "missionItem":Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;
    invoke-virtual {v8}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->getNativePointer()J

    move-result-wide v0

    move v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeCreateMavlinkTakeoffMissionItem(JFFFFF)I

    move-result v9

    .line 323
    .local v9, "value":I
    invoke-static {v9}, Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;

    move-result-object v7

    .line 325
    .local v7, "error":Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;
    sget-object v0, Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;->ARMAVLINK_OK:Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;

    if-ne v7, v0, :cond_0

    .line 327
    invoke-virtual {v8}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->updateFromNative()V

    .line 335
    :goto_0
    return-object v8

    .line 331
    :cond_0
    sget-object v0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Create Mavlink Mission Item Error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    invoke-virtual {v8}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->dispose()V

    .line 333
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public static CreateMavlinkVideoStartCaptureMissionItem(IFF)Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;
    .locals 6
    .param p0, "cameraId"    # I
    .param p1, "framesPerSeconds"    # F
    .param p2, "resolution"    # F

    .prologue
    .line 347
    new-instance v1, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;

    invoke-direct {v1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;-><init>()V

    .line 348
    .local v1, "missionItem":Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;
    invoke-virtual {v1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->getNativePointer()J

    move-result-wide v4

    invoke-static {v4, v5, p0, p1, p2}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeCreateMavlinkVideoStartCapture(JIFF)I

    move-result v2

    .line 350
    .local v2, "value":I
    invoke-static {v2}, Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;

    move-result-object v0

    .line 352
    .local v0, "error":Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;
    sget-object v3, Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;->ARMAVLINK_OK:Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;

    if-ne v0, v3, :cond_0

    .line 354
    invoke-virtual {v1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->updateFromNative()V

    .line 362
    :goto_0
    return-object v1

    .line 358
    :cond_0
    sget-object v3, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Create Mavlink Mission Item Error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    invoke-virtual {v1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->dispose()V

    .line 360
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static CreateMavlinkVideoStopCaptureMissionItem()Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;
    .locals 6

    .prologue
    .line 371
    new-instance v1, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;

    invoke-direct {v1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;-><init>()V

    .line 372
    .local v1, "missionItem":Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;
    invoke-virtual {v1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->getNativePointer()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeCreateMavlinkVideoStopCapture(J)I

    move-result v2

    .line 374
    .local v2, "value":I
    invoke-static {v2}, Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;

    move-result-object v0

    .line 376
    .local v0, "error":Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;
    sget-object v3, Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;->ARMAVLINK_OK:Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;

    if-ne v0, v3, :cond_0

    .line 378
    invoke-virtual {v1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->updateFromNative()V

    .line 386
    :goto_0
    return-object v1

    .line 382
    :cond_0
    sget-object v3, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Create Mavlink Mission Item Error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    invoke-virtual {v1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->dispose()V

    .line 384
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static native nativeCreateMavlinkChangeSpeedMissionItem(JIFF)I
.end method

.method private static native nativeCreateMavlinkCreatePanorama(JFFFF)I
.end method

.method private static native nativeCreateMavlinkDelay(JF)I
.end method

.method private static native nativeCreateMavlinkImageStartCapture(JFFF)I
.end method

.method private static native nativeCreateMavlinkImageStopCapture(J)I
.end method

.method private static native nativeCreateMavlinkLandMissionItem(JFFFF)I
.end method

.method private static native nativeCreateMavlinkMissionItemWithAllParams(JFFFFFFFIIIII)I
.end method

.method private static native nativeCreateMavlinkNavWaypointMissionItem(JFFFF)I
.end method

.method private static native nativeCreateMavlinkNavWaypointMissionItemWithRadius(JFFFF)I
.end method

.method private static native nativeCreateMavlinkSetPhotoSensors(JI)I
.end method

.method private static native nativeCreateMavlinkSetPictureMode(JIF)I
.end method

.method private static native nativeCreateMavlinkSetROI(JIIIFFF)I
.end method

.method private static native nativeCreateMavlinkSetViewMode(JII)I
.end method

.method private static native nativeCreateMavlinkTakeoffMissionItem(JFFFFF)I
.end method

.method private static native nativeCreateMavlinkVideoStartCapture(JIFF)I
.end method

.method private static native nativeCreateMavlinkVideoStopCapture(J)I
.end method

.method private native nativeDelete(J)J
.end method

.method private native nativeGetAutocontinue(J)I
.end method

.method private native nativeGetCommand(J)I
.end method

.method private native nativeGetCurrent(J)I
.end method

.method private native nativeGetFrame(J)I
.end method

.method private native nativeGetParam1(J)F
.end method

.method private native nativeGetParam2(J)F
.end method

.method private native nativeGetParam3(J)F
.end method

.method private native nativeGetParam4(J)F
.end method

.method private native nativeGetSeq(J)I
.end method

.method private native nativeGetTargetComponent(J)I
.end method

.method private native nativeGetTargetSystem(J)I
.end method

.method private native nativeGetX(J)F
.end method

.method private native nativeGetY(J)F
.end method

.method private native nativeGetZ(J)F
.end method

.method private native nativeNew()J
.end method

.method private native nativeSetAutocontinue(JI)V
.end method

.method private native nativeSetCommand(JI)V
.end method

.method private native nativeSetCurrent(JI)V
.end method

.method private native nativeSetFrame(JI)V
.end method

.method private native nativeSetParam1(JF)V
.end method

.method private native nativeSetParam2(JF)V
.end method

.method private native nativeSetParam3(JF)V
.end method

.method private native nativeSetParam4(JF)V
.end method

.method private native nativeSetSeq(JI)V
.end method

.method private native nativeSetTargetComponent(JI)V
.end method

.method private native nativeSetTargetSystem(JI)V
.end method

.method private native nativeSetX(JF)V
.end method

.method private native nativeSetY(JF)V
.end method

.method private native nativeSetZ(JF)V
.end method


# virtual methods
.method public dispose()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 139
    iget-wide v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->isCreateByMe:Z

    if-eqz v0, :cond_0

    .line 141
    iget-wide v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    invoke-direct {p0, v0, v1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeDelete(J)J

    .line 142
    iput-wide v2, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    .line 144
    :cond_0
    return-void
.end method

.method public finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 153
    :try_start_0
    invoke-virtual {p0}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 159
    return-void

    .line 157
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getAutocontinue()I
    .locals 1

    .prologue
    .line 871
    iget v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->autocontinue:I

    return v0
.end method

.method public getCommand()I
    .locals 1

    .prologue
    .line 810
    iget v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->command:I

    return v0
.end method

.method public getFrame()I
    .locals 1

    .prologue
    .line 846
    iget v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->frame:I

    return v0
.end method

.method public getNativePointer()J
    .locals 2

    .prologue
    .line 131
    iget-wide v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    return-wide v0
.end method

.method public getParam1()F
    .locals 1

    .prologue
    .line 651
    iget v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->param1:F

    return v0
.end method

.method public getParam1FromNative()F
    .locals 6

    .prologue
    .line 656
    const/high16 v0, -0x40800000    # -1.0f

    .line 657
    .local v0, "retVal":F
    iget-wide v2, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 658
    iget-wide v2, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    invoke-direct {p0, v2, v3}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeGetParam1(J)F

    move-result v0

    .line 660
    :cond_0
    return v0
.end method

.method public getParam2()F
    .locals 1

    .prologue
    .line 672
    iget v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->param2:F

    return v0
.end method

.method public getParam2FromNative()F
    .locals 6

    .prologue
    .line 677
    const/high16 v0, -0x40800000    # -1.0f

    .line 678
    .local v0, "retVal":F
    iget-wide v2, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 679
    iget-wide v2, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    invoke-direct {p0, v2, v3}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeGetParam2(J)F

    move-result v0

    .line 681
    :cond_0
    return v0
.end method

.method public getParam3()F
    .locals 1

    .prologue
    .line 693
    iget v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->param3:F

    return v0
.end method

.method public getParam3FromNative()F
    .locals 6

    .prologue
    .line 698
    const/high16 v0, -0x40800000    # -1.0f

    .line 699
    .local v0, "retVal":F
    iget-wide v2, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 700
    iget-wide v2, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    invoke-direct {p0, v2, v3}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeGetParam3(J)F

    move-result v0

    .line 702
    :cond_0
    return v0
.end method

.method public getParam4()F
    .locals 1

    .prologue
    .line 714
    iget v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->param4:F

    return v0
.end method

.method public getParam4FromNative()F
    .locals 6

    .prologue
    .line 719
    const/high16 v0, -0x40800000    # -1.0f

    .line 720
    .local v0, "retVal":F
    iget-wide v2, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 721
    iget-wide v2, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    invoke-direct {p0, v2, v3}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeGetParam4(J)F

    move-result v0

    .line 723
    :cond_0
    return v0
.end method

.method public getSeq()I
    .locals 1

    .prologue
    .line 798
    iget v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->seq:I

    return v0
.end method

.method public getTargetComponent()I
    .locals 1

    .prologue
    .line 834
    iget v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->target_component:I

    return v0
.end method

.method public getTargetSystem()I
    .locals 1

    .prologue
    .line 822
    iget v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->target_system:I

    return v0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 735
    iget v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->x:F

    return v0
.end method

.method public getXFromNative()F
    .locals 6

    .prologue
    .line 740
    const/high16 v0, -0x40800000    # -1.0f

    .line 741
    .local v0, "retVal":F
    iget-wide v2, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 742
    iget-wide v2, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    invoke-direct {p0, v2, v3}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeGetX(J)F

    move-result v0

    .line 744
    :cond_0
    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 756
    iget v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->y:F

    return v0
.end method

.method public getYFromNative()F
    .locals 6

    .prologue
    .line 761
    const/high16 v0, -0x40800000    # -1.0f

    .line 762
    .local v0, "retVal":F
    iget-wide v2, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 763
    iget-wide v2, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    invoke-direct {p0, v2, v3}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeGetY(J)F

    move-result v0

    .line 765
    :cond_0
    return v0
.end method

.method public getZ()F
    .locals 1

    .prologue
    .line 777
    iget v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->z:F

    return v0
.end method

.method public getZFromNative()F
    .locals 6

    .prologue
    .line 782
    const/high16 v0, -0x40800000    # -1.0f

    .line 783
    .local v0, "retVal":F
    iget-wide v2, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 784
    iget-wide v2, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    invoke-direct {p0, v2, v3}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeGetZ(J)F

    move-result v0

    .line 786
    :cond_0
    return v0
.end method

.method public isCurrent()Z
    .locals 1

    .prologue
    .line 858
    iget-boolean v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->current:Z

    return v0
.end method

.method public setAutocontinue(I)V
    .locals 4
    .param p1, "autocontinue"    # I

    .prologue
    .line 875
    iget-wide v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 877
    iput p1, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->autocontinue:I

    .line 878
    iget-wide v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    invoke-direct {p0, v0, v1, p1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeSetAutocontinue(JI)V

    .line 880
    :cond_0
    return-void
.end method

.method public setCommand(I)V
    .locals 4
    .param p1, "command"    # I

    .prologue
    .line 814
    iget-wide v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 816
    iput p1, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->command:I

    .line 817
    iget-wide v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    invoke-direct {p0, v0, v1, p1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeSetCommand(JI)V

    .line 819
    :cond_0
    return-void
.end method

.method public setCurrent(Z)V
    .locals 4
    .param p1, "current"    # Z

    .prologue
    .line 862
    iget-wide v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 864
    iput-boolean p1, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->current:Z

    .line 865
    if-eqz p1, :cond_1

    iget-wide v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeSetCurrent(JI)V

    .line 868
    :cond_0
    :goto_0
    return-void

    .line 866
    :cond_1
    iget-wide v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeSetCurrent(JI)V

    goto :goto_0
.end method

.method public setFrame(I)V
    .locals 4
    .param p1, "frame"    # I

    .prologue
    .line 850
    iget-wide v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 852
    iput p1, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->frame:I

    .line 853
    iget-wide v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    invoke-direct {p0, v0, v1, p1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeSetFrame(JI)V

    .line 855
    :cond_0
    return-void
.end method

.method public setParam1(F)V
    .locals 4
    .param p1, "param1"    # F

    .prologue
    .line 664
    iget-wide v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 666
    iput p1, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->param1:F

    .line 667
    iget-wide v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    invoke-direct {p0, v0, v1, p1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeSetParam1(JF)V

    .line 669
    :cond_0
    return-void
.end method

.method public setParam2(F)V
    .locals 4
    .param p1, "param2"    # F

    .prologue
    .line 685
    iget-wide v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 687
    iput p1, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->param2:F

    .line 688
    iget-wide v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    invoke-direct {p0, v0, v1, p1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeSetParam2(JF)V

    .line 690
    :cond_0
    return-void
.end method

.method public setParam3(F)V
    .locals 4
    .param p1, "param3"    # F

    .prologue
    .line 706
    iget-wide v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 708
    iput p1, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->param3:F

    .line 709
    iget-wide v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    invoke-direct {p0, v0, v1, p1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeSetParam3(JF)V

    .line 711
    :cond_0
    return-void
.end method

.method public setParam4(F)V
    .locals 4
    .param p1, "param4"    # F

    .prologue
    .line 727
    iget-wide v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 729
    iput p1, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->param4:F

    .line 730
    iget-wide v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    invoke-direct {p0, v0, v1, p1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeSetParam4(JF)V

    .line 732
    :cond_0
    return-void
.end method

.method public setSeq(I)V
    .locals 4
    .param p1, "seq"    # I

    .prologue
    .line 802
    iget-wide v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 804
    iput p1, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->seq:I

    .line 805
    iget-wide v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    invoke-direct {p0, v0, v1, p1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeSetSeq(JI)V

    .line 807
    :cond_0
    return-void
.end method

.method public setTargetComponent(I)V
    .locals 4
    .param p1, "target_component"    # I

    .prologue
    .line 838
    iget-wide v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 840
    iput p1, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->target_component:I

    .line 841
    iget-wide v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    invoke-direct {p0, v0, v1, p1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeSetTargetComponent(JI)V

    .line 843
    :cond_0
    return-void
.end method

.method public setTargetSystem(I)V
    .locals 4
    .param p1, "target_system"    # I

    .prologue
    .line 826
    iget-wide v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 828
    iput p1, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->target_system:I

    .line 829
    iget-wide v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    invoke-direct {p0, v0, v1, p1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeSetTargetSystem(JI)V

    .line 831
    :cond_0
    return-void
.end method

.method public setX(F)V
    .locals 4
    .param p1, "x"    # F

    .prologue
    .line 748
    iget-wide v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 750
    iput p1, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->x:F

    .line 751
    iget-wide v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    invoke-direct {p0, v0, v1, p1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeSetX(JF)V

    .line 753
    :cond_0
    return-void
.end method

.method public setY(F)V
    .locals 4
    .param p1, "y"    # F

    .prologue
    .line 769
    iget-wide v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 771
    iput p1, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->y:F

    .line 772
    iget-wide v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    invoke-direct {p0, v0, v1, p1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeSetY(JF)V

    .line 774
    :cond_0
    return-void
.end method

.method public setZ(F)V
    .locals 4
    .param p1, "z"    # F

    .prologue
    .line 790
    iget-wide v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 792
    iput p1, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->z:F

    .line 793
    iget-wide v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    invoke-direct {p0, v0, v1, p1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeSetZ(JF)V

    .line 795
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 884
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FPTimelineFragment [param1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->param1:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", param2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->param2:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", param3="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->param3:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", param4="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->param4:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", z="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->z:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", seq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->seq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", command="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->command:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", target_system="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->target_system:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", target_component="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->target_component:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", frame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->frame:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", current="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->current:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", autocontinue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->autocontinue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateCommandCode()V
    .locals 4

    .prologue
    .line 644
    iget-wide v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 645
    iget-wide v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    invoke-direct {p0, v0, v1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeGetCommand(J)I

    move-result v0

    iput v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->command:I

    .line 647
    :cond_0
    return-void
.end method

.method public updateFromNative()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 621
    iget-wide v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 623
    iget-wide v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    invoke-direct {p0, v0, v1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeGetParam1(J)F

    move-result v0

    iput v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->param1:F

    .line 624
    iget-wide v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    invoke-direct {p0, v0, v1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeGetParam2(J)F

    move-result v0

    iput v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->param2:F

    .line 625
    iget-wide v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    invoke-direct {p0, v0, v1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeGetParam3(J)F

    move-result v0

    iput v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->param3:F

    .line 626
    iget-wide v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    invoke-direct {p0, v0, v1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeGetParam4(J)F

    move-result v0

    iput v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->param4:F

    .line 627
    iget-wide v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    invoke-direct {p0, v0, v1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeGetX(J)F

    move-result v0

    iput v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->x:F

    .line 628
    iget-wide v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    invoke-direct {p0, v0, v1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeGetY(J)F

    move-result v0

    iput v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->y:F

    .line 629
    iget-wide v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    invoke-direct {p0, v0, v1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeGetZ(J)F

    move-result v0

    iput v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->z:F

    .line 630
    iget-wide v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    invoke-direct {p0, v0, v1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeGetSeq(J)I

    move-result v0

    iput v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->seq:I

    .line 631
    iget-wide v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    invoke-direct {p0, v0, v1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeGetCommand(J)I

    move-result v0

    iput v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->command:I

    .line 632
    iget-wide v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    invoke-direct {p0, v0, v1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeGetTargetSystem(J)I

    move-result v0

    iput v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->target_system:I

    .line 633
    iget-wide v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    invoke-direct {p0, v0, v1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeGetTargetComponent(J)I

    move-result v0

    iput v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->target_component:I

    .line 634
    iget-wide v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    invoke-direct {p0, v0, v1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeGetFrame(J)I

    move-result v0

    iput v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->frame:I

    .line 635
    iget-wide v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    invoke-direct {p0, v0, v1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeGetCurrent(J)I

    move-result v0

    if-ne v0, v4, :cond_1

    iput-boolean v4, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->current:Z

    .line 637
    :goto_0
    iget-wide v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    invoke-direct {p0, v0, v1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeGetAutocontinue(J)I

    move-result v0

    iput v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->autocontinue:I

    .line 640
    :cond_0
    return-void

    .line 636
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->current:Z

    goto :goto_0
.end method
