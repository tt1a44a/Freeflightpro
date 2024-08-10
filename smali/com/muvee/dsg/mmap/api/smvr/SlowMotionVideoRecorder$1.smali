.class Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$1;
.super Landroid/os/AsyncTask;
.source "SlowMotionVideoRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->init(Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorderInitParam;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;


# direct methods
.method constructor <init>(Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$1;->a:Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 184
    :goto_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$1;->a:Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->a(Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;)[Landroid/os/Handler;

    move-result-object v0

    aget-object v0, v0, v2

    if-nez v0, :cond_0

    .line 186
    const-wide/16 v0, 0x5

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 187
    :catch_0
    move-exception v0

    .line 189
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$1;->a:Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->a(Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;)[Landroid/os/Handler;

    move-result-object v0

    aget-object v0, v0, v2

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 195
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$1;->a:Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->g(Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 198
    :goto_1
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$1;->a:Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->a(Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;)[Landroid/os/Handler;

    move-result-object v0

    aget-object v0, v0, v3

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$1;->a:Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->a(Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;)[Landroid/os/Handler;

    move-result-object v0

    aget-object v0, v0, v4

    if-nez v0, :cond_2

    .line 200
    :cond_1
    const-wide/16 v0, 0x5

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 201
    :catch_1
    move-exception v0

    .line 203
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 207
    :cond_2
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$1;->a:Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->a(Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;)[Landroid/os/Handler;

    move-result-object v0

    aget-object v0, v0, v3

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 208
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$1;->a:Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->a(Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;)[Landroid/os/Handler;

    move-result-object v0

    aget-object v0, v0, v4

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 210
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 180
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$1;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
