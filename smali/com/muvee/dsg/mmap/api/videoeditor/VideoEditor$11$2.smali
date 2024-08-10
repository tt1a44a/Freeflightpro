.class Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$11$2;
.super Lcom/muvee/dsg/mmapcodec/MediaCodecCallBack;
.source "VideoEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$11;->a()Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;

.field final synthetic b:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$11;


# direct methods
.method constructor <init>(Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$11;Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;)V
    .locals 0

    .prologue
    .line 944
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$11$2;->b:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$11;

    iput-object p2, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$11$2;->a:Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;

    invoke-direct {p0}, Lcom/muvee/dsg/mmapcodec/MediaCodecCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public onOutputBufferAvailable(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 5

    .prologue
    .line 947
    invoke-static {}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "::onOutputBufferAvailable: video %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$11$2;->a:Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v1

    invoke-virtual {p1, p2}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p3}, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;->writeVideoSampleData(Landroid/media/MediaFormat;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 949
    return-void
.end method
