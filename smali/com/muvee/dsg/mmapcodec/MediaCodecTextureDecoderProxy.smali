.class public Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderProxy;
.super Lcom/muvee/dsg/mmapcodec/Codec;
.source "MediaCodecTextureDecoderProxy.java"


# static fields
.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/muvee/dsg/mmapcodec/Codec;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/muvee/dsg/mmapcodec/CodecInitParams;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/muvee/dsg/mmapcodec/CodecFrameParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private d:Lcom/muvee/dsg/mmapcodec/Codec;

.field private e:Lcom/muvee/dsg/mmapcodec/CodecInitParams;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderProxy;->a:Ljava/util/Map;

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderProxy;->b:Ljava/util/Map;

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderProxy;->c:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/muvee/dsg/mmapcodec/Codec;-><init>()V

    return-void
.end method

.method public static clearCache()V
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderProxy;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 58
    return-void
.end method

.method public static closeAll()V
    .locals 2

    .prologue
    .line 20
    const-string v0, "com.muvee.dsg.mmapcodec.MediaCodecTextureDecoderProxy"

    const-string v1, "::closeAll:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderProxy;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muvee/dsg/mmapcodec/Codec;

    .line 23
    invoke-virtual {v0}, Lcom/muvee/dsg/mmapcodec/Codec;->closeCodec()V

    goto :goto_0

    .line 26
    :cond_0
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderProxy;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 27
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderProxy;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 28
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderProxy;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 29
    return-void
.end method


# virtual methods
.method public closeCodec()V
    .locals 2

    .prologue
    .line 64
    const-string v0, "com.muvee.dsg.mmapcodec.MediaCodecTextureDecoderProxy"

    const-string v1, "::closeCodec:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    return-void
.end method

.method public getNextFrame(Lcom/muvee/dsg/mmapcodec/CodecFrameParams;)Lcom/muvee/dsg/mmapcodec/CodecFrameParams;
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 71
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderProxy;->c:Ljava/util/Map;

    iget-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderProxy;->e:Lcom/muvee/dsg/mmapcodec/CodecInitParams;

    iget-object v1, v1, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mFileName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;

    .line 72
    iget-object v1, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mSeekMode:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSeekMode;

    sget-object v2, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSeekMode;->MV_CSM_NONE:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSeekMode;

    if-eq v1, v2, :cond_0

    if-eqz v0, :cond_0

    iget-wide v2, v0, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mOutTimeStamp:J

    iget-wide v4, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mInTimeStamp:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/32 v4, 0xf4240

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 73
    const-string v1, "com.muvee.dsg.mmapcodec.MediaCodecTextureDecoderProxy"

    const-string v2, "::getNextFrame cached frame: seekMode=%s,in=%d,out=%d,texture=%d"

    new-array v3, v12, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mSeekMode:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSeekMode;

    aput-object v4, v3, v8

    iget-wide v4, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mInTimeStamp:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v9

    iget-wide v4, v0, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mOutTimeStamp:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v10

    iget v4, v0, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mOutTextureId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v11

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :goto_0
    return-object v0

    .line 81
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 82
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderProxy;->d:Lcom/muvee/dsg/mmapcodec/Codec;

    invoke-virtual {v0, p1}, Lcom/muvee/dsg/mmapcodec/Codec;->getNextFrame(Lcom/muvee/dsg/mmapcodec/CodecFrameParams;)Lcom/muvee/dsg/mmapcodec/CodecFrameParams;

    move-result-object v0

    .line 83
    iget v1, v0, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mOutTextureId:I

    if-lez v1, :cond_1

    .line 84
    sget-object v1, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderProxy;->c:Ljava/util/Map;

    iget-object v4, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderProxy;->e:Lcom/muvee/dsg/mmapcodec/CodecInitParams;

    iget-object v4, v4, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mFileName:Ljava/lang/String;

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    :goto_1
    const-string v1, "com.muvee.dsg.mmapcodec.MediaCodecTextureDecoderProxy"

    const-string v4, "::getNextFrame: timeTaken=%d"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v6, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const-string v1, "com.muvee.dsg.mmapcodec.MediaCodecTextureDecoderProxy"

    const-string v2, "::getNextFrame: seekMode=%s,in=%d,out=%d,texture=%d,lastFrame=%d"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mSeekMode:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSeekMode;

    aput-object v4, v3, v8

    iget-wide v4, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mInTimeStamp:J

    .line 93
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v9

    iget-wide v4, v0, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mOutTimeStamp:J

    .line 94
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v10

    iget v4, v0, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mOutTextureId:I

    .line 95
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v11

    iget v4, v0, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mLastFrame:I

    .line 96
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v12

    .line 91
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 86
    :cond_1
    sget-object v1, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderProxy;->c:Ljava/util/Map;

    iget-object v4, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderProxy;->e:Lcom/muvee/dsg/mmapcodec/CodecInitParams;

    iget-object v4, v4, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mFileName:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public init(Lcom/muvee/dsg/mmapcodec/CodecInitParams;)Lcom/muvee/dsg/mmapcodec/CodecInitParams;
    .locals 5

    .prologue
    .line 37
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderProxy;->a:Ljava/util/Map;

    iget-object v1, p1, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mFileName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muvee/dsg/mmapcodec/Codec;

    iput-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderProxy;->d:Lcom/muvee/dsg/mmapcodec/Codec;

    .line 39
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderProxy;->b:Ljava/util/Map;

    iget-object v1, p1, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mFileName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muvee/dsg/mmapcodec/CodecInitParams;

    iput-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderProxy;->e:Lcom/muvee/dsg/mmapcodec/CodecInitParams;

    .line 41
    const-string v0, "com.muvee.dsg.mmapcodec.MediaCodecTextureDecoderProxy"

    const-string v1, "::init: %s,%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderProxy;->d:Lcom/muvee/dsg/mmapcodec/Codec;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderProxy;->e:Lcom/muvee/dsg/mmapcodec/CodecInitParams;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderProxy;->d:Lcom/muvee/dsg/mmapcodec/Codec;

    if-nez v0, :cond_0

    .line 44
    invoke-static {}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderProxy;->closeAll()V

    .line 45
    new-instance v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;

    invoke-direct {v0}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderProxy;->d:Lcom/muvee/dsg/mmapcodec/Codec;

    .line 46
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderProxy;->a:Ljava/util/Map;

    iget-object v1, p1, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mFileName:Ljava/lang/String;

    iget-object v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderProxy;->d:Lcom/muvee/dsg/mmapcodec/Codec;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderProxy;->d:Lcom/muvee/dsg/mmapcodec/Codec;

    invoke-virtual {v0, p1}, Lcom/muvee/dsg/mmapcodec/Codec;->init(Lcom/muvee/dsg/mmapcodec/CodecInitParams;)Lcom/muvee/dsg/mmapcodec/CodecInitParams;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderProxy;->e:Lcom/muvee/dsg/mmapcodec/CodecInitParams;

    .line 48
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderProxy;->b:Ljava/util/Map;

    iget-object v1, p1, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mFileName:Ljava/lang/String;

    iget-object v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderProxy;->e:Lcom/muvee/dsg/mmapcodec/CodecInitParams;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderProxy;->e:Lcom/muvee/dsg/mmapcodec/CodecInitParams;

    .line 51
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderProxy;->e:Lcom/muvee/dsg/mmapcodec/CodecInitParams;

    goto :goto_0
.end method
