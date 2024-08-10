.class Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$b;
.super Ljava/lang/Thread;
.source "SlowMotionPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;I)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$b;->a:Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 123
    iput p2, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$b;->b:I

    .line 124
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 127
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 129
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$b;->a:Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->a(Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;)[Landroid/os/Handler;

    move-result-object v0

    iget v1, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$b;->b:I

    new-instance v2, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$b$1;

    invoke-direct {v2, p0}, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$b$1;-><init>(Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$b;)V

    aput-object v2, v0, v1

    .line 201
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 202
    return-void
.end method
