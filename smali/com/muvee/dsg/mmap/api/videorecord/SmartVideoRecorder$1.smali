.class Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$1;
.super Landroid/os/AsyncTask;
.source "SmartVideoRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->init(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderInitParam;)V
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
.field final synthetic a:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;


# direct methods
.method constructor <init>(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;)V
    .locals 0

    .prologue
    .line 241
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$1;->a:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 245
    :goto_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$1;->a:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->a(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;)[Landroid/os/Handler;

    move-result-object v0

    aget-object v0, v0, v2

    if-nez v0, :cond_0

    .line 247
    const-wide/16 v0, 0x5

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 248
    :catch_0
    move-exception v0

    goto :goto_0

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$1;->a:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->a(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;)[Landroid/os/Handler;

    move-result-object v0

    aget-object v0, v0, v2

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 253
    const/4 v0, 0x0

    return-object v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 241
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$1;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
