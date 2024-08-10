.class Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$11$1;
.super Ljava/lang/Object;
.source "VideoEditor.java"

# interfaces
.implements Lcom/muvee/dsg/mmap/api/muxer/MediaMuxerCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$11;->a()Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/muvee/dsg/mmap/api/videoeditor/GetDurationParam;

.field final synthetic b:[I

.field final synthetic c:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$11;

.field private d:J

.field private e:J


# direct methods
.method constructor <init>(Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$11;Lcom/muvee/dsg/mmap/api/videoeditor/GetDurationParam;[I)V
    .locals 0

    .prologue
    .line 901
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$11$1;->c:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$11;

    iput-object p2, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$11$1;->a:Lcom/muvee/dsg/mmap/api/videoeditor/GetDurationParam;

    iput-object p3, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$11$1;->b:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 4

    .prologue
    .line 937
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$11$1;->b:[I

    monitor-enter v1

    .line 938
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$11$1;->b:[I

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v0, v2

    .line 939
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$11$1;->b:[I

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 940
    monitor-exit v1

    .line 941
    return-void

    .line 940
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public varargs onProgressUpdate([Ljava/lang/Object;)V
    .locals 10

    .prologue
    const-wide/16 v8, 0x3e8

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 908
    invoke-static {}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "::onProgressUpdate: %s"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    const-string/jumbo v0, "video"

    aget-object v1, p1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 922
    aget-object v0, p1, v4

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$11$1;->d:J

    .line 925
    :cond_0
    const-string v0, "audio"

    aget-object v1, p1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 926
    aget-object v0, p1, v4

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$11$1;->e:J

    .line 929
    :cond_1
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$11$1;->c:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$11;

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$11;->b:Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;

    if-eqz v0, :cond_2

    .line 930
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$11$1;->c:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$11;

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$11;->b:Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;

    const/high16 v1, 0x42c80000    # 100.0f

    const/high16 v2, 0x42b40000    # 90.0f

    iget-wide v4, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$11$1;->d:J

    long-to-float v3, v4

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$11$1;->a:Lcom/muvee/dsg/mmap/api/videoeditor/GetDurationParam;

    iget-wide v4, v3, Lcom/muvee/dsg/mmap/api/videoeditor/GetDurationParam;->duration:J

    mul-long/2addr v4, v8

    long-to-float v3, v4

    div-float/2addr v2, v3

    const/high16 v3, 0x41200000    # 10.0f

    iget-wide v4, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$11$1;->e:J

    long-to-float v4, v4

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$11$1;->a:Lcom/muvee/dsg/mmap/api/videoeditor/GetDurationParam;

    iget-wide v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/GetDurationParam;->duration:J

    mul-long/2addr v4, v8

    long-to-float v4, v4

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-interface {v0, v6, v1}, Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;->onProgressUpdate(IF)V

    .line 933
    :cond_2
    return-void
.end method
