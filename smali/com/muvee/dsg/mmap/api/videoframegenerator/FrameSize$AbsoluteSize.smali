.class public Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameSize$AbsoluteSize;
.super Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameSize;
.source "FrameSize.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameSize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AbsoluteSize"
.end annotation


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .prologue
    const/16 v0, 0x60

    .line 71
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameSize;-><init>()V

    .line 63
    iput v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameSize$AbsoluteSize;->a:I

    .line 64
    iput v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameSize$AbsoluteSize;->b:I

    .line 72
    iput p1, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameSize$AbsoluteSize;->a:I

    .line 73
    iput p2, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameSize$AbsoluteSize;->b:I

    .line 74
    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameSize$AbsoluteSize;->b:I

    return v0
.end method

.method public getOutHeight(II)I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameSize$AbsoluteSize;->b:I

    return v0
.end method

.method public getOutWidth(II)I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameSize$AbsoluteSize;->a:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameSize$AbsoluteSize;->a:I

    return v0
.end method
