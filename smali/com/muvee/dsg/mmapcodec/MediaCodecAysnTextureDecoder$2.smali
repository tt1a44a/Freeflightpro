.class synthetic Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder$2;
.super Ljava/lang/Object;
.source "MediaCodecAysnTextureDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 105
    invoke-static {}, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder$a;->values()[Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder$a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder$2;->a:[I

    :try_start_0
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder$2;->a:[I

    sget-object v1, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder$a;->a:Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder$a;

    invoke-virtual {v1}, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder$a;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder$2;->a:[I

    sget-object v1, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder$a;->b:Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder$a;

    invoke-virtual {v1}, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder$a;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder$2;->a:[I

    sget-object v1, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder$a;->c:Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder$a;

    invoke-virtual {v1}, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder$a;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0
.end method
