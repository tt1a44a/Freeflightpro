.class Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$15;
.super Ljava/lang/Object;
.source "MxVideoRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;


# direct methods
.method constructor <init>(Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;)V
    .locals 0

    .prologue
    .line 1173
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$15;->a:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1175
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$15;->a:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->r(Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;)V

    .line 1176
    return-void
.end method
