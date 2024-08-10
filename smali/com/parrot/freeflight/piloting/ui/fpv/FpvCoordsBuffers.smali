.class public Lcom/parrot/freeflight/piloting/ui/fpv/FpvCoordsBuffers;
.super Ljava/lang/Object;
.source "FpvCoordsBuffers.java"


# instance fields
.field private final mColorBuffer:Ljava/nio/FloatBuffer;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mIndicesBuffer:Ljava/nio/ShortBuffer;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mPositionBuffer:Ljava/nio/FloatBuffer;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mTextCoordBufferBlue:Ljava/nio/FloatBuffer;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mTextCoordBufferGreen:Ljava/nio/FloatBuffer;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mTextCoordBufferRed:Ljava/nio/FloatBuffer;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "indicesAssetFile"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "positionsAssetFile"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "colorAssetFile"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "redTexAssetFile"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6, "greenTexAssetFile"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p7, "blueTexAssetFile"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvCoordsBuffers;->loadShortBuffer(Landroid/content/Context;Ljava/lang/String;)Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvCoordsBuffers;->mIndicesBuffer:Ljava/nio/ShortBuffer;

    .line 41
    invoke-direct {p0, p1, p3}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvCoordsBuffers;->loadFloatBuffer(Landroid/content/Context;Ljava/lang/String;)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvCoordsBuffers;->mPositionBuffer:Ljava/nio/FloatBuffer;

    .line 42
    invoke-direct {p0, p1, p4}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvCoordsBuffers;->loadFloatBuffer(Landroid/content/Context;Ljava/lang/String;)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvCoordsBuffers;->mColorBuffer:Ljava/nio/FloatBuffer;

    .line 43
    if-eqz p5, :cond_0

    .line 44
    invoke-direct {p0, p1, p5}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvCoordsBuffers;->loadFloatBuffer(Landroid/content/Context;Ljava/lang/String;)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvCoordsBuffers;->mTextCoordBufferRed:Ljava/nio/FloatBuffer;

    .line 48
    :goto_0
    if-eqz p6, :cond_1

    .line 49
    invoke-direct {p0, p1, p6}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvCoordsBuffers;->loadFloatBuffer(Landroid/content/Context;Ljava/lang/String;)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvCoordsBuffers;->mTextCoordBufferGreen:Ljava/nio/FloatBuffer;

    .line 53
    :goto_1
    if-eqz p7, :cond_2

    .line 54
    invoke-direct {p0, p1, p7}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvCoordsBuffers;->loadFloatBuffer(Landroid/content/Context;Ljava/lang/String;)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvCoordsBuffers;->mTextCoordBufferBlue:Ljava/nio/FloatBuffer;

    .line 58
    :goto_2
    return-void

    .line 46
    :cond_0
    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvCoordsBuffers;->mTextCoordBufferRed:Ljava/nio/FloatBuffer;

    goto :goto_0

    .line 51
    :cond_1
    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvCoordsBuffers;->mTextCoordBufferGreen:Ljava/nio/FloatBuffer;

    goto :goto_1

    .line 56
    :cond_2
    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvCoordsBuffers;->mTextCoordBufferBlue:Ljava/nio/FloatBuffer;

    goto :goto_2
.end method

.method private loadFloatBuffer(Landroid/content/Context;Ljava/lang/String;)Ljava/nio/FloatBuffer;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "assetName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 84
    .local v0, "am":Landroid/content/res/AssetManager;
    invoke-virtual {v0, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 85
    .local v2, "codeFile":Ljava/io/InputStream;
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    const-string v7, "UTF-8"

    invoke-direct {v6, v2, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v4, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 88
    .local v4, "in":Ljava/io/BufferedReader;
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 89
    .local v5, "str":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x4

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 90
    .local v1, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 91
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    .line 94
    .local v3, "floatBuffer":Ljava/nio/FloatBuffer;
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 95
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-virtual {v3, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    goto :goto_0

    .line 97
    :cond_0
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 98
    return-object v3
.end method

.method private loadShortBuffer(Landroid/content/Context;Ljava/lang/String;)Ljava/nio/ShortBuffer;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "assetName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 64
    .local v0, "am":Landroid/content/res/AssetManager;
    invoke-virtual {v0, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 65
    .local v2, "codeFile":Ljava/io/InputStream;
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    const-string v7, "UTF-8"

    invoke-direct {v6, v2, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v3, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 67
    .local v3, "in":Ljava/io/BufferedReader;
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 68
    .local v5, "str":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 69
    .local v1, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 70
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v4

    .line 73
    .local v4, "shortBuffer":Ljava/nio/ShortBuffer;
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 74
    invoke-static {v5}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v6

    invoke-virtual {v4, v6}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    goto :goto_0

    .line 76
    :cond_0
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 77
    return-object v4
.end method


# virtual methods
.method public getColorBuffer()Ljava/nio/FloatBuffer;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvCoordsBuffers;->mColorBuffer:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public getIndicesBuffer()Ljava/nio/ShortBuffer;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvCoordsBuffers;->mIndicesBuffer:Ljava/nio/ShortBuffer;

    return-object v0
.end method

.method public getPositionBuffer()Ljava/nio/FloatBuffer;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvCoordsBuffers;->mPositionBuffer:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public getTextCoordBufferBlue()Ljava/nio/FloatBuffer;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvCoordsBuffers;->mTextCoordBufferBlue:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public getTextCoordBufferGreen()Ljava/nio/FloatBuffer;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvCoordsBuffers;->mTextCoordBufferGreen:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public getTextCoordBufferRed()Ljava/nio/FloatBuffer;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvCoordsBuffers;->mTextCoordBufferRed:Ljava/nio/FloatBuffer;

    return-object v0
.end method
