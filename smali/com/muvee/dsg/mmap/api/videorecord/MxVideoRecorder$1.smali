.class Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$1;
.super Landroid/os/AsyncTask;
.source "MxVideoRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->init(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderInitParam;)V
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
.field final synthetic a:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;


# direct methods
.method constructor <init>(Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;)V
    .locals 0

    .prologue
    .line 380
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$1;->a:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    .prologue
    .line 393
    const-string/jumbo v0, "thread.name.gl"

    new-instance v1, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$1$1;

    invoke-direct {v1, p0}, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$1$1;-><init>(Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$1;)V

    invoke-static {v0, v1}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->post(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 405
    const/4 v0, 0x0

    return-object v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 380
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$1;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
