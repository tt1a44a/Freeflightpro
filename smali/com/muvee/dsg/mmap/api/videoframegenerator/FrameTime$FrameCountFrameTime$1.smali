.class Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime$1;
.super Ljava/lang/Object;
.source "FrameTime.java"

# interfaces
.implements Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime;->createIterator(Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;J)Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime;


# direct methods
.method constructor <init>(Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime;J)V
    .locals 0

    .prologue
    .line 551
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime$1;->b:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime;

    iput-wide p2, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime$1;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInTimeMs()J
    .locals 2

    .prologue
    .line 583
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public hasNext()Z
    .locals 2

    .prologue
    .line 578
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime$1;->b:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime;

    iget-boolean v0, v0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime$1;->b:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime;->b(Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime;)I

    move-result v0

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime$1;->b:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime;

    invoke-static {v1}, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime;->f(Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime;)I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next(Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;)J
    .locals 10

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 556
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime$1;->b:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime;->a(Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime;)J

    move-result-wide v4

    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime$1;->b:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime;->c(Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime$1;->b:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime;

    invoke-static {v1}, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime;->b(Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v4, v0

    if-eqz v0, :cond_0

    .line 557
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime$1;->b:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime;

    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime$1;->b:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime;->c(Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime;)Ljava/util/List;

    move-result-object v0

    iget-object v4, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime$1;->b:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime;

    invoke-static {v4}, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime;->b(Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime;)I

    move-result v4

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v1, v4, v5}, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime;->a(Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime;J)J

    .line 558
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime$1;->b:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime;->a(Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime;)J

    move-result-wide v0

    const/4 v4, 0x2

    invoke-virtual {p1, v0, v1, v4}, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;->seekTo(JI)V

    .line 559
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime$1;->b:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime;

    invoke-static {v0, v2}, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime;->a(Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime;Z)Z

    .line 562
    :cond_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime$1;->b:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime;->d(Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 563
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime$1;->b:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime;

    invoke-virtual {p1}, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;->advance()Z

    move-result v1

    iput-boolean v1, v0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime;->a:Z

    .line 566
    :cond_1
    invoke-virtual {p1}, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;->getSampleTime()J

    move-result-wide v0

    .line 567
    iget-object v4, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime$1;->b:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime;

    invoke-static {v4}, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime;->e(Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime;)J

    move-result-wide v4

    iget-wide v6, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime$1;->a:J

    iget-object v8, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime$1;->b:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime;

    invoke-static {v8}, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime;->b(Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime;)I

    move-result v8

    int-to-long v8, v8

    mul-long/2addr v6, v8

    iget-object v8, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime$1;->b:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime;

    invoke-static {v8}, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime;->f(Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime;)I

    move-result v8

    int-to-long v8, v8

    div-long/2addr v6, v8

    add-long/2addr v4, v6

    cmp-long v4, v0, v4

    if-ltz v4, :cond_2

    move v2, v3

    .line 568
    :cond_2
    if-eqz v2, :cond_3

    .line 569
    iget-object v3, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime$1;->b:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime;

    invoke-static {v3}, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime;->g(Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime;)I

    .line 573
    :goto_0
    if-eqz v2, :cond_4

    :goto_1
    return-wide v0

    .line 571
    :cond_3
    iget-object v4, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime$1;->b:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime;

    invoke-static {v4, v3}, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime;->a(Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$FrameCountFrameTime;Z)Z

    goto :goto_0

    .line 573
    :cond_4
    const-wide/16 v0, -0x1

    goto :goto_1
.end method
