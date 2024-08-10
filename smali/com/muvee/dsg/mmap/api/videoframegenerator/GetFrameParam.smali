.class public Lcom/muvee/dsg/mmap/api/videoframegenerator/GetFrameParam;
.super Ljava/lang/Object;
.source "GetFrameParam.java"


# instance fields
.field public frameEffect:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect;

.field public frameSize:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameSize;

.field public frameTime:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$SingleFrameTime;

    invoke-direct {v0}, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$SingleFrameTime;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/GetFrameParam;->frameTime:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime;

    .line 21
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameSize$RelativeSize;

    const/high16 v1, 0x3e800000    # 0.25f

    invoke-direct {v0, v1}, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameSize$RelativeSize;-><init>(F)V

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/GetFrameParam;->frameSize:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameSize;

    return-void
.end method


# virtual methods
.method a()I
    .locals 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/GetFrameParam;->frameEffect:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect;

    .line 32
    :goto_0
    if-eqz v0, :cond_1

    .line 33
    instance-of v1, v0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$CropEffect;

    if-eqz v1, :cond_0

    .line 34
    const/4 v0, 0x1

    .line 38
    :goto_1
    return v0

    .line 36
    :cond_0
    invoke-virtual {v0}, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect;->getNext()Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect;

    move-result-object v0

    goto :goto_0

    .line 38
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
