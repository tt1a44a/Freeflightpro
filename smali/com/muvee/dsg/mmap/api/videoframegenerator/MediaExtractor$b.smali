.class Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor$b;
.super Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor$a;
.source "MediaExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private d:Z


# direct methods
.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 94
    invoke-direct {p0, p1, p2}, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor$a;-><init>(Ljava/lang/String;I)V

    .line 95
    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor$b;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 97
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 98
    new-instance v2, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor$b$1;

    invoke-direct {v2, p0, v0}, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor$b$1;-><init>(Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor$b;Landroid/os/HandlerThread;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 105
    return-void
.end method


# virtual methods
.method public declared-synchronized a(JI)J
    .locals 9

    .prologue
    .line 109
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor$b;->d:Z

    if-nez v0, :cond_1

    .line 110
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 111
    new-instance v0, Lcom/muvee/dsg/mmap/api/mediareader/MediaReader;

    invoke-direct {v0}, Lcom/muvee/dsg/mmap/api/mediareader/MediaReader;-><init>()V

    .line 112
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor$b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/muvee/dsg/mmap/api/mediareader/MediaReader;->getVideoSyncTable(Ljava/lang/String;)[J

    move-result-object v1

    .line 113
    const/4 v0, 0x0

    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_0

    .line 114
    invoke-static {}, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;->a()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getToSeekUs: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-wide v6, v1, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v4, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor$b;->a:Ljava/util/List;

    aget-wide v6, v1, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 118
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor$b;->d:Z

    .line 119
    invoke-static {}, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getToSeekUs: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor$b;->a:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor$b;->b(JI)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
