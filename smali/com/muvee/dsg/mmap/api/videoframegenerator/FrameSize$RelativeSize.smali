.class public Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameSize$RelativeSize;
.super Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameSize;
.source "FrameSize.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameSize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RelativeSize"
.end annotation


# instance fields
.field private a:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameSize;-><init>()V

    .line 25
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameSize$RelativeSize;->a:F

    .line 29
    return-void
.end method

.method public constructor <init>(F)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameSize;-><init>()V

    .line 25
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameSize$RelativeSize;->a:F

    .line 37
    iput p1, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameSize$RelativeSize;->a:F

    .line 38
    return-void
.end method


# virtual methods
.method public getOutHeight(II)I
    .locals 2

    .prologue
    .line 51
    int-to-float v0, p2

    iget v1, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameSize$RelativeSize;->a:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getOutWidth(II)I
    .locals 2

    .prologue
    .line 46
    int-to-float v0, p1

    iget v1, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameSize$RelativeSize;->a:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getRatio()F
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameSize$RelativeSize;->a:F

    return v0
.end method
