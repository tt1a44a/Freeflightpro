.class public Lcom/parrot/arsdk/frameinfo/FrameInfoDeserializer;
.super Ljava/lang/Object;
.source "FrameInfoDeserializer.java"


# instance fields
.field private mAvailable:Z

.field private mQuaternionW:F

.field private mQuaternionX:F

.field private mQuaternionY:F

.field private mQuaternionZ:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 6
    invoke-static {}, Lcom/parrot/arsdk/frameinfo/FrameInfoDeserializer;->nativeStaticInit()V

    .line 7
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native nativeDeserialize(JI)V
.end method

.method private static native nativeStaticInit()V
.end method

.method private onMetadataAvailable(ZFFFF)V
    .locals 0
    .param p1, "available"    # Z
    .param p2, "quaternionW"    # F
    .param p3, "quaternionX"    # F
    .param p4, "quaternionY"    # F
    .param p5, "quaternionZ"    # F

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/parrot/arsdk/frameinfo/FrameInfoDeserializer;->mAvailable:Z

    .line 43
    iput p2, p0, Lcom/parrot/arsdk/frameinfo/FrameInfoDeserializer;->mQuaternionW:F

    .line 44
    iput p3, p0, Lcom/parrot/arsdk/frameinfo/FrameInfoDeserializer;->mQuaternionX:F

    .line 45
    iput p4, p0, Lcom/parrot/arsdk/frameinfo/FrameInfoDeserializer;->mQuaternionY:F

    .line 46
    iput p5, p0, Lcom/parrot/arsdk/frameinfo/FrameInfoDeserializer;->mQuaternionZ:F

    .line 47
    return-void
.end method


# virtual methods
.method public getQuaternionW()F
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/parrot/arsdk/frameinfo/FrameInfoDeserializer;->mQuaternionW:F

    return v0
.end method

.method public getQuaternionX()F
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/parrot/arsdk/frameinfo/FrameInfoDeserializer;->mQuaternionX:F

    return v0
.end method

.method public getQuaternionY()F
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/parrot/arsdk/frameinfo/FrameInfoDeserializer;->mQuaternionY:F

    return v0
.end method

.method public getQuaternionZ()F
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/parrot/arsdk/frameinfo/FrameInfoDeserializer;->mQuaternionZ:F

    return v0
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/parrot/arsdk/frameinfo/FrameInfoDeserializer;->mAvailable:Z

    return v0
.end method

.method public loadMetadata(JI)V
    .locals 1
    .param p1, "metadata"    # J
    .param p3, "metadataSize"    # I

    .prologue
    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/arsdk/frameinfo/FrameInfoDeserializer;->mAvailable:Z

    .line 18
    invoke-direct {p0, p1, p2, p3}, Lcom/parrot/arsdk/frameinfo/FrameInfoDeserializer;->nativeDeserialize(JI)V

    .line 19
    return-void
.end method
