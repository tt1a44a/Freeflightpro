.class Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$a;
.super Ljava/lang/Thread;
.source "SlowMotionVideoRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;I)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$a;->a:Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 110
    iput p2, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$a;->b:I

    .line 111
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 114
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 116
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$a;->a:Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->a(Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;)[Landroid/os/Handler;

    move-result-object v0

    iget v1, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$a;->b:I

    new-instance v2, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$a$1;

    invoke-direct {v2, p0}, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$a$1;-><init>(Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$a;)V

    aput-object v2, v0, v1

    .line 159
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 160
    return-void
.end method
