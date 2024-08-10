.class Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$1;
.super Ljava/lang/Object;
.source "MediaCodecTextureEncoder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->init(Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;Lcom/muvee/dsg/mmapcodec/MediaCodecCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/muvee/dsg/mmapcodec/MediaCodecCallBack;

.field final synthetic b:Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;


# direct methods
.method constructor <init>(Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;Lcom/muvee/dsg/mmapcodec/MediaCodecCallBack;)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$1;->b:Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;

    iput-object p2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$1;->a:Lcom/muvee/dsg/mmapcodec/MediaCodecCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 221
    :cond_0
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 222
    iget-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$1;->b:Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;

    invoke-static {v1}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->a(Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;)Landroid/media/MediaCodec;

    move-result-object v1

    const-wide/16 v2, -0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v1

    .line 223
    if-ltz v1, :cond_0

    .line 224
    const-string v2, "com.muvee.studio.codec.MediaCodecTextureEncoder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onOutputBufferAvailable: ++"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$1;->a:Lcom/muvee/dsg/mmapcodec/MediaCodecCallBack;

    if-eqz v2, :cond_1

    .line 227
    iget-object v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$1;->a:Lcom/muvee/dsg/mmapcodec/MediaCodecCallBack;

    iget-object v3, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$1;->b:Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;

    invoke-static {v3}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->a(Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;)Landroid/media/MediaCodec;

    move-result-object v3

    invoke-virtual {v2, v3, v1, v0}, Lcom/muvee/dsg/mmapcodec/MediaCodecCallBack;->onOutputBufferAvailable(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$BufferInfo;)V

    .line 230
    :cond_1
    iget-object v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$1;->b:Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;

    invoke-static {v2}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->a(Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;)Landroid/media/MediaCodec;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 231
    const-string v1, "com.muvee.studio.codec.MediaCodecTextureEncoder"

    const-string/jumbo v2, "onOutputBufferAvailable: --"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 240
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$1;->b:Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;

    invoke-virtual {v0}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->closeCodec()V

    .line 241
    const-string v0, "ENCODER_OUTPUT_THREAD"

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->quit(Ljava/lang/String;)V

    .line 242
    return-void
.end method
