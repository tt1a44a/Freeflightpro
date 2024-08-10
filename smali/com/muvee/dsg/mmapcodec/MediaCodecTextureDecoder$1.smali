.class Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder$1;
.super Lcom/muvee/dsg/mmap/api/os/util/LockRunnable;
.source "MediaCodecTextureDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->a(Lcom/muvee/dsg/mmapcodec/CodecInitParams;)Lcom/muvee/dsg/mmapcodec/CodecInitParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/muvee/dsg/mmap/api/os/util/LockRunnable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/muvee/dsg/mmapcodec/CodecInitParams;

.field final synthetic b:Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;


# direct methods
.method constructor <init>(Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;Lcom/muvee/dsg/mmapcodec/CodecInitParams;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder$1;->b:Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;

    iput-object p2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder$1;->a:Lcom/muvee/dsg/mmapcodec/CodecInitParams;

    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/os/util/LockRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method protected synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder$1;->b()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected b()Ljava/lang/Void;
    .locals 3

    .prologue
    .line 134
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder$1;->b:Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;

    new-instance v1, Landroid/media/MediaExtractor;

    invoke-direct {v1}, Landroid/media/MediaExtractor;-><init>()V

    invoke-static {v0, v1}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->a(Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;Landroid/media/MediaExtractor;)Landroid/media/MediaExtractor;

    .line 136
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder$1;->b:Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;

    invoke-static {v0}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->a(Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;)Landroid/media/MediaExtractor;

    move-result-object v0

    iget-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder$1;->a:Lcom/muvee/dsg/mmapcodec/CodecInitParams;

    iget-object v1, v1, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :goto_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder$1;->b:Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;

    invoke-static {v1}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->a(Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;)Landroid/media/MediaExtractor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 141
    iget-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder$1;->b:Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;

    invoke-static {v1}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->a(Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;)Landroid/media/MediaExtractor;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v1

    .line 142
    const-string v2, "mime"

    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 143
    const-string/jumbo v2, "video/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 144
    iget-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder$1;->b:Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;

    invoke-static {v1}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->a(Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;)Landroid/media/MediaExtractor;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 148
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EXTRACTOR"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/os/util/ThreadFactory;->quit(Ljava/lang/String;)V

    .line 149
    const/4 v0, 0x0

    return-object v0

    .line 137
    :catch_0
    move-exception v0

    .line 138
    const-string v0, "mediaCodectextureDecoder"

    const-string v1, "Extractor Set Data Source failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 140
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
