.class Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$ConsecutiveFrameTime$1;
.super Ljava/lang/Object;
.source "FrameTime.java"

# interfaces
.implements Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$ConsecutiveFrameTime;->createIterator(Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;J)Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$ConsecutiveFrameTime;


# direct methods
.method constructor <init>(Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$ConsecutiveFrameTime;)V
    .locals 0

    .prologue
    .line 476
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$ConsecutiveFrameTime$1;->a:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$ConsecutiveFrameTime;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInTimeMs()J
    .locals 2

    .prologue
    .line 491
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$ConsecutiveFrameTime$1;->a:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$ConsecutiveFrameTime;

    invoke-virtual {v0}, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$ConsecutiveFrameTime;->getInTimeMs()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$ConsecutiveFrameTime$1;->a:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$ConsecutiveFrameTime;

    invoke-virtual {v0}, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$ConsecutiveFrameTime;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next(Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;)J
    .locals 2

    .prologue
    .line 486
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$ConsecutiveFrameTime$1;->a:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$ConsecutiveFrameTime;

    invoke-virtual {v0, p1}, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$ConsecutiveFrameTime;->next(Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;)J

    move-result-wide v0

    return-wide v0
.end method
