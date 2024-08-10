.class public Lcom/parrot/controller/stream/FrameMetadata;
.super Ljava/lang/Object;
.source "FrameMetadata.java"


# instance fields
.field private final mAuTimestamp:J

.field private final mMetadataAvailable:Z

.field private final mQuaternionW:F

.field private final mQuaternionX:F

.field private final mQuaternionY:F

.field private final mQuaternionZ:F


# direct methods
.method public constructor <init>(JZFFFF)V
    .locals 1
    .param p1, "auTimestamp"    # J
    .param p3, "metadataAvailable"    # Z
    .param p4, "quaternionW"    # F
    .param p5, "quaternionX"    # F
    .param p6, "quaternionY"    # F
    .param p7, "quaternionZ"    # F

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-wide p1, p0, Lcom/parrot/controller/stream/FrameMetadata;->mAuTimestamp:J

    .line 16
    iput-boolean p3, p0, Lcom/parrot/controller/stream/FrameMetadata;->mMetadataAvailable:Z

    .line 17
    iput p4, p0, Lcom/parrot/controller/stream/FrameMetadata;->mQuaternionW:F

    .line 18
    iput p5, p0, Lcom/parrot/controller/stream/FrameMetadata;->mQuaternionX:F

    .line 19
    iput p6, p0, Lcom/parrot/controller/stream/FrameMetadata;->mQuaternionY:F

    .line 20
    iput p7, p0, Lcom/parrot/controller/stream/FrameMetadata;->mQuaternionZ:F

    .line 21
    return-void
.end method


# virtual methods
.method public getAuTimestamp()J
    .locals 2

    .prologue
    .line 24
    iget-wide v0, p0, Lcom/parrot/controller/stream/FrameMetadata;->mAuTimestamp:J

    return-wide v0
.end method

.method public getMetadataAvailable()Z
    .locals 1

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/parrot/controller/stream/FrameMetadata;->mMetadataAvailable:Z

    return v0
.end method

.method public getQuaternionW()F
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/parrot/controller/stream/FrameMetadata;->mQuaternionW:F

    return v0
.end method

.method public getQuaternionX()F
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/parrot/controller/stream/FrameMetadata;->mQuaternionX:F

    return v0
.end method

.method public getQuaternionY()F
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/parrot/controller/stream/FrameMetadata;->mQuaternionY:F

    return v0
.end method

.method public getQuaternionZ()F
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/parrot/controller/stream/FrameMetadata;->mQuaternionZ:F

    return v0
.end method
