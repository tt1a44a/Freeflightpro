.class public Lcom/muvee/dsg/mmap/api/twoJPEG/TwoJPEG;
.super Ljava/lang/Object;
.source "TwoJPEG.java"


# instance fields
.field private a:Lcom/muvee/dsg/mmapcodec/CustomImageDecoder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Lcom/muvee/dsg/mmapcodec/CustomImageDecoder;

    invoke-direct {v0}, Lcom/muvee/dsg/mmapcodec/CustomImageDecoder;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/twoJPEG/TwoJPEG;->a:Lcom/muvee/dsg/mmapcodec/CustomImageDecoder;

    return-void
.end method

.method private native nativeClose()I
.end method

.method private native nativeGetFrame(Lcom/muvee/dsg/mmapcodec/CustomImageDecoder;Ljava/lang/String;IILandroid/graphics/Bitmap$Config;Ljava/nio/ByteBuffer;)I
.end method

.method private native nativeInit()I
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/twoJPEG/TwoJPEG;->nativeClose()I

    .line 25
    return-void
.end method

.method public getBitmapBytes(Ljava/lang/String;IILandroid/graphics/Bitmap$Config;Ljava/nio/ByteBuffer;)V
    .locals 7

    .prologue
    .line 28
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/twoJPEG/TwoJPEG;->a:Lcom/muvee/dsg/mmapcodec/CustomImageDecoder;

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/muvee/dsg/mmap/api/twoJPEG/TwoJPEG;->nativeGetFrame(Lcom/muvee/dsg/mmapcodec/CustomImageDecoder;Ljava/lang/String;IILandroid/graphics/Bitmap$Config;Ljava/nio/ByteBuffer;)I

    .line 29
    return-void
.end method

.method public init()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/twoJPEG/TwoJPEG;->nativeInit()I

    .line 21
    return-void
.end method
