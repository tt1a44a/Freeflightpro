.class Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$2;
.super Ljava/lang/Object;
.source "MediaCodecTextureEncoder.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;


# direct methods
.method constructor <init>(Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;I)V
    .locals 0

    .prologue
    .line 269
    iput-object p1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$2;->b:Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;

    iput p2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 8

    .prologue
    .line 272
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$2;->b:Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;

    invoke-static {v0}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->b(Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;)[Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iget v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$2;->a:I

    aget-object v1, v0, v1

    monitor-enter v1

    .line 273
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$2;->b:Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;

    iget-object v0, v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->mSurfaceFrameCount:[J

    iget v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$2;->a:I

    aget-wide v4, v0, v2

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    aput-wide v4, v0, v2

    .line 274
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$2;->b:Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;

    invoke-static {v0}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->b(Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;)[Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iget v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$2;->a:I

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 275
    monitor-exit v1

    .line 276
    return-void

    .line 275
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
