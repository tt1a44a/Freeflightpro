.class public Lcom/muvee/dsg/mmap/api/videoeditor/pregen/FrameReader;
.super Ljava/lang/Object;
.source "FrameReader.java"


# instance fields
.field private a:Ljava/nio/ByteBuffer;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(II)V
    .locals 2

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/FrameReader;->b:I

    .line 22
    iput p2, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/FrameReader;->c:I

    .line 23
    mul-int v0, p1, p2

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/FrameReader;->a:Ljava/nio/ByteBuffer;

    .line 24
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/FrameReader;->a:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 25
    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/FrameReader;->c:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/FrameReader;->b:I

    return v0
.end method

.method public readFrame()Ljava/nio/ByteBuffer;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 28
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/FrameReader;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 29
    iget v2, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/FrameReader;->b:I

    iget v3, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/FrameReader;->c:I

    const/16 v4, 0x1908

    const/16 v5, 0x1401

    iget-object v6, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/FrameReader;->a:Ljava/nio/ByteBuffer;

    move v1, v0

    invoke-static/range {v0 .. v6}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 30
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/FrameReader;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 31
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/FrameReader;->a:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public release()V
    .locals 0

    .prologue
    .line 45
    return-void
.end method
