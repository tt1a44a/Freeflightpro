.class public abstract Lcom/muvee/dsg/mmapcodec/Codec;
.super Ljava/lang/Object;
.source "Codec.java"

# interfaces
.implements Lcom/muvee/dsg/mmapcodec/CodecConstants;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a([Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v0, 0x2

    .line 85
    new-array v2, v0, [I

    const/4 v1, 0x0

    aget-object v0, p0, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v2, v1

    const/4 v1, 0x1

    const/4 v0, 0x3

    aget-object v0, p0, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v2, v1

    .line 86
    array-length v0, p0

    add-int/lit8 v0, v0, -0x4

    new-array v3, v0, [I

    .line 88
    const/4 v0, 0x4

    move v1, v0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    .line 89
    add-int/lit8 v4, v1, -0x4

    aget-object v0, p0, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v3, v4

    .line 88
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 92
    :cond_0
    invoke-static {v3, v2}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->isTransitionPosible([I[I)Z

    move-result v0

    .line 94
    return v0
.end method

.method public static createCodec([Ljava/lang/Object;)Lcom/muvee/dsg/mmapcodec/Codec;
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 17
    aget-object v0, p0, v3

    const-string v1, "encoder"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    invoke-static {}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->getInstance()Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;

    move-result-object v0

    .line 40
    :goto_0
    return-object v0

    .line 19
    :cond_0
    aget-object v0, p0, v3

    const-string v1, "decoder"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 21
    invoke-static {}, Lcom/muvee/dsg/sdk/Engine;->getInstance()Lcom/muvee/dsg/sdk/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muvee/dsg/sdk/Engine;->isAdvancedMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 22
    new-instance v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderProxy;

    invoke-direct {v0}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderProxy;-><init>()V

    goto :goto_0

    .line 23
    :cond_1
    invoke-static {}, Lcom/muvee/dsg/sdk/Engine;->getInstance()Lcom/muvee/dsg/sdk/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muvee/dsg/sdk/Engine;->isUseAysnDecoder()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 24
    new-instance v0, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;

    invoke-direct {v0}, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;-><init>()V

    goto :goto_0

    .line 27
    :cond_2
    new-instance v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;

    invoke-direct {v0}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;-><init>()V

    goto :goto_0

    .line 29
    :cond_3
    aget-object v0, p0, v3

    const-string/jumbo v1, "thumb"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 30
    new-instance v0, Lcom/muvee/dsg/mmapcodec/MediaCodecThumbDecoder;

    invoke-direct {v0}, Lcom/muvee/dsg/mmapcodec/MediaCodecThumbDecoder;-><init>()V

    goto :goto_0

    .line 31
    :cond_4
    aget-object v0, p0, v3

    const-string v1, "image"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 32
    new-instance v0, Lcom/muvee/dsg/mmapcodec/MediaCodecImageDecoder;

    invoke-direct {v0}, Lcom/muvee/dsg/mmapcodec/MediaCodecImageDecoder;-><init>()V

    goto :goto_0

    .line 33
    :cond_5
    aget-object v0, p0, v3

    const-string v1, "bufencoder"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 34
    invoke-static {}, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder;->getInstance()Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder;

    move-result-object v0

    goto :goto_0

    .line 35
    :cond_6
    aget-object v0, p0, v3

    const-string v1, "bufdecoder"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 36
    new-instance v0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;

    invoke-direct {v0}, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;-><init>()V

    goto :goto_0

    .line 38
    :cond_7
    const-string v0, "MMAPCODEC-Codec"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad Codec Selection.. Required Component \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p0, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' unavailable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public static invoke([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 44
    const-string v0, "MMAPCODEC-Codec"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "::invoke:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p0, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    aget-object v0, p0, v3

    const-string v1, "create"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    invoke-static {p0}, Lcom/muvee/dsg/mmapcodec/Codec;->createCodec([Ljava/lang/Object;)Lcom/muvee/dsg/mmapcodec/Codec;

    move-result-object v0

    .line 59
    :goto_0
    return-object v0

    .line 47
    :cond_0
    aget-object v0, p0, v3

    const-string v1, "initCodec"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    aget-object v0, p0, v4

    check-cast v0, Lcom/muvee/dsg/mmapcodec/Codec;

    .line 49
    aget-object v1, p0, v5

    check-cast v1, Lcom/muvee/dsg/mmapcodec/CodecInitParams;

    invoke-virtual {v0, v1}, Lcom/muvee/dsg/mmapcodec/Codec;->init(Lcom/muvee/dsg/mmapcodec/CodecInitParams;)Lcom/muvee/dsg/mmapcodec/CodecInitParams;

    move-result-object v0

    goto :goto_0

    .line 50
    :cond_1
    aget-object v0, p0, v3

    const-string v1, "closeCodec"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 51
    aget-object v0, p0, v4

    check-cast v0, Lcom/muvee/dsg/mmapcodec/Codec;

    .line 52
    invoke-virtual {v0}, Lcom/muvee/dsg/mmapcodec/Codec;->closeCodec()V

    .line 59
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 53
    :cond_3
    aget-object v0, p0, v3

    const-string v1, "getNextFrame"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 54
    aget-object v0, p0, v4

    check-cast v0, Lcom/muvee/dsg/mmapcodec/Codec;

    .line 55
    aget-object v1, p0, v5

    check-cast v1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;

    invoke-virtual {v0, v1}, Lcom/muvee/dsg/mmapcodec/Codec;->getNextFrame(Lcom/muvee/dsg/mmapcodec/CodecFrameParams;)Lcom/muvee/dsg/mmapcodec/CodecFrameParams;

    move-result-object v0

    goto :goto_0

    .line 56
    :cond_4
    aget-object v0, p0, v3

    const-string v1, "isTransitionPossible"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 57
    invoke-static {p0}, Lcom/muvee/dsg/mmapcodec/Codec;->a([Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public abstract closeCodec()V
.end method

.method public abstract getNextFrame(Lcom/muvee/dsg/mmapcodec/CodecFrameParams;)Lcom/muvee/dsg/mmapcodec/CodecFrameParams;
.end method

.method public abstract init(Lcom/muvee/dsg/mmapcodec/CodecInitParams;)Lcom/muvee/dsg/mmapcodec/CodecInitParams;
.end method
