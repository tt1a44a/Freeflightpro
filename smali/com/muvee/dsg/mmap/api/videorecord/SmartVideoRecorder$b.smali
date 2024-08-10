.class Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$b;
.super Ljava/lang/Thread;
.source "SmartVideoRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;I)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$b;->a:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 160
    iput p2, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$b;->b:I

    .line 161
    return-void
.end method

.method static synthetic a(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$b;)I
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$b;->b:I

    return v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 164
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 166
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$b;->a:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->a(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;)[Landroid/os/Handler;

    move-result-object v0

    iget v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$b;->b:I

    new-instance v2, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$b$1;

    invoke-direct {v2, p0}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$b$1;-><init>(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$b;)V

    aput-object v2, v0, v1

    .line 214
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 215
    return-void
.end method
