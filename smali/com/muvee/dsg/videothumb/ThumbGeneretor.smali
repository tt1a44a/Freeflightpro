.class public abstract Lcom/muvee/dsg/videothumb/ThumbGeneretor;
.super Ljava/lang/Object;
.source "ThumbGeneretor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getThumb(Lcom/muvee/dsg/videothumb/ThumbGeneretor;JLjava/nio/ByteBuffer;)I
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0, p1, p2, p3}, Lcom/muvee/dsg/videothumb/ThumbGeneretor;->getThumb(JLjava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public static init(Ljava/lang/String;)Lcom/muvee/dsg/videothumb/ThumbGeneretor;
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/muvee/dsg/videothumb/MpegFrameGeneretor;

    invoke-direct {v0}, Lcom/muvee/dsg/videothumb/MpegFrameGeneretor;-><init>()V

    .line 14
    invoke-virtual {v0, p0}, Lcom/muvee/dsg/videothumb/MpegFrameGeneretor;->initGeneretor(Ljava/lang/String;)V

    .line 15
    return-object v0
.end method

.method public static invoke([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 33
    const-string v0, "com.muvee.dsg.videothumb.ThumbGeneretor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "::invoke:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    aget-object v0, p0, v4

    const-string v2, "init"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    aget-object v0, p0, v6

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/muvee/dsg/videothumb/ThumbGeneretor;->init(Ljava/lang/String;)Lcom/muvee/dsg/videothumb/ThumbGeneretor;

    move-result-object v0

    .line 42
    :goto_0
    return-object v0

    .line 36
    :cond_0
    aget-object v0, p0, v4

    const-string/jumbo v2, "unInit"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37
    aget-object v0, p0, v5

    check-cast v0, Lcom/muvee/dsg/videothumb/ThumbGeneretor;

    invoke-static {v0}, Lcom/muvee/dsg/videothumb/ThumbGeneretor;->unInit(Lcom/muvee/dsg/videothumb/ThumbGeneretor;)V

    move-object v0, v1

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    aget-object v0, p0, v4

    const-string v2, "getThumb"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 40
    aget-object v0, p0, v5

    check-cast v0, Lcom/muvee/dsg/videothumb/ThumbGeneretor;

    aget-object v1, p0, v6

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/4 v1, 0x3

    aget-object v1, p0, v1

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-static {v0, v2, v3, v1}, Lcom/muvee/dsg/videothumb/ThumbGeneretor;->getThumb(Lcom/muvee/dsg/videothumb/ThumbGeneretor;JLjava/nio/ByteBuffer;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 42
    goto :goto_0
.end method

.method public static unInit(Lcom/muvee/dsg/videothumb/ThumbGeneretor;)V
    .locals 0

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/muvee/dsg/videothumb/ThumbGeneretor;->unInit()V

    .line 22
    return-void
.end method


# virtual methods
.method public abstract getThumb(JLjava/nio/ByteBuffer;)I
.end method

.method public abstract initGeneretor(Ljava/lang/String;)V
.end method

.method public abstract unInit()V
.end method
